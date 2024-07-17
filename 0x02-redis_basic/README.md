# 0x02. Redis Basic

## Description
This directory contains projects and exercises related to Redis, an open-source, in-memory data structure store, used as a database, cache, and message broker. The focus of this module is to understand the basics of Redis and how to interact with it using various commands and data structures.

## Learning Objectives
By the end of this module, you should be able to:
- Understand the fundamentals of Redis and its use cases.
- Use basic Redis commands for storing, retrieving, and manipulating data.
- Implement Redis in various programming environments.
- Utilize Redis data structures such as strings, lists, sets, and hashes.

## Projects and Exercises

### 1. Introduction to Redis
- Overview of Redis and its architecture.
- Installing Redis on your local machine.
- Basic Redis commands for setting and getting values.

### 2. Working with Strings
- Storing string values.
- Retrieving and manipulating strings.
- Using string commands like `SET`, `GET`, `INCR`, `DECR`, and `APPEND`.

### 3. Working with Lists
- Creating and managing lists.
- Using list commands like `LPUSH`, `RPUSH`, `LPOP`, `RPOP`, and `LRANGE`.

### 4. Working with Sets
- Understanding the concept of sets.
- Using set commands like `SADD`, `SREM`, `SMEMBERS`, and `SINTER`.

### 5. Working with Hashes
- Storing and retrieving hash values.
- Using hash commands like `HSET`, `HGET`, `HDEL`, and `HGETALL`.

### 6. Expiry and Persistence
- Setting expiration times for keys.
- Persisting data to disk using RDB and AOF.

### 7. Advanced Topics
- Pub/Sub messaging.
- Transactions.
- Lua scripting.

## Prerequisites
- Basic understanding of database concepts.
- Familiarity with command-line interface.
- Knowledge of at least one programming language (preferably Python).

## Installation
1. **Install Redis**:
   - Follow the official [Redis installation guide](https://redis.io/download) to install Redis on your system.
2. **Verify Installation**:
   - Run `redis-server` to start the Redis server.
   - Run `redis-cli` to start the Redis command-line interface.

## Usage
- Start the Redis server:
  ```sh
  redis-server

- Open another terminal and start the Redis CLI:

redis-cli

- Run Redis commands in the CLI.

## Resources

- Redis Official Documentation
- Redis Commands Reference
- Introduction to Redis

## Authors

- Your Name GitHub Profile

## License

This project is licensed under the MIT License - see the LICENSE file for details.
