CREATE TABLE stock_batch_item (
    item_id        NUMBER PRIMARY KEY,
    stock_batch_id NUMBER REFERENCES stock_batch (stock_batch_id),
    item_name      VARCHAR2(100),
    quality        VARCHAR2(50),
    item_condition VARCHAR2(100)
);