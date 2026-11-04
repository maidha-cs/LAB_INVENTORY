💻 Computer Lab Inventory Management System (Database Schema & ERD Document)

Welcome to the Computer Lab Inventory Management System database repository. This project provides a normalized, robust database architecture designed using Oracle SQL standards to track lab assets, hardware specifications, inventory batches, and cross-lab item transfers efficiently.

📌 Project Overview

Managing hardware assets across multiple educational or organizational computer labs requires strict tracking, audit support, and error-free network management.

This schema models real-world hardware logistics, separating core computer units, specialized peripherals, vendor stock batches, and inter-location transfers while strictly adhering to Third Normal Form (3NF) principles.

🏗️ Relational Architecture & Table Classification

The database architecture is categorized into four logical table types to guarantee relational integrity and maintainability:

                  ┌──────────────────────┐
                  │       LOCATION       │
                  └──────────┬───────────┘
                             │ 1
                             │
                             │ N
┌──────────────┐  1       N ┌┴───────────┐ N       1 ┌──────────────┐
│ STOCK_BATCH  ├───────────►│  COMPUTER  │◄──────────┤    STATUS    │
└──────────────┘            └─────┬──────┘           └──────────────┘
                                  │ 1
                                  │
                                  │ 1
                    ┌─────────────┴──────────────┐
                    │   COMPUTER_SPECIFICATION   │
                    └────────────────────────────┘


1. Independent Master / Parent Tables (Lookup & Core Entities)

LOCATION: Represents physical infrastructure (buildings, floors, labs).

STATUS: Centralized operational status lookup (Active, Faulty, Under Repair, Disposed).

STOCK_BATCH: Purchasing header records containing vendor details and overall costs.

2. Core Hardware Entities

COMPUTER: Central asset registry linking network details (ip_address) to physical locations and statuses.

COMPUTER_SPECIFICATION: Holds 1:1 hardware configuration (RAM, Processor, Storage) linked to a specific computer.

KEYBOARD: Dedicated keyboard registry capturing switch type and model specifics.

MOUSE: Dedicated mouse registry capturing DPI rating and optical/laser sensor types.

3. Junction / Assignment Tables (M:N Relations)

COMPUTER_KEYBOARD_ASSIGN: Tracks keyboard-to-computer assignments over time.

COMPUTER_MOUSE_ASSIGN: Tracks mouse-to-computer assignments over time.

4. Inventory & Transfer Management

STOCK_BATCH_ITEM: Granular tracking of individual items inside a purchase batch.

STOCK_TRANSFER: Records item transfers between locations to prevent stock discrepancy.

🔑 Key Normalization (3NF) & Integrity Highlights

Logical Entity Separation: Peripherals are divided into distinct KEYBOARD and MOUSE entities to prevent NULL density and accommodate specialized hardware attributes.

Granular Item Transfers: STOCK_TRANSFER links directly to STOCK_BATCH_ITEM instead of the batch header, allowing lab administrators to transfer specific item quantities rather than entire shipments.

Network Integrity: The ip_address attribute in COMPUTER uses a UNIQUE constraint to prevent duplicate network address assignments across labs.

Referential Constraints: Strict Foreign Key dependencies ensure child records cannot exist without valid parent entities.

🚀 Execution & Table Creation Sequence

To avoid ORA-00942: table or view does not exist errors, execute the SQL DDL scripts in the following Parent-to-Child sequence:

