CREATE OR REPLACE VIEW vw_lab_computer_overview AS
SELECT 
    computer.computer_id,
    computer.serial_number,
    location.location_name,
    status.status_name,
    computer_specification.processor,
    computer_specification.ram_size,
    computer_specification.storage_size,
    monitor.model AS monitor_model,
    keyboard.brand AS keyboard_brand,
    keyboard.connector_type AS keyboard_connector,
    mouse.brand AS mouse_brand
