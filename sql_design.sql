-- Medical Center
CREATE DATABASE medical_center;

CREATE TABLE doctors
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    specialty TEXT,
);

CREATE TABLE patients
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    insurance TEXT,
    birthday DATE,
);

CREATE TABLE diagnoses
(
    id SERIAL PRIMARY KEY,
    diseases_id REFERENCES diseases,
);

CREATE TABLE visits
(
    id SERIAL PRIMARY KEY,
    patient_id REFERENCES patients,
    doctors_id REFERENCES doctors,
    diagnoses_id REFERENCES diagnoses,
    date DATE,
);

CREATE TABLE diseases
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
);

-- Craigslist
CREATE DATABASE craigslist;

CREATE TABLE regions
(
    id SERIAL PRIMARY KEY,
    region TEXT NOT NULL,
);

CREATE TABLE users
(
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    preferred_region_id TEXT NOT NULL,
    password UNIQUE,
);

CREATE TABLE categories
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
);

CREATE TABLE posts
(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    text TEXT NOT NULL,
    users_id REFERENCES users,
    regions_id REFERENCES regions,
    categories_id REFERENCES categories,
);

-- Soccer League