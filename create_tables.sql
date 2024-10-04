
-- Create table for students/employees
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    enrollment_number VARCHAR(20) UNIQUE,
    class VARCHAR(50)
);

-- Create table for subjects/classes (optional)
CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(100),
    teacher_name VARCHAR(100)
);

-- Create table for attendance records
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject_id INT,
    attendance_date DATE,
    status VARCHAR(10), -- Present or Absent
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);
