SELECT A.IssueType, B.ProductName, C.ClientName
FROM SupportTickets A
JOIN Products B ON A.ProductId = B.ProductId
JOIN Clients C ON A.ClientId = C.ClientId
WHERE A.ResolvedStatus = 'Open';
