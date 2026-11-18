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
FROM computer
FULL OUTER JOIN location 
    ON computer.location_id = location.location_id
FULL OUTER JOIN status 
    ON computer.status_id = status.status_id
FULL OUTER JOIN computer_specification 
    ON computer.computer_id = computer_specification.computer_id
FULL OUTER JOIN monitor 
    ON computer.computer_id = monitor.computer_id
FULL OUTER JOIN keyboard 
    ON computer.computer_id = keyboard.computer_id
FULL OUTER JOIN mouse 
    ON computer.computer_id = mouse.computer_id;