-- Creating student table
CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(50) UNIQUE
);

-- Creating instructor table
CREATE TABLE instructor (
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    expertise VARCHAR(100)
);


-- Creating course table
CREATE TABLE course (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    description TEXT, 
    category ENUM('Data Science', 'Design', 'Marketing', 'Data Analysis', 'Software Engineering', 'Finance Analysis', 'Risk Analysis'),
    duration_in_hours INT,
    level ENUM('Beginner', 'Intermediate', 'Advanced'),
    instructor_id INT NULL,
    FOREIGN KEY(instructor_id) REFERENCES instructor(instructor_id) 
    ON DELETE SET NULL
);


-- Creating subscription table
CREATE TABLE subscription (
    subscription_id INT PRIMARY KEY AUTO_INCREMENT,
    start_date DATE,
    end_date DATE,
    payment_amount DECIMAL(8,2),
    subscription_status VARCHAR(20),
    student_id INT,
    FOREIGN KEY(student_id) REFERENCES student(student_id)
    ON DELETE CASCADE
);

-- Creating lesson table
CREATE TABLE lesson (
    lesson_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) ,
    type ENUM('Video', 'Reading', 'Quiz'),
    estimated_duration INT,
    course_id INT,
    FOREIGN KEY(course_id) REFERENCES course(course_id)
    ON DELETE CASCADE
);

-- Creating payout table
CREATE TABLE payout (
    payout_id INT PRIMARY KEY AUTO_INCREMENT,
    payment_amount DECIMAL(8,2),
    payment_date DATE,
    instructor_id INT,
    course_id INT,
    FOREIGN KEY(instructor_id) REFERENCES instructor(instructor_id)
    ON DELETE CASCADE,
    FOREIGN KEY(course_id) REFERENCES course(course_id) 
    ON DELETE CASCADE
);

-- Creating enrollment table
CREATE TABLE enrollment (
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    status ENUM('Active', 'Completed', 'Dropped'),
    final_grade DECIMAL(3,1),
    review_rating INT CHECK(review_rating BETWEEN 1 AND 5),
    review_feedback TEXT,
    review_submission_date DATE,
    PRIMARY KEY(student_id, course_id),
    FOREIGN KEY(student_id) REFERENCES student(student_id)
    ON DELETE CASCADE,
    FOREIGN KEY(course_id) REFERENCES course(course_id)
    ON DELETE CASCADE
);
