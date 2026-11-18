CREATE OR REPLACE VIEW vw_stock_management_summary AS
SELECT 
    stock_batch.stock_batch_id,
    stock_batch.batch_number,
    stock_batch.supplier_name,
    stock_batch.purchase_date AS batch_date,
    stock_batch_item.item_id,
    stock_batch_item.item_name,
    stock_batch_item.stock_batch_id AS item_batch_id,
    stock_transfer.transfer_id,
    stock_transfer.transfer_date
FROM stock_batch
FULL OUTER JOIN stock_batch_item 
    ON stock_batch.stock_batch_id = stock_batch_item.stock_batch_id
FULL OUTER JOIN stock_transfer 
    ON stock_batch_item.item_id = stock_transfer.item_id;