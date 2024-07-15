#!/usr/bin/env python3
""" 10-update_topics """
from typing import List


def update_topics(mongo_collection, name: str, topics: List[str]):
    """Change all topics of a school document based on the name"""
    mongo_collection.update_many({"name": name}, {"$set": {"topics": topics}})
