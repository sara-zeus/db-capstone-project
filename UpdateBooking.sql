DELIMITER //
CREATE PROCEDURE UpdateBooking(IN bookingId INT, IN bookingdate DATE) 
BEGIN
    UPDATE Bookings 
    SET BookingID= bookingId
    WHERE  Date= bookingdate; 
    SELECT CONCAT("Booking", bookingId, "Is updated")  AS Massage ; 
END //
DELIMITER ;
 
 
 
 
 
 