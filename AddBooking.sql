DELIMITER //
CREATE PROCEDURE AddBooking(IN bookingId INT, IN customerID INT, IN bookingDate DATE, IN tableNumber INT)
BEGIN
    INSERT INTO Bookings (BookingID, Date, TableNumber, CustomerID)
    VALUES (bookingId, bookingDate, tableNumber, customerID);
END //
DELIMITER ;
 