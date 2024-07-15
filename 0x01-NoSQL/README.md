 # 0x01. NoSQL

## Overview

This project is part of the ALX Software Engineering curriculum, focusing on NoSQL databases. The main objectives of this project are to understand the principles of NoSQL databases, how they differ from SQL databases, and to get hands-on experience with MongoDB, one of the most popular NoSQL databases.

## Learning Objectives

By the end of this project, you should be able to:

- Explain the basics of NoSQL databases and their differences from SQL databases.
- Describe the various types of NoSQL databases (Document-oriented, Key-Value, Column-family, and Graph).
- Perform CRUD (Create, Read, Update, Delete) operations using MongoDB.
- Understand and utilize MongoDB aggregation framework.
- Explain replication and sharding in MongoDB.
- Implement indexing and querying for performance optimization in MongoDB.

## Project Structure

The directory contains the following files:

- 0-list_databases.py: Python script that lists all databases in a MongoDB server.
- 1-insert.py: Python script to insert a document in a MongoDB collection.
- 2-all.py: Python script to list all documents in a MongoDB collection.
- 3-match.py: Python script that matches documents in a collection based on a specified filter.
- 4-update.py: Python script to update a document in a MongoDB collection.
- 5-delete.py: Python script to delete documents from a MongoDB collection.
- 6-index.py: Python script to create an index on a specified field in a MongoDB collection.
- 7-aggregate.py: Python script to perform aggregation operations on a MongoDB collection.
- 8-replication.py: Python script to demonstrate replication in MongoDB.
- 9-sharding.py: Python script to demonstrate sharding in MongoDB.

## Requirements

- Python 3.8 or later
- MongoDB 4.4 or later
- pymongo library

## Installation

1. Install MongoDB from the official MongoDB website.

2. Install the pymongo library using pip:


pip install pymongo


3. Clone this repository:


git clone https://github.com/your-username/0x01-noSQL.git

cd 0x01-noSQL

## Usage

# Listing Databases

To list all databases on your MongoDB server, run:


python 0-list_databases.py

# Inserting a Document

To insert a document into a collection, run:


python 1-insert.py

# Listing All Documents

To list all documents in a collection, run:


python 2-all.py

# Matching Documents

To match documents based on a filter, run:


python 3-match.py

# Updating a Document

To update a document in a collection, run:


python 4-update.py

# Deleting Documents

To delete documents from a collection, run:


python 5-delete.py

# Creating an Index

To create an index on a specified field, run:


python 6-index.py

# Aggregation Operations

To perform aggregation operations on a collection, run:


python 7-aggregate.py

# Demonstrating Replication

To demonstrate replication in MongoDB, run:


python 8-replication.py

# Demonstrating Sharding

To demonstrate sharding in MongoDB, run:


python 9-sharding.py

## Resources

- MongoDB Documentation
- PyMongo Documentation

## Author

This project is authored by [Your Name]. If you have any questions or suggestions, feel free to contact me at [your-email@example.com].

##License

This project is licensed under the MIT License - see the LICENSE file for details.
