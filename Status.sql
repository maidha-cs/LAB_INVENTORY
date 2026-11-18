CREATE TABLE status (
    status_id   NUMBER PRIMARY KEY,
    status_name VARCHAR2(30) NOT NULL UNIQUE,
    description VARCHAR2(100)
);
INSERT ALL 
    INTO status (status_id, status_name) VALUES (1, 'Working')
    INTO status (status_id, status_name) VALUES (2, 'Under Repair')
SELECT * FROM dual;