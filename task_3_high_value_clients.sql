SELECT c.ClientName, p.ProductName, od.Quantity, p.UnitPrice
FROM OrderDetails od
	JOIN Products p 
    	ON od.ProductId = p.ProductId
    JOIN Orders o 
    	ON o.OrderId = od.OrderId
    JOIN Clients c 
    	ON c.ClientId = o.ClientId
WHERE o.OrderId = 1001
