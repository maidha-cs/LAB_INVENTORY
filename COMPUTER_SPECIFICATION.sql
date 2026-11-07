CREATE TABLE computer_specification (
    computer_specification_id NUMBER PRIMARY KEY,
    computer_id               NUMBER UNIQUE REFERENCES computer (computer_id),
    ram_size                  VARCHAR2(100),
    processor                 VARCHAR2(100),
    storage_size              VARCHAR2(50)
);