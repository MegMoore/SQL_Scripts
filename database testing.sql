SELECT r.Id, r.[DESCRIPTION], r.Total, rl.Quantity, p.Price, (rl.Quantity * p.Price) LineTotald
FROM Requests r
JOIN RequestLines rl on r.Id = rl.RequestedId
JOIN Products p on p.Id = rl.ProductId
WHERE r.Id = 12