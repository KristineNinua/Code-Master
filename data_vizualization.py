import pandas as pd
from sqlalchemy import create_engine
import seaborn as sns
import matplotlib.pyplot as plt
from dotenv import load_dotenv
import os

# loads variables from .env
load_dotenv()

# Read from environment
username = os.getenv("DB_USER")
password = os.getenv("DB_PASS")
host = os.getenv("DB_HOST")
port = os.getenv("DB_PORT")
database = os.getenv("DB_NAME")



engine = create_engine(f"mysql+mysqlconnector://{username}:{password}@{host}:{port}/{database}")


# Course Review Ratings
query = """
SELECT review_rating
FROM enrollment
WHERE review_rating IS NOT NULL
"""


df = pd.read_sql(query, engine)

sns.histplot(df['review_rating'], bins=5, kde=False)
plt.title("Course Review Ratings Distribution")
plt.xlabel("Rating")
plt.ylabel("Number of Reviews")

plt.savefig('course_review_ratings.png')
plt.show()
plt.close()


# Top 5 Longest Courses by Duration
query = """
SELECT course.course_id, course.category, course.duration_in_hours AS course_duration
FROM course
ORDER BY course.duration_in_hours DESC
LIMIT 5
"""

df = pd.read_sql(query, engine)

df.plot(x='category', y='course_duration', kind='bar', figsize=(9, 5), title='Top 5 Longest Courses')
plt.xlabel('Course')
plt.ylabel('Duration')
plt.xticks(rotation=360)

plt.savefig('top5_longest_courses.png')
plt.show()
plt.close()


# Total Payout per Instructor
query = """
SELECT i.name AS instructor, SUM(p.payment_amount) AS total_payout
FROM payout p
JOIN instructor i ON p.instructor_id = i.instructor_id
GROUP BY instructor
ORDER BY total_payout DESC
"""

df = pd.read_sql(query, engine)

df.plot(x='instructor', y='total_payout', kind='bar', title='Total Payout per Instructor')
plt.ylabel('Payout Amount ($)')
plt.xticks(rotation=45)
plt.tight_layout()

plt.savefig('total_payout.png')
plt.show()
plt.close()


# Average Final Grade for Each Course Category
query = """
SELECT enrollment.course_id, course.category, ROUND(AVG(enrollment.final_grade), 1) AS average_final_grade
FROM enrollment
JOIN course
ON enrollment.course_id = course.course_id
WHERE enrollment.status =  'Completed'
GROUP BY enrollment.course_id
"""

df = pd.read_sql(query, engine)

df.plot(x='category', y='average_final_grade', figsize=(12, 5), kind='line', marker='o', title='Average Grades for Courses')
plt.xlabel('Course Category')
plt.ylabel('Average Final Grade')
plt.grid(True)

plt.savefig('average_grades.png')
plt.show()
plt.close()


# Total Revenue from Subscriptions per Student
query = """
SELECT student.student_id, student.name, SUM(subscription.payment_amount) AS total_revenue
FROM student
JOIN subscription
ON student.student_id = subscription.student_id
GROUP BY student.student_id
"""

df = pd.read_sql(query, engine)

df.plot(x='name', y='total_revenue', figsize=(12,6), kind='line', marker='o', title='Total Revenue per Student')
plt.xlabel('Student Name')
plt.xticks(ticks=range(len(df)), labels=df.index+1)
plt.ylabel('Total Revenue')
plt.grid(True)
plt.tight_layout()

plt.savefig('total_revenues.png')
plt.show()
plt.close()

plt.savefig('chart.png', dpi=300, bbox_inches='tight', transparent=True)
