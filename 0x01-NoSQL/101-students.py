#!/usr/bin/env python3
""" 101-students """
from typing import List


def top_students(mongo_collection) -> List:
    """Return all students sorted by average score"""
    students = mongo_collection.aggregate(
        [
            {"$unwind": "$topics"},
            {
                "$group": {
                    "_id": "$_id",
                    "name": {"$first": "$name"},
                    "averageScore": {"$avg": "$topics.score"},
                }
            },
            {"$sort": {"averageScore": -1}},
        ]
    )
    return list(students)
