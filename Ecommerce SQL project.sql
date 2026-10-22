CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    country VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(100),
    quantity INT,
    price_per_unit DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- ==========================================
-- INSERTING 100 ROWS INTO CUSTOMERS
-- ==========================================
INSERT INTO Customers (customer_id, first_name, last_name, email, country) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 'USA'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 'Canada'),
(3, 'Alex', 'Jones', 'alex.jones@example.com', 'UK'),
(4, 'Emily', 'Brown', 'emily.brown@example.com', 'Australia'),
(5, 'Michael', 'Davis', 'michael.davis@example.com', 'USA'),
(6, 'Sarah', 'Miller', 'sarah.miller@example.com', 'Germany'),
(7, 'David', 'Wilson', 'david.wilson@example.com', 'France'),
(8, 'Jessica', 'Taylor', 'jessica.taylor@example.com', 'USA'),
(9, 'James', 'Anderson', 'james.anderson@example.com', 'Canada'),
(10, 'Amanda', 'Thomas', 'amanda.thomas@example.com', 'UK'),
(11, 'Robert', 'Jackson', 'robert.jackson@example.com', 'Australia'),
(12, 'Megan', 'White', 'megan.white@example.com', 'USA'),
(13, 'Brian', 'Harris', 'brian.harris@example.com', 'Germany'),
(14, 'Rachel', 'Martin', 'rachel.martin@example.com', 'France'),
(15, 'Kevin', 'Thompson', 'kevin.thompson@example.com', 'USA'),
(16, 'Lisa', 'Garcia', 'lisa.garcia@example.com', 'Canada'),
(17, 'Jason', 'Martinez', 'jason.martinez@example.com', 'UK'),
(18, 'Stephanie', 'Robinson', 'stephanie.robinson@example.com', 'Australia'),
(19, 'Jeff', 'Clark', 'jeff.clark@example.com', 'USA'),
(20, 'Nicole', 'Rodriguez', 'nicole.rodriguez@example.com', 'Germany'),
(21, 'William', 'Lewis', 'william.lewis@example.com', 'France'),
(22, 'Amy', 'Lee', 'amy.lee@example.com', 'USA'),
(23, 'Eric', 'Walker', 'eric.walker@example.com', 'Canada'),
(24, 'Melissa', 'Hall', 'melissa.hall@example.com', 'UK'),
(25, 'Scott', 'Allen', 'scott.allen@example.com', 'Australia'),
(26, 'Kimberly', 'Young', 'kimberly.young@example.com', 'USA'),
(27, 'Ryan', 'King', 'ryan.king@example.com', 'Germany'),
(28, 'Amber', 'Wright', 'amber.wright@example.com', 'France'),
(29, 'George', 'Scott', 'george.scott@example.com', 'USA'),
(30, 'Heather', 'Torres', 'heather.torres@example.com', 'Canada'),
(31, 'Paul', 'Nguyen', 'paul.nguyen@example.com', 'UK'),
(32, 'Michelle', 'Hill', 'michelle.hill@example.com', 'Australia'),
(33, 'Daniel', 'Flores', 'daniel.flores@example.com', 'USA'),
(34, 'Laura', 'Green', 'laura.green@example.com', 'Germany'),
(35, 'Christopher', 'Adams', 'christopher.adams@example.com', 'France'),
(36, 'Rebecca', 'Nelson', 'rebecca.nelson@example.com', 'USA'),
(37, 'Matthew', 'Baker', 'matthew.baker@example.com', 'Canada'),
(38, 'Cynthia', 'Ramirez', 'cynthia.ramirez@example.com', 'UK'),
(39, 'Andrew', 'Campbell', 'andrew.campbell@example.com', 'Australia'),
(40, 'Christine', 'Mitchell', 'christine.mitchell@example.com', 'USA'),
(41, 'Joshua', 'Roberts', 'joshua.roberts@example.com', 'Germany'),
(42, 'Anna', 'Carter', 'anna.carter@example.com', 'France'),
(43, 'Mark', 'Phillips', 'mark.phillips@example.com', 'USA'),
(44, 'Katherine', 'Evans', 'katherine.evans@example.com', 'Canada'),
(45, 'Edward', 'Turner', 'edward.turner@example.com', 'UK'),
(46, 'Sharon', 'Torres', 'sharon.torres@example.com', 'Australia'),
(47, 'Steven', 'Parker', 'steven.parker@example.com', 'USA'),
(48, 'Elizabeth', 'Collins', 'elizabeth.collins@example.com', 'Germany'),
(49, 'Thomas', 'Edwards', 'thomas.edwards@example.com', 'France'),
(50, 'Mary', 'Stewart', 'mary.stewart@example.com', 'USA'),
(51, 'Gary', 'Florres', 'gary.flores@example.com', 'Canada'),
(52, 'Joyce', 'Morris', 'joyce.morris@example.com', 'UK'),
(53, 'Charles', 'Nguyen', 'charles.nguyen@example.com', 'Australia'),
(54, 'Martha', 'Murphy', 'martha.murphy@example.com', 'USA'),
(55, 'Anthony', 'Rivera', 'anthony.rivera@example.com', 'Germany'),
(56, 'Joan', 'Cook', 'joan.cook@example.com', 'France'),
(57, 'Richard', 'Rogers', 'richard.rogers@example.com', 'USA'),
(58, 'Kelly', 'Morgan', 'kelly.morgan@example.com', 'Canada'),
(59, 'Donald', 'Peterson', 'donald.peterson@example.com', 'UK'),
(60, 'Christina', 'Cooper', 'christina.cooper@example.com', 'Australia'),
(61, 'Ronald', 'Reed', 'ronald.reed@example.com', 'USA'),
(62, 'Lauren', 'Bailey', 'lauren.bailey@example.com', 'Germany'),
(63, 'Denis', 'Bell', 'denis.bell@example.com', 'France'),
(64, 'Victoria', 'Gomez', 'victoria.gomez@example.com', 'USA'),
(65, 'Stephen', 'Kelly', 'stephen.kelly@example.com', 'Canada'),
(66, 'Cheryl', 'Howard', 'cheryl.howard@example.com', 'UK'),
(67, 'Larry', 'Ward', 'larry.ward@example.com', 'Australia'),
(68, 'Megan', 'Cox', 'megan.cox@example.com', 'USA'),
(69, 'Jeffrey', 'Diaz', 'jeffrey.diaz@example.com', 'Germany'),
(70, 'Alice', 'Richardson', 'alice.richardson@example.com', 'France'),
(71, 'Frank', 'Wood', 'frank.wood@example.com', 'USA'),
(72, 'Janice', 'Watson', 'janice.watson@example.com', 'Canada'),
(73, 'Raymond', 'Brooks', 'raymond.brooks@example.com', 'UK'),
(74, 'Julia', 'Bennett', 'julia.bennett@example.com', 'Australia'),
(75, 'Gregory', 'Gray', 'gregory.gray@example.com', 'USA'),
(76, 'Grace', 'James', 'grace.james@example.com', 'Germany'),
(77, 'Joshua', 'Reyes', 'joshua.reyes@example.com', 'France'),
(78, 'Judy', 'Cruz', 'judy.cruz@example.com', 'USA'),
(79, 'Benjamin', 'Hughes', 'benjamin.hughes@example.com', 'Canada'),
(80, 'Beverly', 'Price', 'beverly.price@example.com', 'UK'),
(81, 'Roy', 'Myers', 'roy.myers@example.com', 'Australia'),
(82, 'Denise', 'Long', 'denise.long@example.com', 'USA'),
(83, 'Arthur', 'Foster', 'arthur.foster@example.com', 'Germany'),
(84, 'Marilyn', 'Sanders', 'marilyn.sanders@example.com', 'France'),
(85, 'Walter', 'Ross', 'walter.ross@example.com', 'USA'),
(86, 'Tammy', 'Morales', 'tammy.morales@example.com', 'Canada'),
(87, 'Peter', 'Powell', 'peter.powell@example.com', 'UK'),
(88, 'Diana', 'Sullivan', 'diana.sullivan@example.com', 'Australia'),
(89, 'Albert', 'Russell', 'albert.russell@example.com', 'USA'),
(90, 'Jane', 'Ortiz', 'jane.ortiz@example.com', 'Germany'),
(91, 'Carl', 'Jenkins', 'carl.jenkins@example.com', 'France'),
(92, 'Lori', 'Gutierrez', 'lori.gutierrez@example.com', 'USA'),
(93, 'Paul', 'Perry', 'paul.perry@example.com', 'Canada'),
(94, 'Jacqueline', 'Butler', 'jacqueline.butler@example.com', 'UK'),
(95, 'Billy', 'Barnes', 'billy.barnes@example.com', 'Australia'),
(96, 'Beverly', 'Fisher', 'beverly.fisher@example.com', 'USA'),
(97, 'Bruce', 'Henderson', 'bruce.henderson@example.com', 'Germany'),
(98, 'Denise', 'Coleman', 'denise.coleman@example.com', 'France'),
(99, 'Roy', 'Simmons', 'roy.simmons@example.com', 'USA'),
(100, 'Tammy', 'Patterson', 'tammy.patterson@example.com', 'Canada');


INSERT INTO Orders (order_id, customer_id, order_date, total_amount, status) VALUES
(101, 1, '2026-01-01', 250.00, 'Shipped'),
(102, 2, '2026-01-02', 45.50, 'Shipped'),
(103, 3, '2026-01-03', 120.00, 'Pending'),
(104, 4, '2026-01-04', 89.99, 'Shipped'),
(105, 5, '2026-01-05', 15.00, 'Cancelled'),
(106, 6, '2026-01-06', 310.00, 'Shipped'),
(107, 7, '2026-01-07', 55.25, 'Shipped'),
(108, 8, '2026-01-08', 199.00, 'Pending'),
(109, 9, '2026-01-09', 75.00, 'Shipped'),
(110, 10, '2026-01-10', 420.00, 'Shipped'),
(111, 11, '2026-01-11', 65.00, 'Shipped'),
(112, 12, '2026-01-12', 135.50, 'Pending'),
(113, 13, '2026-01-13', 25.00, 'Shipped'),
(114, 14, '2026-01-14', 110.00, 'Cancelled'),
(115, 15, '2026-01-15', 850.00, 'Shipped'),
(116, 16, '2026-01-16', 45.00, 'Shipped'),
(117, 17, '2026-01-17', 125.00, 'Shipped'),
(118, 18, '2026-01-18', 95.00, 'Pending'),
(119, 19, '2026-01-19', 60.00, 'Shipped'),
(120, 20, '2026-01-20', 150.00, 'Shipped'),
(121, 21, '2026-01-21', 210.00, 'Shipped'),
(122, 22, '2026-01-22', 35.99, 'Shipped'),
(123, 23, '2026-01-23', 115.00, 'Pending'),
(124, 24, '2026-01-24', 80.00, 'Shipped'),
(125, 25, '2026-01-25', 45.00, 'Cancelled'),
(126, 26, '2026-01-26', 299.00, 'Shipped'),
(127, 27, '2026-01-27', 50.00, 'Shipped'),
(128, 28, '2026-01-28', 180.00, 'Pending'),
(129, 29, '2026-01-29', 70.00, 'Shipped'),
(130, 30, '2026-01-30', 410.00, 'Shipped'),
(131, 31, '2026-01-31', 60.00, 'Shipped'),
(132, 32, '2026-02-01', 140.00, 'Pending'),
(133, 33, '2026-02-02', 30.00, 'Shipped'),
(134, 34, '2026-02-03', 105.00, 'Cancelled'),
(135, 35, '2026-02-04', 790.00, 'Shipped'),
(136, 36, '2026-02-05', 40.00, 'Shipped'),
(137, 37, '2026-02-06', 130.00, 'Shipped'),
(138, 38, '2026-02-07', 90.00, 'Pending'),
(139, 39, '2026-02-08', 55.00, 'Shipped'),
(140, 40, '2026-02-09', 160.00, 'Shipped'),
(141, 41, '2026-02-10', 220.00, 'Shipped'),
(142, 42, '2026-02-11', 39.99, 'Shipped'),
(143, 43, '2026-02-12', 120.00, 'Pending'),
(144, 44, '2026-02-13', 85.00, 'Shipped'),
(145, 45, '2026-02-14', 50.00, 'Cancelled'),
(146, 46, '2026-02-15', 280.00, 'Shipped'),
(147, 47, '2026-02-16', 48.00, 'Shipped'),
(148, 48, '2026-02-17', 170.00, 'Pending'),
(149, 49, '2026-02-18', 72.00, 'Shipped'),
(150, 50, '2026-02-19', 430.00, 'Shipped'),
(151, 51, '2026-02-20', 62.00, 'Shipped'),
(152, 52, '2026-02-21', 145.00, 'Pending'),
(153, 53, '2026-02-22', 28.00, 'Shipped'),
(154, 54, '2026-02-23', 112.00, 'Cancelled'),
(155, 55, '2026-02-24', 820.00, 'Shipped'),
(156, 56, '2026-02-25', 42.00, 'Shipped'),
(157, 57, '2026-02-26', 132.00, 'Shipped'),
(158, 58, '2026-02-27', 92.00, 'Pending'),
(159, 59, '2026-02-28', 58.00, 'Shipped'),
(160, 60, '2026-03-01', 165.00, 'Shipped'),
(161, 61, '2026-03-02', 230.00, 'Shipped'),
(162, 62, '2026-03-03', 38.00, 'Shipped'),
(163, 63, '2026-03-04', 122.00, 'Pending'),
(164, 64, '2026-03-05', 88.00, 'Shipped'),
(165, 65, '2026-03-06', 52.00, 'Cancelled'),
(166, 66, '2026-03-07', 270.00, 'Shipped'),
(167, 67, '2026-03-08', 46.00, 'Shipped'),
(168, 68, '2026-03-09', 175.00, 'Pending'),
(169, 69, '2026-03-10', 74.00, 'Shipped'),
(170, 70, '2026-03-11', 440.00, 'Shipped'),
(171, 71, '2026-03-12', 64.00, 'Shipped'),
(172, 72, '2026-03-13', 148.00, 'Pending'),
(173, 73, '2026-03-14', 29.00, 'Shipped'),
(174, 74, '2026-03-15', 114.00, 'Cancelled'),
(175, 75, '2026-03-16', 810.00, 'Shipped'),
(176, 76, '2026-03-17', 41.00, 'Shipped'),
(177, 77, '2026-03-18', 134.00, 'Shipped'),
(178, 78, '2026-03-19', 94.00, 'Pending'),
(179, 79, '2026-03-20', 59.00, 'Shipped'),
(180, 80, '2026-03-21', 168.00, 'Shipped'),
(181, 81, '2026-03-22', 240.00, 'Shipped'),
(182, 82, '2026-03-23', 37.00, 'Shipped'),
(183, 83, '2026-03-24', 124.00, 'Pending'),
(184, 84, '2026-03-25', 86.00, 'Shipped'),
(185, 85, '2026-03-26', 54.00, 'Cancelled'),
(186, 86, '2026-03-27', 260.00, 'Shipped'),
(187, 87, '2026-03-28', 44.00, 'Shipped'),
(188, 88, '2026-03-29', 178.00, 'Pending'),
(189, 89, '2026-03-30', 76.00, 'Shipped'),
(190, 90, '2026-03-31', 450.00, 'Shipped'),
(191, 91, '2026-04-01', 66.00, 'Shipped'),
(192, 92, '2026-04-02', 150.00, 'Pending'),
(193, 93, '2026-04-03', 31.00, 'Shipped'),
(194, 94, '2026-04-04', 116.00, 'Cancelled'),
(195, 95, '2026-04-05', 830.00, 'Shipped'),
(196, 96, '2026-04-06', 43.00, 'Shipped'),
(197, 97, '2026-04-07', 136.00, 'Shipped'),
(198, 98, '2026-04-08', 96.00, 'Pending'),
(199, 99, '2026-04-09', 61.00, 'Shipped'),
(200, 100, '2026-04-10', 170.00, 'Shipped');

-- ==========================================
-- INSERTING 100 ROWS INTO ORDER_ITEMS
-- ==========================================
INSERT INTO Order_Items (item_id, order_id, product_name, quantity, price_per_unit) VALUES
(1001, 101, 'Laptop', 1, 250.00),
(1002, 102, 'Wireless Mouse', 2, 22.75),
(1003, 103, 'Desk Lamp', 1, 120.00),
(1004, 104, 'Keyboard', 1, 89.99),
(1005, 105, 'HDMI Cable', 1, 15.00),
(1006, 106, 'Monitor', 1, 310.00),
(1007, 107, 'USB Hub', 1, 55.25),
(1008, 108, 'External SSD', 1, 199.00),
(1009, 109, 'Headphones', 1, 75.00),
(1010, 110, 'Office Chair', 1, 420.00),
(1011, 111, 'Coffee Mug', 2, 32.50),
(1012, 112, 'Backpack', 1, 135.50),
(1013, 113, 'Mousepad', 1, 25.00),
(1014, 114, 'Water Bottle', 2, 55.00),
(1015, 115, 'Smartphone', 1, 850.00),
(1016, 116, 'Phone Case', 1, 45.00),
(1017, 117, 'Power Bank', 1, 125.00),
(1018, 118, 'Smart Watch', 1, 95.00),
(1019, 119, 'Charger Adapter', 2, 30.00),
(1020, 120, 'Bluetooth Speaker', 1, 150.00),
(1021, 121, 'Tablet', 1, 210.00),
(1022, 122, 'Stylus Pen', 1, 35.99),
(1023, 123, 'Wireless Earbuds', 1, 115.00),
(1024, 124, 'Webcam', 1, 80.00),
(1025, 125, 'Microphone Cable', 3, 15.00),
(1026, 126, 'Gaming Chair', 1, 299.00),
(1027, 127, 'Desk Mat', 2, 25.00),
(1028, 128, 'Mechanical Keyboard', 1, 180.00),
(1029, 129, 'Ring Light', 1, 70.00),
(1030, 130, 'Graphics Card', 1, 410.00),
(1031, 131, 'Laptop Stand', 1, 60.00),
(1032, 132, 'Dual Monitor Stand', 1, 140.00),
(1033, 133, 'Ethernet Cable', 2, 15.00),
(1034, 134, 'Hard Drive Enclosure', 1, 105.00),
(1035, 135, 'Processor CPU', 1, 790.00),
(1036, 136, 'CPU Cooler', 1, 40.00),
(1037, 137, 'Motherboard', 1, 130.00),
(1038, 138, 'RAM 16GB', 1, 90.00),
(1039, 139, 'PC Case', 1, 55.00),
(1040, 140, 'Power Supply 750W', 1, 160.00),
(1041, 141, 'Soundbar', 1, 220.00),
(1042, 142, 'Audio Splitter', 1, 39.99),
(1043, 143, 'Streaming Camera', 1, 120.00),
(1044, 144, 'Capture Card', 1, 85.00),
(1045, 145, 'Green Screen', 1, 50.00),
(1046, 146, 'Projector', 1, 280.00),
(1047, 147, 'Tripod', 2, 24.00),
(1048, 148, 'Studio Lights', 1, 170.00),
(1049, 149, 'Boom Arm', 1, 72.00),
(1050, 150, 'Condenser Microphone', 1, 430.00),
(1051, 151, 'Pop Filter', 2, 31.00),
(1052, 152, 'Acoustic Panels', 1, 145.00),
(1053, 153, 'Cable Ties Pack', 2, 14.00),
(1054, 154, 'Smart Plug Pack', 1, 112.00),
(1055, 155, 'Smart Bulb Kit', 1, 820.00),
(1056, 156, 'LED Strip Lights', 1, 42.00),
(1057, 157, 'Wi-Fi Router', 1, 132.00),
(1058, 158, 'Wi-Fi Extender', 1, 92.00),
(1059, 159, 'Network Switch', 1, 58.00),
(1060, 160, 'NAS Enclosure', 1, 165.00),
(1061, 161, 'E-Reader', 1, 230.00),
(1062, 162, 'E-Reader Cover', 1, 38.00),
(1063, 163, 'Drawing Tablet', 1, 122.00),
(1064, 164, 'Digital Pen Nibs', 4, 22.00),
(1065, 165, 'Screen Protector', 2, 26.00),
(1066, 166, 'Fitness Tracker', 1, 270.00),
(1067, 167, 'Replacement Band', 2, 23.00),
(1068, 168, 'Smart Scale', 1, 175.00),
(1069, 169, 'Yoga Mat', 1, 74.00),
(1070, 170, 'Adjustable Dumbbells', 1, 440.00),
(1071, 171, 'Resistance Bands', 1, 64.00),
(1072, 172, 'Foam Roller', 1, 148.00),
(1073, 173, 'Shaker Bottle', 1, 29.00),
(1074, 174, 'Running Armband', 2, 57.00),
(1075, 175, 'Electric Scooter', 1, 810.00),
(1076, 176, 'Scooter Lock', 1, 41.00),
(1077, 177, 'Helmet', 1, 134.00),
(1078, 178, 'Bike Light Set', 1, 94.00),
(1079, 179, 'Air Pump', 1, 59.00),
(1080, 180, 'Phone Mount for Bike', 1, 168.00),
(1081, 181, 'Coffee Maker', 1, 240.00),
(1082, 182, 'Coffee Beans 1kg', 1, 37.00),
(1083, 183, 'Electric Kettle', 1, 124.00),
(1084, 184, 'Milk Frother', 1, 86.00),
(1085, 185, 'Travel Mug', 2, 27.00),
(1086, 186, 'Blender', 1, 260.00),
(1087, 187, 'Toaster', 1, 44.00),
(1088, 188, 'Air Fryer', 1, 178.00),
(1089, 189, 'Juicer', 1, 76.00),
(1090, 190, 'Microwave Oven', 1, 450.00),
(1091, 191, 'Food Scale', 2, 33.00),
(1092, 192, 'Slow Cooker', 1, 150.00),
(1093, 193, 'Egg Cooker', 1, 31.00),
(1094, 194, 'Vacuum Sealer', 1, 116.00),
(1095, 195, 'Robot Vacuum', 1, 830.00),
(1096, 196, 'Replacement Brushes', 1, 43.00),
(1097, 197, 'Cordless Stick Vacuum', 1, 136.00),
(1098, 198, 'Air Purifier', 1, 96.00),
(1099, 199, 'Replacement Filter', 1, 61.00),
(1100, 200, 'Dehumidifier', 1, 170.00);

-- Category 1: Basic Retrieval & Filtering (Queries 1–6)
-- 1. Retrieve all customers from the USA
select * from Customers;
select * from Orders;
select * from Order_Items;
-- 1
SELECT * 
FROM Customers 
WHERE country = 'USA';
-- 2
SELECT * 
FROM Orders 
WHERE total_amount > 500.00;
-- 3
SELECT * 
FROM Orders 
WHERE status IN ('Pending', 'Cancelled');

SELECT *
FROM Order_Items 
WHERE quantity > 1 
ORDER BY quantity DESC;

-- 4
SELECT * 
FROM Customers 
WHERE last_name LIKE '%n';

-- 5
SELECT COUNT(*) AS total_customers 
FROM Customers;

-- 6
SELECT 
    MAX(total_amount) AS max_order, 
    MIN(total_amount) AS min_order, 
    AVG(total_amount) AS avg_order 
FROM Orders;

-- 7
SELECT status, COUNT(*) AS status_count 
FROM Orders 
GROUP BY status;

-- 8
SELECT SUM(total_amount) AS total_revenue 
FROM Orders 
WHERE status = 'Shipped';

-- 9
SELECT product_name, SUM(quantity) AS total_sold 
FROM Order_Items 
GROUP BY product_name;

-- 10
SELECT o.order_id, c.first_name, c.last_name, c.email,o.total_amount
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id;

-- 11
SELECT o.order_id, oi.product_name, oi.quantity, oi.price_per_unit
FROM Orders o
INNER JOIN Order_Items oi ON o.order_id = oi.order_id;

-- 12
SELECT c.customer_id, c.first_name, c.last_name, SUM(o.total_amount) AS total_spent
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;

-- 13
SELECT c.*
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 14
SELECT c.first_name, c.last_name, o.order_id,o.status
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE c.country = 'Canada' AND o.status = 'Pending';

-- 15
SELECT order_id,customer_id, total_amount
FROM Orders
WHERE total_amount > (SELECT AVG(total_amount) FROM Orders);

-- 16
SELECT first_name, last_name, email
FROM Customers
WHERE customer_id = (SELECT customer_id FROM Orders ORDER BY total_amount DESC LIMIT 1);

-- 17
SELECT customer_id, first_name, last_name
FROM Customers
WHERE customer_id IN (
    SELECT customer_id 
    FROM Orders 
    GROUP BY customer_id 
    HAVING COUNT(order_id) > 1
);
-- 18
SELECT c.first_name, c.last_name, c.email
FROM Customers c
WHERE EXISTS (
    SELECT 1 
    FROM Orders o
    JOIN Order_Items oi ON o.order_id = oi.order_id
    WHERE o.customer_id = c.customer_id AND oi.product_name = 'Laptop'
);
-- 19
SELECT 
    SUM(CASE WHEN status = 'Cancelled' THEN total_amount ELSE 0 END) / SUM(total_amount) * 100 AS Cancelled_percentage
FROM Orders;
-- 20
SELECT c.country, c.first_name, c.last_name, SUM(o.total_amount) AS total_spent,
       RANK() OVER(PARTITION BY c.country ORDER BY SUM(o.total_amount) DESC) as spending_rank
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.country, c.customer_id, c.first_name, c.last_name;

-- 21
SELECT order_id, order_date, total_amount,
       SUM(total_amount) OVER(ORDER BY order_date) AS total_by_date
FROM Orders;


-- 22
SELECT customer_id, order_id, order_date, total_amount,
       total_amount - LAG(total_amount, 1) OVER(PARTITION BY customer_id ORDER BY order_date) AS difference_from_last_order
FROM Orders;


-- 23
SELECT order_id,
       customer_id,
       total_amount,
       CASE 
           WHEN total_amount >= 500 THEN 'High Value'
           WHEN total_amount >= 100 THEN 'Medium Value'
           ELSE 'Low Value'
       END AS order_segment 
FROM orders
LIMIT 0, 1000;

-- 24
SELECT order_id, customer_id, order_date, total_amount
FROM Orders
WHERE order_date BETWEEN '2026-03-01' AND '2026-03-31';


-- 25
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS monthly_revenue
FROM Orders
GROUP BY EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY order_year, order_month;

-- 26
SELECT c.customer_id, c.first_name, c.last_name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING MAX(o.order_date) < '2026-03-01';

-- 27
SELECT email, COUNT(*) AS duplicate_count
FROM Customers
GROUP BY email
HAVING COUNT(*) > 1;


-- 28
SELECT order_id, product_name, price_per_unit
FROM Order_Items
WHERE price_per_unit = (SELECT MAX(price_per_unit) FROM Order_Items);

-- 29
SELECT c.country, AVG(o.total_amount) AS average_order_value
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.country;


-- 30
SELECT order_id, total_amount, percentile
FROM (
    SELECT order_id, total_amount,
           PERCENT_RANK() OVER (ORDER BY total_amount DESC) AS percentile
    FROM Orders
) AS ranked_orders
WHERE percentile <= 0.10;

-- 31
WITH RankedOrders AS (
    SELECT 
        order_id, 
        total_amount,
        DENSE_RANK() OVER (ORDER BY total_amount DESC) as price_rank
    FROM Orders
)
SELECT order_id, total_amount
FROM RankedOrders
WHERE price_rank = 2;


