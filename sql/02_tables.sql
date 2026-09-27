USE it_support;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE devices (
    device_id INT PRIMARY KEY,
    employee_id INT,
    device_type VARCHAR(50),
    operating_system VARCHAR(50),
    status VARCHAR(30),
    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);

CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY,
    employee_id INT,
    device_id INT,
    issue VARCHAR(255),
    priority VARCHAR(20),
    status VARCHAR(20),
    created_at DATE,
    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id),
    FOREIGN KEY (device_id)
        REFERENCES devices(device_id)
);