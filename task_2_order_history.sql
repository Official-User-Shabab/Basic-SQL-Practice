SELECT O.OrderId, O.OrderDate, O.ClientId, C.ClientName
FROM Orders O
JOIN Clients C
  ON O.ClientId = C.ClientId;
