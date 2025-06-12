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
INSERT INTO instructor(name, expertise)
VALUES('Clara Jensen', 'Design and Marketing'),
('Milo Torres', 'Design'),
('Aisha Khan', 'Finance Analysis and Risk Analysis'),
('Theo Nakamura', 'Data Science and Data Analysis'),
('Luna Petrova', 'Software Engineering');



-- Inserting data into course table
INSERT INTO course(title, description, category, duration_in_hours, level, instructor_id)
VALUES('Mastering the World of Data Science', 'Dive into the core of predictive modeling, machine learning, 
and big data analytics. This path is perfect for those who want to turn raw data into actionable insights 
and drive decision-making with intelligent algorithms.', 'Data Science', 6, 'Intermediate', 164),

('Design Thinking & Creative Innovation', 'Explore the world of user-centered design, visual storytelling, 
and creative problem-solving. Learn how to design stunning digital experiences, from UX/UI fundamentals to advanced tools 
like Figma and Adobe XD.', 'Design', 3, 'Advanced', 162),

('Modern Marketing in the Digital Age', 'Gain expertise in SEO, content strategy, social media campaigns, 
and performance marketing. Discover how data, creativity, and analytics come together to build impactful brand narratives 
and grow audiences.', 'Marketing', 3, 'Advanced', 161),

('Data Analysis: From Numbers to Knowledge', 'Learn to collect, clean, and analyze data using tools like SQL, Excel, 
and Python. This track focuses on turning complex datasets into simple visual reports 
and actionable business insights.', 'Data Analysis', 2, 'Intermediate', 164),

('Software Engineering Essentials', 'Develop robust applications and systems using industry-standard 
languages and frameworks. From front-end development to backend architecture, this journey equips you with the skills 
to create scalable software solutions.', 'Software Engineering', 4, 'Advanced', 165),

('Finance Analysis for Strategic Decisions', 'Master the art of interpreting financial statements, forecasting trends, 
and supporting business decisions with solid financial modeling. Ideal for aspiring analysts, consultants, 
and business strategists.', 'Finance Analysis', 3, 'Advanced', 163),

('Risk Analysis: Anticipating/Managing Uncertainty', 'Learn how to identify, assess, and mitigate financial 
and operational risks. This path trains you to build models, run simulations, and apply frameworks that protect organizations 
from potential threats.', 'Risk Analysis', 3, 'Beginner', 163);


-- Inserting data into subscription table
INSERT INTO subscription(start_date, end_date, payment_amount, subscription_status, student_id)
VALUES('2022-03-14', '2023-08-21', 347.89, 'Active', 300),
('2020-11-02', '2024-06-07', 1550.45, 'Active', 301),
('2021-12-19', '2025-01-25', 802.30, 'Inactive', 302),
('2019-09-30', '2023-04-12', 1944.99, 'Active', 303),
('2020-07-08', '2022-02-27', 499.00, 'Cancelled', 304),
('2021-10-03', '2024-03-18', 1762.25, 'Active', 305),
('2018-05-11', '2025-08-15', 620.75, 'Active', 306),
('2020-04-04', '2024-08-05', 899.90, 'Cancelled', 307),
('2020-10-11', '2022-09-17', 1403.33, 'Active', 308),
('2018-05-19', '2019-12-03', 375.10, 'Cancelled', 309),
('2022-03-07', '2025-06-01', 1249.99, 'Inactive', 310),
('2024-02-14', '2025-09-23', 1685.60, 'Active', 311),
('2020-12-22', '2021-02-15', 712.80, 'Active', 312),
('2021-08-09', '2023-07-27', 950.00, 'Cancelled', 313),
('2023-04-02', '2025-06-16', 1833.25, 'Inactive', 314),
('2022-11-30', '2024-01-06', 1333.99, 'Inactive', 315),
('2019-07-14', '2021-10-28', 310.50, 'Active', 316),
('2020-06-25', '2023-12-01', 1988.80, 'Active', 317),
('2021-04-05', '2024-09-10', 675.45, 'Cancelled', 318),
('2022-01-29', '2023-05-20', 1599.99, 'Inactive', 319);


-- Inserting data into lesson table
INSERT INTO lesson(title, type, estimated_duration, course_id)
VALUES('Foundations of Data Science: Tools, Techniques, and Mindset', 'Reading', 2, 215),
('Introduction to Machine Learning with Real-World Data', 'Video', 3, 215),
('Building Predictive Models: From Regression to Random Forests', 'Quiz', 1, 215),
('Principles of Visual Design: Balance, Contrast, and Hierarchy', 'Video', 1, 216),
('User Experience (UX) Fundamentals: Designing with Empathy', 'Video', 2, 216),
('Digital Marketing Strategies: From Awareness to Conversion', 'Reading', 1, 217),
('Social Media Campaigns: Planning, Execution, and Analytics', 'Video', 2, 217),
('Data Cleaning 101: Preparing Raw Data for Analysis', 'Video', 2, 218),
('Exploratory Data Analysis (EDA) with Python and Pandas', 'Video', 2, 218),
('Writing Clean Code: Best Practices and Patterns', 'Video', 2, 219),
('Introduction to API Development and Integration', 'Video', 3, 219),
('Understanding Financial Statements: Income, Balance Sheet & Cash Flow', 'Video', 2, 220),
('Forecasting & Budgeting: Making Data-Driven Financial Decisions', 'Quiz', 3, 220),
('Introduction to Risk Management and Assessment Techniques', 'Video', 2, 221),
('Mitigating Operational Risks in Business Processes', 'Video', 2, 221);


--Inserting data into payout table
INSERT INTO payout(payment_amount, payment_date, instructor_id, course_id)
VALUES( 1325.75, '2020-09-30', 161, 217),
(499.99, '2023-12-22', 161, 217),
(1788.50, '2018-11-02', 162, 216),
(1200.00, '2024-01-21', 162, 216),
(913.20, '2024-03-15', 162, 216),
(1699.85, '2025-03-05', 162, 216),
(745.40, '2018-05-30', 163, 221),
(630.25, '2022-11-06', 163, 220),
(1901.99, '2018-07-02', 163, 221),
(1550.00, '2018-09-15', 163, 221),
(814.33, '2023-03-17', 163, 220),  
(303.10, '2023-04-07', 163, 220),
(800.50, '2023-02-15', 164, 218),
(1677.50, '2024-01-25', 164, 215),
(1478.50, '2025-04-13', 164, 215),
(689.50, '2023-06-04', 164, 218),
(987.50, '2024-02-18', 164, 218),
(892.50, '2023-09-10', 164, 218),
(1089.50, '2025-02-24', 164, 215),
(1125.50, '2025-07-22', 164, 215),
(1215.75, '2022-06-15', 165, 219),
(1999.99, '2018-09-06', 165, 219),
(1388.20, '2023-01-21', 165, 219);


-- Inserting data into enrollment table
INSERT INTO enrollment
VALUES(300, 217, '2023-11-22', 'Completed', 87.5, 4, 
'Great insights into digital campaigns — helped me run my first ad successfully.', '2024-02-24'),

(300, 216, '2018-10-02', 'Completed', 97.5, 5, 
'Loved the emphasis on real-world UI/UX challenges — super engaging!', '2018-01-15'), 

(301, 216, '2024-01-21', 'Active', NULL, NULL, NULL, NULL), 

(302, 216, '2024-03-15', 'Dropped', NULL, 2,
'Wish there was more content on mobile-first design, but otherwise excellent.', '2024-05-15'),

(303, 216, '2025-03-05', 'Active', NULL, NULL, NULL, NULL),

(304, 221, '2018-05-30', 'Completed', 84.7, 4, 
'Helped me understand both qualitative and quantitative risk — great balance.', '2018-09-20'), 

(304, 220, '2022-11-06', 'Completed', 94.5, 5, 
'Clear explanation of financial ratios and their significance — super useful!', '2023-03-24'), 

(305, 221, '2018-07-02', 'Dropped', NULL, 3, 
'Could benefit from more industry-specific examples, but overall solid content.', '2018-09-30'), 

(306, 221, '2023-03-17', 'Completed', 65.3, 3, 
NULL, '2023-08-07'), 

(307, 220, '2023-09-02', 'Completed', 45.5, NULL, 
NULL, NULL), 

(308, 220, '2023-10-19', 'Completed', 92.1, 5, 
NULL, '2024-03-17'),   

(309, 218, '2023-03-14', 'Dropped', NULL, NULL, NULL, NULL), 

(309, 215, '2025-06-02', 'Active', NULL, NULL, NULL, NULL), 

(310, 215, '2025-08-27', 'Active', NULL, NULL, NULL, NULL), 

(311, 218, '2024-10-09', 'Completed', 98.9, 5, 
'The section on exploratory data analysis completely changed how I look at raw data.', '2025-04-08'), 

(312, 218, '2024-01-25', 'Active', NULL, NULL, NULL, NULL), 

(313, 218, '2023-05-07', 'Dropped', NULL, 3, 
'Could use more visual examples, but the coding walkthroughs were excellent.', '2023-08-14'), 

(313, 215, '2024-09-18', 'Completed', 79.5, 4, 
'Some parts were a bit advanced for beginners, but overall very rewarding.', '2025-03-01'), 

(314, 215, '2025-02-03', 'Active', NULL, NULL, NULL, NULL), 

(315, 219, '2023-08-01', 'Dropped', NULL, 1, 
'Explanations were rushed and lacked depth; I struggled to follow along with the projects.', '2023-11-09'), 

(316, 219, '2018-10-04', 'Completed', 77.3, 5, 
'A must-take for anyone learning version control and clean code practices.', '2019-02-13'), 

(317, 219, '2022-01-30', 'Completed', 64.3, 5, 
'The API development section was practical and easy to follow.', '2022-05-16'), 

(318, 219, '2018-04-15', 'Completed', 86.4, 5, 
'Excellent course for understanding the software development lifecycle.', '2018-08-05'), 

(319, 219, '2023-09-20', 'Dropped', NULL, 2, 
'The course felt outdated — many tools and practices mentioned are no longer commonly used.', '2023-11-28');

