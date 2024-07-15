#!/usr/bin/env python3
"""
List all documents using python
"""


from typing import List

from pymongo import MongoClient


def list_all(mongo_collection) -> List:
    """List all documents in a collection"""
    documents = mongo_collection.find()
    return [doc for doc in documents]
