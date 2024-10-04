
DELIMITER //

-- Trigger to ensure attendance date cannot be in the future
CREATE TRIGGER CheckAttendanceDate
BEFORE INSERT ON Attendance
FOR EACH ROW
BEGIN
    IF NEW.attendance_date > CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Attendance date cannot be in the future.';
    END IF;
END //

DELIMITER ;
