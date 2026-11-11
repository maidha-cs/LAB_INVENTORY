CREATE TABLE mouse (
    mouse_id       NUMBER PRIMARY KEY,
    brand          VARCHAR2(100),
    connector_type VARCHAR2(30),
    status_id      NUMBER REFERENCES status (status_id)
    ALTER TABLE MOUSE ADD computer_id NUMBER REFERENCES computer(computer_id);
);