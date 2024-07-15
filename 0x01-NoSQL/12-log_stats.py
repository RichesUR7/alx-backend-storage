#!/usr/bin/env python3
""" 12-log_stats """
from pymongo import MongoClient

if __name__ == "__main__":
    client = MongoClient("mongodb://127.0.0.1:27017")
    logs_collection = client.logs.nginx
    methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
    print(f"{logs_collection.count_documents({})} logs")

    print("Methods:")
    for method in methods:
        print(
            f"\tmethod {method}: "
            f"{logs_collection.count_documents({'method': method})}"
        )

    cnt = logs_collection.count_documents({"method": "GET", "path": "/status"})
    print(f"{cnt} status check")
