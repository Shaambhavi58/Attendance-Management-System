
DELIMITER //

-- Procedure to mark attendance
CREATE PROCEDURE MarkAttendance (
    IN p_student_id INT,
    IN p_subject_id INT,
    IN p_attendance_date DATE,
    IN p_status VARCHAR(10)
)
BEGIN
    INSERT INTO Attendance (student_id, subject_id, attendance_date, status)
    VALUES (p_student_id, p_subject_id, p_attendance_date, p_status);
END //

DELIMITER ;
