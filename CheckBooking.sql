DELIMITER //
CREATE PROCEDURE CheckBooking(IN BookingDate DATE, IN Table_Number INT)
BEGIN
    IF EXISTS (SELECT * FROM Bookings WHERE BookingDate = BookingDate AND TableNumber = Table_Number) THEN
        SELECT CONCAT('Table ', Table_Number, ' is already booked') AS Status;
    ELSE
        SELECT CONCAT('Table ', Table_Number, ' is available') AS Status;
    END IF;
END //
DELIMITER ;