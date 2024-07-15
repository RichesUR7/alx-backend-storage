#!/usr/bin/env python3
""" 11-schools_by_topics """
from typing import List


def schools_by_topic(mongo_collection, topic: str) -> List:
    """Return the list of schools having a specific topic"""
    schools = mongo_collection.find({"topics": topic})
    return [school for school in schools]
