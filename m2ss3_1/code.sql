CREATE TABLE classes (
    class_id VARCHAR(20) PRIMARY KEY,
    class_name VARCHAR(100) NOT NULL
);

CREATE TABLE students (
    student_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    class_id VARCHAR(20) NOT NULL,
    CONSTRAINT fk_students_classes FOREIGN KEY (class_id) REFERENCES classes(class_id)
);