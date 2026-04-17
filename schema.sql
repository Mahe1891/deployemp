-- SQLite doesn't support CREATE DATABASE / USE
-- Just run this directly in schema.sql

-- USERS TABLE
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE,
    email TEXT UNIQUE,
    password TEXT,
    role TEXT
);

-- EMPLOYEE TABLE
CREATE TABLE employye (
    eid INTEGER PRIMARY KEY AUTOINCREMENT,
    ename TEXT,
    edept TEXT,
    esalary INTEGER,
    ephone TEXT,
    user_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id)
);