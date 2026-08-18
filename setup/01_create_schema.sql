-- ==========================================
-- 1. CREATE TABLES
-- ==========================================

CREATE TABLE Clients (
    ClientId INT PRIMARY KEY,
    ClientName VARCHAR(100),
    Industry VARCHAR(50),
    JoinDate DATE
);

CREATE TABLE Products (
    ProductId INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    UnitPrice DECIMAL(10, 2)
);

CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    ClientId INT,
    OrderDate DATE,
    Status VARCHAR(20)
);

CREATE TABLE OrderDetails (
    DetailId INT PRIMARY KEY,
    OrderId INT,
    ProductId INT,
    Quantity INT
);

CREATE TABLE SupportTickets (
    TicketId INT PRIMARY KEY,
    ClientId INT,
    ProductId INT,
    IssueType VARCHAR(50),
    ResolvedStatus VARCHAR(20)
);
