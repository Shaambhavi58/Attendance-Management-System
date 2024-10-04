
-- Query to retrieve attendance for a specific student
SELECT S.first_name, S.last_name, A.attendance_date, A.status, Sub.subject_name
FROM Students S
JOIN Attendance A ON S.student_id = A.student_id
JOIN Subjects Sub ON A.subject_id = Sub.subject_id
WHERE S.student_id = 1;

-- Query for attendance summary for all students
SELECT S.student_id, S.first_name, S.last_name, 
       COUNT(CASE WHEN A.status = 'Present' THEN 1 END) AS PresentDays,
       COUNT(CASE WHEN A.status = 'Absent' THEN 1 END) AS AbsentDays
FROM Students S
JOIN Attendance A ON S.student_id = A.student_id
GROUP BY S.student_id;
