DELIMITER //
CREATE PROCEDURE AddValidBooking(IN BookingDate DATE, IN Table_Number INT) 
BEGIN
    DECLARE tableBooked INT DEFAULT 0;
    
    START TRANSACTION;
    SELECT COUNT(*) INTO tableBooked
    FROM Bookings
    WHERE BookingDate = BookingDate AND TableNumber = Table_Number;
    
    IF tableBooked > 0 THEN
        ROLLBACK;
        SELECT CONCAT('Table ', Table_Number, ' is already booked-booking canceled') AS Status;
    ELSE
	
        INSERT INTO Bookings (BookingDate, TableNumber)
        VALUES (BookingDate, Table_Number);
        
        -- Commit the transaction
        COMMIT;
        SELECT CONCAT('Booking for Table ', Table_Number, ' on ', BookingDate, ' is successful') AS Status;
    END IF;
END //
DELIMITER ;
