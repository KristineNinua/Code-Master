-- Students & Enrollments

-- Which students have completed the most courses?
WITH completed_counts AS (
    SELECT student.student_id, student.name, COUNT(enrollment.course_id) AS completed_courses 
    FROM student
    JOIN enrollment
    ON student.student_id = enrollment.student_id
    WHERE enrollment.status = 'Completed'
    GROUP BY student.student_id
)

SELECT *
FROM completed_counts
WHERE completed_courses = (
    SELECT MAX(completed_courses)
    FROM completed_counts
);


-- What is the average final grade for each course?
SELECT enrollment.course_id, course.title, ROUND(AVG(enrollment.final_grade), 1) AS average_final_grade
FROM enrollment
JOIN course
ON enrollment.course_id = course.course_id
WHERE enrollment.status =  'Completed'
GROUP BY enrollment.course_id;


-- Which students gave a review rating below 3 for any course?
SELECT student.student_id, student.name, enrollment.review_rating
FROM student
JOIN enrollment
ON student.student_id = enrollment.student_id
WHERE enrollment.review_rating < 3
GROUP BY student.student_id, enrollment.review_rating;


-- How many active vs completed enrollments per course?
SELECT 
    course.course_id,
    course.title,
    COUNT(CASE WHEN enrollment.status = 'Active' THEN 1 END) AS active_enrollments,
    COUNT(CASE WHEN enrollment.status = 'Completed' THEN 1 END) AS completed_enrollments
FROM course
LEFT JOIN enrollment
ON course.course_id = enrollment.course_id
GROUP BY course.course_id, course.title
ORDER BY course.course_id;


-- Courses & Instructors
-- Which instructor teaches the most courses?

WITH course_counts AS (
SELECT instructor.instructor_id, instructor.name, COUNT(course.course_id) AS courses
FROM instructor
JOIN course
ON instructor.instructor_id = course.instructor_id
GROUP BY course.instructor_id
)

SELECT *
FROM course_counts
WHERE courses = (
    SELECT MAX(courses)
    FROM course_counts
);



-- Which courses have the highest average rating?
WITH average_counts AS (
SELECT course.course_id, course.title, ROUND(AVG(enrollment.review_rating)) AS average_rating
FROM course
JOIN enrollment
ON course.course_id = enrollment.course_id
WHERE enrollment.status <> 'Active'
GROUP BY course.course_id, course.title
)

SELECT *
FROM average_counts
WHERE average_rating = (
    SELECT MAX(average_rating)
    FROM average_counts
);


-- List top 5 longest courses by duration.
SELECT course.course_id, course.title, course.duration_in_hours AS course_duration
FROM course
ORDER BY course.duration_in_hours DESC
LIMIT 5;


-- Which instructors received payouts over $500 in the last year?
SELECT instructor.instructor_id, instructor.name, SUM(payout.payment_amount) AS payments
FROM instructor
JOIN payout
ON instructor.instructor_id = payout.instructor_id
WHERE 
    payout.payment_date >= '2024-01-01' AND payout.payment_date < '2025-01-01' 
    AND payout.payment_amount > 500
GROUP BY instructor.instructor_id;


-- What's the total payout amount per instructor?
SELECT instructor.instructor_id, instructor.name, SUM(payout.payment_amount) AS totals
FROM instructor
JOIN payout
ON instructor.instructor_id = payout.instructor_id
GROUP BY instructor.instructor_id;


-- Subscriptions & Revenue

-- What's the total revenue from subscriptions per student?
SELECT student.student_id, student.name, SUM(subscription.payment_amount) AS total_revenue
FROM student
JOIN subscription
ON student.student_id = subscription.student_id
GROUP BY student.student_id;


-- How many subscriptions are currently active?
SELECT student.student_id, student.name, subscription.subscription_id
FROM student
JOIN subscription
ON student.student_id = subscription.student_id
WHERE subscription.subscription_status = 'Active'
GROUP BY student.student_id, subscription.subscription_id;




-- Correlation between course completion and review rating.
SELECT ROUND(AVG(enrollment.review_rating), 2) 
FROM enrollment
WHERE enrollment.status = 'Completed'
UNION
SELECT ROUND(AVG(enrollment.review_rating), 2) 
FROM enrollment;


-- Average time from enrollment to review submission.
SELECT AVG(DATEDIFF(enrollment.review_submission_date, enrollment.enrollment_date))
FROM enrollment;


-- Courses with many enrollments but low ratings.
WITH many_enrollments AS (
    SELECT 
    course.course_id, course.title, COUNT(enrollment.course_id) AS enrollment_count, enrollment.review_rating
    FROM course
    JOIN enrollment
    ON course.course_id = enrollment.course_id
    WHERE enrollment.review_rating < 4
    GROUP BY course.course_id, enrollment.review_rating
)

SELECT *
FROM many_enrollments
WHERE enrollment_count = (
    SELECT enrollment_count
    FROM many_enrollments
    WHERE enrollment_count > 1
);


-- Instructor performance: average grade across all their courses.
SELECT course.instructor_id, ROUND(AVG(enrollment.final_grade), 2) AS average_grade
FROM course
JOIN enrollment
ON course.course_id = enrollment.course_id
WHERE enrollment.status = 'Completed'
GROUP BY course.instructor_id
ORDER BY course.instructor_id;
