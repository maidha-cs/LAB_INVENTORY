CREATE TABLE stock_transfer (
    transfer_id    NUMBER PRIMARY KEY,
    item_id        NUMBER REFERENCES stock_batch_item (item_id),
    from_location  VARCHAR2(100),
    to_location    VARCHAR2(100),
    transfer_date  DATE DEFAULT SYSDATE,
    quantity       NUMBER
);