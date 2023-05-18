SELECT c.CustomerID, c.Name, o.OrderID, o.TotalCost, m.CuisineName 
FROM Customers c 
JOIN Bookings b 
ON Customers.CustomerID= Bookings.CustomerID 
JOIN Orders o 
ON Orders.BookingID=Bookings.BookingID
JOIN menu m 
ON menu.MenuID=OrdersOrders.MenuID 
ORDER BY o.TotalCost DESC; 

