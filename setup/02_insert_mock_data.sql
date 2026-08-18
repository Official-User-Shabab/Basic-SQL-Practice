-- ==========================================
-- 2. INSERT MOCK DATA
-- ==========================================

INSERT INTO Clients (ClientId, ClientName, Industry, JoinDate) VALUES
(1, 'TechCorp', 'Software', '2025-01-15'),
(2, 'HealthPlus', 'Healthcare', '2025-03-22'),
(3, 'EduGlobal', 'Education', '2025-06-10'),
(4, 'FinSecure', 'Finance', '2026-02-05');

INSERT INTO Products (ProductId, ProductName, Category, UnitPrice) VALUES
(101, 'Enterprise Server Rack', 'Hardware', 5000.00),
(102, 'Cloud Storage Node', 'Hardware', 2500.00),
(103, 'Cybersecurity Suite', 'Software', 1200.00),
(104, 'Analytics Dashboard', 'Software', 800.00);

INSERT INTO Orders (OrderId, ClientId, OrderDate, Status) VALUES
(1001, 1, '2026-07-10', 'Shipped'),
(1002, 2, '2026-07-12', 'Processing'),
(1003, 1, '2026-07-15', 'Shipped'),
(1004, 3, '2026-08-01', 'Delivered'),
(1005, 4, '2026-08-10', 'Shipped');

INSERT INTO OrderDetails (DetailId, OrderId, ProductId, Quantity) VALUES
(501, 1001, 101, 2),
(502, 1001, 103, 5),
(503, 1002, 102, 10),
(504, 1003, 104, 1),
(505, 1004, 101, 1),
(506, 1005, 103, 20);

INSERT INTO SupportTickets (TicketId, ClientId, ProductId, IssueType, ResolvedStatus) VALUES
(901, 1, 101, 'Installation Error', 'Resolved'),
(902, 2, 102, 'Network Latency', 'Open'),
(903, 1, 103, 'Login Bug', 'Resolved');
