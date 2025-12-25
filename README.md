# universe-database-postgresql
A PostgreSQL universe database featuring galaxies, stars, planets, and moons with full relational structure and constraints.

# Celestial Bodies Database (PostgreSQL)

This repository contains the **Celestial Bodies Database**, a PostgreSQL relational project built for the freeCodeCamp Relational Database Certification. It models galaxies, stars, planets, moons, and elements in a structured cosmic hierarchy using primary keys, foreign keys, and validated constraints.

## Project Overview
This project demonstrates real relational database development with:

- Auto-increment primary keys (`SERIAL`)
- Foreign key relationships across a multi-table hierarchy
- `UNIQUE` and `NOT NULL` constraints for data integrity
- Data typing with `VARCHAR`, `INT`, `NUMERIC`, `TEXT`, and `BOOLEAN`
- Controlled relational structure and referential rules

The hierarchy follows this structure:

galaxy → star → planet → moon
         ↓
       element

## 🗄 Database Schema Summary

| Table     | Rows Added | Key Columns                                  | Purpose |
|-----------|-------------|-----------------------------------------------|----------|
| galaxy    | 6+          | galaxy_id (PK), name, galaxy_type            | Parent collection of star systems |
| star      | 6+          | star_id (PK), galaxy_id (FK), temperature    | Stars located inside galaxies |
| planet    | 12+         | planet_id (PK), star_id (FK), planet_type    | Worlds orbiting stars |
| moon      | 20+         | moon_id (PK), planet_id (FK), diameter       | Moons orbiting planets |
| element   | 10          | element_id (PK), atomic_number, is_natural   | Chemical elements in the universe |

All primary keys follow the naming pattern:
table_name_id

## Importing the Database

### Standard PostgreSQL Load
psql -U postgres < universe.sql

### freeCodeCamp Virtual Machine
psql -U freecodecamp --dbname=postgres
CREATE DATABASE universe;
\c universe
\i universe.sql

## 📄 Repository Contents
celestial-bodies-db/
├─ universe.sql      
└─ README.md         


## 🧭 Example SQL Queries

SELECT * FROM galaxy;

SELECT star.name
FROM star
JOIN galaxy USING(galaxy_id)
WHERE galaxy.name = 'Milky Way';

SELECT name, has_life
FROM planet
WHERE has_life = TRUE;

SELECT planet.name, COUNT(moon.moon_id) AS moon_count
FROM planet
JOIN moon USING(planet_id)
GROUP BY planet.name
ORDER BY moon_count DESC;

## 🚀 Goal of the Project
To apply relational database design fundamentals through a creative, scalable universe model.

