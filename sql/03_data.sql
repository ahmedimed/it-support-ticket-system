USE it_support;

-- ============================================
-- EMPLOYEES
-- ============================================

INSERT INTO employees
VALUES
(1, 'Ahmed', 'IT', 'ahmed@company.com'),
(2, 'Sarah', 'HR', 'sarah@company.com'),
(3, 'John', 'Finance', 'john@company.com'),
(4, 'Maria', 'Sales', 'maria@company.com'),
(5, 'David', 'Marketing', 'david@company.com'),
(6, 'Mark', 'IT Support', 'mark@company.com'),
(7, 'Lisa', 'Finance', 'lisa@company.com'),
(8, 'Robert', 'Sales', 'robert@company.com'),
(9, 'Emma', 'Marketing', 'emma@company.com'),
(10, 'Daniel', 'HR', 'daniel@company.com'),
(11, 'Olivia', 'IT', 'olivia@company.com'),
(12, 'James', 'Operations', 'james@company.com'),
(13, 'Sophia', 'Finance', 'sophia@company.com'),
(14, 'Michael', 'Sales', 'michael@company.com'),
(15, 'Anna', 'Marketing', 'anna@company.com'),
(16, 'William', 'HR', 'william@company.com'),
(17, 'Emily', 'IT', 'emily@company.com'),
(18, 'Thomas', 'Operations', 'thomas@company.com'),
(19, 'Charlotte', 'Finance', 'charlotte@company.com'),
(20, 'Daniel Smith', 'Sales', 'daniel.s@company.com');


-- ============================================
-- DEVICES
-- ============================================

INSERT INTO devices
VALUES
(101, 1, 'Laptop', 'Windows 11', 'Active'),
(102, 2, 'Laptop', 'Windows 11', 'Active'),
(103, 3, 'Desktop', 'Windows 10', 'Repair'),
(104, 4, 'Laptop', 'Windows 11', 'Active'),
(105, 6, 'Laptop', 'Windows 11', 'Active'),
(106, 7, 'Desktop', 'Windows 11', 'Active'),
(107, 8, 'Laptop', 'Windows 11', 'Active'),
(108, 9, 'Laptop', 'Windows 11', 'Active'),
(109, 10, 'Laptop', 'Windows 10', 'Active'),
(110, 11, 'Desktop', 'Windows 11', 'Active'),
(111, 12, 'Laptop', 'Windows 11', 'Active'),
(112, 13, 'Laptop', 'Windows 11', 'Active'),
(113, 14, 'Desktop', 'Windows 10', 'Repair'),
(114, 15, 'Laptop', 'Windows 11', 'Active'),
(115, 16, 'Laptop', 'Windows 11', 'Active'),
(116, 17, 'Laptop', 'Windows 11', 'Active'),
(117, 18, 'Desktop', 'Windows 11', 'Active'),
(118, 19, 'Laptop', 'Windows 10', 'Active'),
(119, 20, 'Laptop', 'Windows 11', 'Active'),
(120, 5, 'Desktop', 'Windows 11', 'Active');


-- ============================================
-- TICKETS
-- ============================================

INSERT INTO tickets
VALUES
(1001, 1, 101, 'Laptop cannot connect to Wi-Fi', 'High', 'Open', '2026-09-20'),
(1002, 2, 102, 'Password reset required', 'Medium', 'Closed', '2026-09-20'),
(1003, 3, 103, 'Computer is very slow', 'Low', 'In Progress', '2026-09-21'),
(1004, 4, 104, 'Screen is not working', 'High', 'Open', '2026-09-21'),
(1005, 6, 105, 'VPN connection problem', 'High', 'In Progress', '2026-09-22'),

(1006, 1, 101, 'VPN is not connecting', 'Medium', 'Open', '2026-09-22'),
(1007, 1, 101, 'Laptop battery draining quickly', 'Low', 'Closed', '2026-09-22'),
(1008, 6, 105, 'Cannot access company server', 'High', 'Open', '2026-09-23'),
(1009, 2, 102, 'Email is not syncing', 'Medium', 'In Progress', '2026-09-23'),
(1010, 3, 103, 'Printer is not responding', 'Medium', 'Open', '2026-09-23'),

(1011, 4, 104, 'Keyboard not working', 'Low', 'Closed', '2026-09-23'),
(1012, 1, 101, 'Windows update failed', 'Medium', 'In Progress', '2026-09-24'),
(1013, 2, 102, 'Cannot access shared folder', 'High', 'Open', '2026-09-24'),
(1014, 6, 105, 'VPN disconnects frequently', 'High', 'In Progress', '2026-09-24'),
(1015, 3, 103, 'Monitor has no signal', 'High', 'Open', '2026-09-24'),

(1016, 4, 104, 'Microsoft Teams audio problem', 'Medium', 'Closed', '2026-09-24'),
(1017, 1, 101, 'Laptop overheating', 'Medium', 'Open', '2026-09-25'),
(1018, 2, 102, 'Outlook is not receiving emails', 'High', 'In Progress', '2026-09-25'),
(1019, 6, 105, 'Cannot connect to internal server', 'High', 'Open', '2026-09-25'),
(1020, 3, 103, 'Computer freezes randomly', 'High', 'In Progress', '2026-09-25'),

(1021, 4, 104, 'Webcam not detected', 'Low', 'Open', '2026-09-25'),
(1022, 1, 101, 'Slow internet connection', 'Medium', 'Closed', '2026-09-26'),
(1023, 2, 102, 'Password expires too frequently', 'Low', 'Closed', '2026-09-26'),
(1024, 6, 105, 'Remote desktop connection failed', 'High', 'In Progress', '2026-09-26'),
(1025, 3, 103, 'Hard drive space is almost full', 'Medium', 'Open', '2026-09-26'),

(1026, 4, 104, 'Application crashes on startup', 'High', 'Open', '2026-09-26'),
(1027, 1, 101, 'Bluetooth device not detected', 'Low', 'Closed', '2026-09-27'),
(1028, 2, 102, 'Cannot print documents', 'Medium', 'In Progress', '2026-09-27'),
(1029, 6, 105, 'Authentication error when connecting to VPN', 'High', 'Open', '2026-09-27'),
(1030, 3, 103, 'Windows login is very slow', 'Medium', 'Closed', '2026-09-27'),

(1031, 7, 106, 'Finance application is not opening', 'High', 'Open', '2026-09-27'),
(1032, 8, 107, 'Sales dashboard is not loading', 'Medium', 'In Progress', '2026-09-27'),
(1033, 9, 108, 'Marketing software needs update', 'Low', 'Closed', '2026-09-27'),
(1034, 10, 109, 'HR shared folder unavailable', 'High', 'Open', '2026-09-27'),
(1035, 11, 110, 'Desktop is running slowly', 'Medium', 'In Progress', '2026-09-27'),

(1036, 12, 111, 'Operations application error', 'High', 'Open', '2026-09-27'),
(1037, 13, 112, 'Cannot access financial reports', 'High', 'In Progress', '2026-09-27'),
(1038, 14, 113, 'Desktop requires repair', 'High', 'Open', '2026-09-27'),
(1039, 15, 114, 'Browser keeps crashing', 'Low', 'Closed', '2026-09-27'),
(1040, 16, 115, 'Email password reset required', 'Medium', 'Closed', '2026-09-27'),

(1041, 17, 116, 'Laptop cannot connect to VPN', 'High', 'Open', '2026-09-27'),
(1042, 18, 117, 'Network connection unstable', 'Medium', 'In Progress', '2026-09-27'),
(1043, 19, 118, 'Windows update requires restart', 'Low', 'Closed', '2026-09-27'),
(1044, 20, 119, 'Sales application is not responding', 'High', 'Open', '2026-09-27'),
(1045, 5, 120, 'Marketing files cannot be opened', 'Medium', 'In Progress', '2026-09-27'),

(1046, 7, 106, 'Printer connection lost', 'Medium', 'Open', '2026-09-27'),
(1047, 11, 110, 'VPN authentication failed', 'High', 'Open', '2026-09-27'),
(1048, 17, 116, 'Laptop battery problem', 'Low', 'Closed', '2026-09-27'),
(1049, 20, 119, 'Cannot access shared sales drive', 'High', 'In Progress', '2026-09-27'),
(1050, 12, 111, 'Application installation required', 'Low', 'Closed', '2026-09-27');