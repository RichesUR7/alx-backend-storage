#!/usr/bin/env python3
"""
Module for web
"""
from functools import wraps
from typing import Callable

import redis
import requests

# Initialize Redis client outside to reuse the connection
_redis = redis.Redis()


def count_calls(method: Callable) -> Callable:
    """
    Decorator to count the number of calls to a method
    """

    @wraps(method)
    def wrapper(url: str, *args, **kwargs):
        """
        Wrapper function for the decorator
        """
        _redis.incr(f"count:{url}")
        return method(url, *args, **kwargs)

    return wrapper


def cache_result(expiration: int = 10) -> Callable:
    """
    Decorator to cache the result of a function call with an expiration time
    """

    def decorator(method: Callable) -> Callable:
        @wraps(method)
        def wrapper(url: str, *args, **kwargs):
            """
            Wrapper function for caching the result
            """
            cached_content = _redis.get(url)
            if cached_content:
                return cached_content.decode("utf-8")
            result = method(url, *args, **kwargs)
            _redis.setex(url, expiration, result)
            return result

        return wrapper

    return decorator


@count_calls
@cache_result(expiration=10)
def get_page(url: str) -> str:
    """
    Get the HTML content of a particular URL
    """
    response = requests.get(url)
    response.raise_for_status()  # Handle HTTP errors
    return response.text


if __name__ == "__main__":
    url = "http://slowwly.robertomurray.co.uk/delay/3000/url/https://apple.com"
    print(get_page(url))
