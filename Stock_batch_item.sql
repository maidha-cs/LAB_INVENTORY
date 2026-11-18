CREATE TABLE stock_batch_item (
    item_id        NUMBER PRIMARY KEY,
    item_name      VARCHAR2(100),
    quality        VARCHAR2(50),
    item_condition VARCHAR2(100)
);
ALTER TABLE stock_batch_item ADD batch_id NUMBER REFERENCES stock_batch (batch_id);