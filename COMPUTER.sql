CREATE TABLE computer (
    computer_id       NUMBER PRIMARY KEY,
    computer_name     VARCHAR2(50) NOT NULL,
    ip_address        VARCHAR2(50) UNIQUE NOT NULL, -- IP address hamesha VARCHAR2 hota hai kyunki dots (.) hotay hain
    serial_number     VARCHAR2(50) UNIQUE NOT NULL,
    installation_date DATE DEFAULT SYSDATE,
    location_id       NUMBER REFERENCES location (location_id),
    status_id         NUMBER REFERENCES status (status_id),
    stock_batch_id    NUMBER REFERENCES stock_batch (stock_batch_id)
);