#!/usr/bin/env python3
""" 9-insert_school """
from bson.objectid import ObjectId


def insert_school(mongo_collection, **kwargs) -> ObjectId:
    """Insert a new document in a collection based on kwargs"""
    document = {key: value for key, value in kwargs.items()}
    return mongo_collection.insert_one(document).inserted_id
