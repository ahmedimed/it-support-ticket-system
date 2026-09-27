USE it_support;

-- ============================================
-- 1. LIST ALL EMPLOYEES
-- ============================================

SELECT *
FROM employees;


-- ============================================
-- 2. LIST ALL DEVICES
-- ============================================

SELECT *
FROM devices;


-- ============================================
-- 3. FIND DEVICES THAT NEED REPAIR
-- ============================================

SELECT
    device_id,
    device_type,
    operating_system,
    status
FROM devices
WHERE status = 'Repair';


-- ============================================
-- 4. SHOW ALL OPEN TICKETS
-- ============================================

SELECT
    ticket_id,
    employee_id,
    issue,
    priority,
    status,
    created_at
FROM tickets
WHERE status = 'Open'
ORDER BY created_at DESC;


-- ============================================
-- 5. SHOW HIGH-PRIORITY TICKETS
-- ============================================

SELECT
    ticket_id,
    employee_id,
    issue,
    priority,
    status
FROM tickets
WHERE priority = 'High'
ORDER BY created_at DESC;


-- ============================================
-- 6. EMPLOYEE + TICKET INFORMATION
-- ============================================

SELECT
    employees.name,
    employees.department,
    tickets.issue,
    tickets.priority,
    tickets.status
FROM employees
JOIN tickets
    ON employees.employee_id = tickets.employee_id;


-- ============================================
-- 7. EMPLOYEE + DEVICE INFORMATION
-- ============================================

SELECT
    employees.name,
    employees.department,
    devices.device_type,
    devices.operating_system,
    devices.status
FROM employees
JOIN devices
    ON employees.employee_id = devices.employee_id;


-- ============================================
-- 8. COMPLETE SUPPORT TICKET DETAILS
-- ============================================

SELECT
    employees.name,
    employees.department,
    devices.device_type,
    devices.operating_system,
    tickets.issue,
    tickets.priority,
    tickets.status,
    tickets.created_at
FROM employees
JOIN tickets
    ON employees.employee_id = tickets.employee_id
JOIN devices
    ON tickets.device_id = devices.device_id
ORDER BY tickets.created_at DESC;


-- ============================================
-- 9. COUNT TICKETS BY STATUS
-- ============================================

SELECT
    status,
    COUNT(*) AS ticket_count
FROM tickets
GROUP BY status
ORDER BY ticket_count DESC;


-- ============================================
-- 10. COUNT TICKETS BY PRIORITY
-- ============================================

SELECT
    priority,
    COUNT(*) AS ticket_count
FROM tickets
GROUP BY priority
ORDER BY ticket_count DESC;


-- ============================================
-- 11. COUNT TICKETS PER EMPLOYEE
-- ============================================

SELECT
    employees.name,
    COUNT(tickets.ticket_id) AS ticket_count
FROM employees
JOIN tickets
    ON employees.employee_id = tickets.employee_id
GROUP BY employees.name
ORDER BY ticket_count DESC;


-- ============================================
-- 12. COUNT TICKETS BY DEPARTMENT
-- ============================================

SELECT
    employees.department,
    COUNT(tickets.ticket_id) AS ticket_count
FROM employees
JOIN tickets
    ON employees.employee_id = tickets.employee_id
GROUP BY employees.department
ORDER BY ticket_count DESC;


-- ============================================
-- 13. DEPARTMENTS WITH MORE THAN 5 TICKETS
-- ============================================

SELECT
    employees.department,
    COUNT(tickets.ticket_id) AS ticket_count
FROM employees
JOIN tickets
    ON employees.employee_id = tickets.employee_id
GROUP BY employees.department
HAVING COUNT(tickets.ticket_id) > 5
ORDER BY ticket_count DESC;


-- ============================================
-- 14. OPEN HIGH-PRIORITY TICKETS
-- ============================================

SELECT
    employees.name,
    employees.department,
    tickets.issue,
    tickets.priority,
    tickets.status
FROM employees
JOIN tickets
    ON employees.employee_id = tickets.employee_id
WHERE tickets.priority = 'High'
  AND tickets.status = 'Open'
ORDER BY tickets.created_at DESC;


-- ============================================
-- 15. EMPLOYEES WITH MORE TICKETS THAN AVERAGE
-- ============================================

SELECT
    employees.name,
    COUNT(tickets.ticket_id) AS ticket_count
FROM employees
JOIN tickets
    ON employees.employee_id = tickets.employee_id
GROUP BY employees.name
HAVING COUNT(tickets.ticket_id) > (
    SELECT AVG(ticket_count)
    FROM (
        SELECT
            employee_id,
            COUNT(*) AS ticket_count
        FROM tickets
        GROUP BY employee_id
    ) AS ticket_summary
)
ORDER BY ticket_count DESC;


-- ============================================
-- 16. CREATE SUPPORT TICKET DETAILS VIEW
-- ============================================

DROP VIEW IF EXISTS support_ticket_details;

CREATE VIEW support_ticket_details AS
SELECT
    employees.name,
    employees.department,
    devices.device_type,
    devices.operating_system,
    tickets.issue,
    tickets.priority,
    tickets.status,
    tickets.created_at
FROM employees
JOIN tickets
    ON employees.employee_id = tickets.employee_id
JOIN devices
    ON tickets.device_id = devices.device_id;


-- ============================================
-- 17. USE THE SUPPORT TICKET VIEW
-- ============================================

SELECT *
FROM support_ticket_details
ORDER BY created_at DESC;


-- ============================================
-- 18. OPEN TICKETS FROM THE VIEW
-- ============================================

SELECT *
FROM support_ticket_details
WHERE status = 'Open'
ORDER BY created_at DESC;