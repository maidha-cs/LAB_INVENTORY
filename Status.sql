CREATE TABLE status (
    status_id   NUMBER PRIMARY KEY,
    status_name VARCHAR2(30) NOT NULL UNIQUE,
    description VARCHAR2(100)
);