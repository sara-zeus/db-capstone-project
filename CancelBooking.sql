DELIMITER //
CREATE PROCEDURE CancelBooking(IN bookingId INT)
BEGIN
   DELETE FROM Bookings WHERE BookingID= bookingId; 
END //
DELIMITER ;


