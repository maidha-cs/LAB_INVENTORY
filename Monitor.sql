CREATE TABLE monitor (
    monitor_id     NUMBER PRIMARY KEY,
    model          VARCHAR2(100) NOT NULL,
    screen_size    VARCHAR2(50), 
    status_id      NUMBER REFERENCES status (status_id),
    computer_id    NUMBER REFERENCES computer (computer_id)
);