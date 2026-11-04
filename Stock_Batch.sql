CREATE TABLE stock_batch (
    stock_batch_id NUMBER PRIMARY KEY,
    batch_number   VARCHAR2(50) NOT NULL UNIQUE,
    purchase_date  DATE DEFAULT SYSDATE,
    supplier_name  VARCHAR2(100),
    total_cost     NUMBER(10, 2)
);