-- Inserting data into student table
INSERT INTO student(name, email) 
VALUES('Ava Martinez', 'avamartinez@gmail.com'),
('Liam Chen', 'liamchen@gmail.com'),
('Sofia Ahmed', 'sofiaahmed@gmail.com'),
('Noah Kim', 'noahkim@gmail.com'),
('Isabella Rossi', 'isabellarossi@gmail.com'),
('Elijah Thompson', 'elijahthompson@gmail.com'),
('Maya Patel', 'mayapatel@gmail.com'),
('Daniel Ivanov', 'danielivanov@mail.ru'),
('Chloe Nakamura', 'chloenakamura@gmail.com'),
('Mateo Alvarez', 'mateoalvarez@gmail.com'),
('Aria Singh', 'ariasingh@gmail.com'),
('Lucas O Connor', 'lucasoconnor@gmail.com'),
('Leila Haddad', 'leilahaddad@gmail.com'),
('Oliver Bakker', 'oliverbakker@gmail.com'),
('Hana Park', 'hanapark@gmail.com'),
('Amir D Souza', 'amirdsouza@gmail.com'),
('Zoe Nguyen', 'zoenguyen@gmail.com'),
('Aiden Murphy', 'aidenmurphy@gmail.com'),
('Fatima Rahman', 'fatimarahman@gmail.com'),
('Ezra Cohen', 'ezracohen@gmail.com');



-- Inserting data into instructor table
INSERT INTO instructor
VALUES(101, 'Clara Jensen', 'Design and Marketing');

INSERT INTO instructor(name, experise)
VALUES('Milo Torres', 'Design'),
('Aisha Khan', 'Finance Analysis and Risk Analysis'),
('Theo Nakamura', 'Data Science and Data Analysis'),
('Luna Petrova', 'Software Engineering');



-- Inserting data into course table
INSERT INTO course
VALUES(01, 'Mastering the World of Data Science', 'Dive into the core of predictive modeling, machine learning, 
and big data analytics. This path is perfect for those who want to turn raw data into actionable insights 
and drive decision-making with intelligent algorithms.', 'Data Science', 6, 'Intermediate', 104);


INSERT INTO course(title, description, category, duration_in_hours, level, instructor_id)
VALUES('Design Thinking & Creative Innovation', 'Explore the world of user-centered design, visual storytelling, 
and creative problem-solving. Learn how to design stunning digital experiences, from UX/UI fundamentals to advanced tools 
like Figma and Adobe XD.', 'Design', 3, 'Advanced', 102),

('Modern Marketing in the Digital Age', 'Gain expertise in SEO, content strategy, social media campaigns, 
and performance marketing. Discover how data, creativity, and analytics come together to build impactful brand narratives 
and grow audiences.', 'Marketing', 3, 'Advanced', 101),

('Data Analysis: From Numbers to Knowledge', 'Learn to collect, clean, and analyze data using tools like SQL, Excel, 
and Python. This track focuses on turning complex datasets into simple visual reports 
and actionable business insights.', 'Data Analysis', 2, 'Intermediate', 104),

('Building the Future: Software Engineering Essentials', 'Develop robust applications and systems using industry-standard 
languages and frameworks. From front-end development to backend architecture, this journey equips you with the skills 
to create scalable software solutions.', 'Software Engineering', 4, 'Advanced', 105),

('Finance Analysis for Strategic Decisions', 'Master the art of interpreting financial statements, forecasting trends, 
and supporting business decisions with solid financial modeling. Ideal for aspiring analysts, consultants, 
and business strategists.', 'Finance Analysis', 3, 'Advanced', 103),

('Risk Analysis: Anticipating and Managing Uncertainty', 'Learn how to identify, assess, and mitigate financial 
and operational risks. This path trains you to build models, run simulations, and apply frameworks that protect organizations 
from potential threats.', 'Risk Analysis', 3, 'Beginner', 103);

-- Inserting data into subscription table
INSERT INTO subscription
VALUES(001, '2022-03-14', '2023-08-21', 347.89, 'Active', 1);

INSERT INTO subscription(start_date, end_date, payment_amount, subscription_status, student_id)
VALUES('2020-11-02', '2024-06-07', 1550.45, 'Active', 2),
('2021-12-19', '2025-01-25', 802.30, 'Inactive', 3),
('2019-09-30', '2023-04-12', 1944.99, 'Active', 4),
('2020-07-08', '2022-02-27', 499.00, 'Cancelled', 5),
('2021-10-03', '2024-03-18', 1762.25, 'Active', 6),
('2018-05-11', '2025-08-15', 620.75, 'Active', 7),
('2020-04-04', '2024-08-05', 899.90, 'Cancelled', 8),
('2020-10-11', '2022-09-17', 1403.33, 'Active', 9),
('2018-05-19', '2019-12-03', 375.10, 'Cancelled', 10),
('2022-03-07', '2025-06-01', 1249.99, 'Inactive', 11),
('2024-02-14', '2025-09-23', 1685.60, 'Active', 12),
('2020-12-22', '2021-02-15', 712.80, 'Active', 13),
('2021-08-09', '2023-07-27', 950.00, 'Cancelled', 14),
('2023-04-02', '2025-06-16', 1833.25, 'Inactive', 15),
('2022-11-30', '2024-01-06', 1333.99, 'Inactive', 16),
('2019-07-14', '2021-10-28', 310.50, 'Active', 17),
('2020-06-25', '2023-12-01', 1988.80, 'Active', 18),
('2021-04-05', '2024-09-10', 675.45, 'Cancelled', 19),
('2022-01-29', '2023-05-20', 1599.99, 'Inactive', 20);


-- Inserting data into lesson table
INSERT INTO lesson
VALUES(1001, 'Foundations of Data Science: Tools, Techniques, and Mindset', 'Reading', 2, 01);

INSERT INTO lesson(title, type, estimated_duration, course_id)
VALUES('Introduction to Machine Learning with Real-World Data', 'Video', 3, 01),
('Building Predictive Models: From Regression to Random Forests', 'Quiz', 1, 01),
('Principles of Visual Design: Balance, Contrast, and Hierarchy', 'Video', 1, 02),
('User Experience (UX) Fundamentals: Designing with Empathy', 'Video', 2, 02),
('Digital Marketing Strategies: From Awareness to Conversion', 'Reading', 1, 03),
('Social Media Campaigns: Planning, Execution, and Analytics', 'Video', 2, 03),
('Data Cleaning 101: Preparing Raw Data for Analysis', 'Video', 2, 04),
('Exploratory Data Analysis (EDA) with Python and Pandas', 'Video', 2, 04),
('Writing Clean Code: Best Practices and Patterns', 'Video', 2, 05),
('Introduction to API Development and Integration', 'Video', 3, 05),
('Understanding Financial Statements: Income, Balance Sheet & Cash Flow', 'Video', 2, 06),
('Forecasting & Budgeting: Making Data-Driven Financial Decisions', 'Quiz', 3, 06),
('Introduction to Risk Management and Assessment Techniques', 'Video', 2, 07),
('Mitigating Operational Risks in Business Processes', 'Video', 2, 07);


--Inserting data into payout table
INSERT INTO payout
VALUES(0001, 1325.75, '2020-09-30', 101, 03);

INSERT INTO payout(payment_amount, payment_date, instructor_id, course_id)
VALUES(499.99, '2023-12-22', 101, 03),
(1788.50, '2018-11-02', 102, 02),
(1200.00, '2024-01-21', 102, 02),
(913.20, '2024-03-15', 102, 02),
(1699.85, '2025-03-05', 102, 02),
(745.40, '2018-05-30', 103, 07),
(630.25, '2022-11-06', 103, 06),
(1901.99, '2018-07-02', 103, 07),
(1550.00, '2018-09-15', 103, 07),
(814.33, '2023-03-17', 103, 06),  
(303.10, '2023-04-07', 103, 06),
(800.50, '2023-02-15', 104, 04),
(1677.50, '2024-01-25', 104, 01),
(1478.50, '2025-04-13', 104, 01),
(689.50, '2023-06-04', 104, 04),
(987.50, '2024-02-18', 104, 04),
(892.50, '2023-09-10', 104, 04),
(1089.50, '2025-02-24', 104, 01),
(1125.50, '2025-07-22', 104, 01),
(1215.75, '2022-06-15', 105, 05),
(1999.99, '2018-09-06', 105, 05),
(1388.20, '2023-01-21', 105, 05);


-- Inserting data into enrollment table
INSERT INTO enrollment
VALUES(1, 03, '2023-11-22', 'Completed', 87.5, 4, 
'Great insights into digital campaigns — helped me run my first ad successfully.', '2024-02-24'),

(1, 02, '2018-10-02', 'Completed', 97.5, 5, 
'Loved the emphasis on real-world UI/UX challenges — super engaging!', '2018-01-15'), 

(2, 02, '2024-01-21', 'Active', NULL, NULL, NULL, NULL, NULL), 

(3, 02, '2024-03-15', 'Dropped', NULL, 2,
'Wish there was more content on mobile-first design, but otherwise excellent.', '2024-05-15'),

(4, 02, '2025-03-05', 'Active', NULL, NULL, NULL, NULL),

(5, 07, '2018-05-30', 'Completed', 84.7, 4, 
'Helped me understand both qualitative and quantitative risk — great balance.', '2018-09-20'), 

(5, 06, '2022-11-06', 'Completed', 94.5, 5, 
'Clear explanation of financial ratios and their significance — super useful!', '2023-03-24'), 

(6, 07, '2018-07-02', 'Dropped', NULL, 3, 
'Could benefit from more industry-specific examples, but overall solid content.', '2018-09-30'), 

(7, 07, '2023-03-17', 'Completed', 65.3, 3, 
NULL, '2023-08-07'), 

(8, 06, '2023-09-02', 'Completed', 45.5, NULL, 
NULL, NULL), 

(9, 06, '2023-10-19', 'Completed', 92.1, 5, 
NULL, '2024-03-17'),   

(10, 04, '2023-03-14', 'Dropped', NULL, NULL, NULL, NULL), 

(10, 01, '2025-06-02', 'Active', NULL, NULL, NULL, NULL), 

(11, 01, '2025-08-27', 'Active', NULL, NULL, NULL, NULL), 

(12, 04, '2024-10-09', 'Completed', 98.9, 5, 
'The section on exploratory data analysis completely changed how I look at raw data.', '2025-04-08'), 

(13, 04, '2024-01-25', 'Active', NULL, NULL, NULL, NULL), 

(14, 04, '2023-05-07', 'Dropped', NULL, 3, 
'Could use more visual examples, but the coding walkthroughs were excellent.', '2023-08-14'), 

(14, 01, '2024-09-18', 'Completed', 79.5, 4, 
'Some parts were a bit advanced for beginners, but overall very rewarding.', '2025-03-01'), 

(15, 01, '2025-02-03', 'Active', NULL, NULL, NULL, NULL), 

(16, 05, '2023-08-01', 'Dropped', NULL, 1, 
'Explanations were rushed and lacked depth; I struggled to follow along with the projects.', '2023-11-09'), 

(17, 05, '2018-10-04', 'Completed', 77.3, 5, 
'A must-take for anyone learning version control and clean code practices.', '2019-02-13'), 

(18, 05, '2022-01-30', 'Completed', 64.3, 5, 
'The API development section was practical and easy to follow.', '2022-05-16'), 

(19, 05, '2018-04-15', 'Completed', 86.4, 5, 
'Excellent course for understanding the software development lifecycle.', '2018-08-05'), 

(20, 05, '2023-09-20', 'Dropped', NULL, 2, 
'The course felt outdated — many tools and practices mentioned are no longer commonly used.', '2023-11-28');

