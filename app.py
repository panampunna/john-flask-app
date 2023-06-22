import psycopg2
from flask import Flask, render_template, request

# Database connection details
host = 'localhost'
port = '5432'
dbname = 'john_database'
user = 'psql_user'
password = 'psqlpw'

# Connect to the PostgreSQL database
try:
    connection = psycopg2.connect(
        host=host,
        port=port,
        dbname=dbname,
        user=user,
        password=password
    )
    cursor = connection.cursor()
    print("Connected to the PostgreSQL database!")
except (Exception, psycopg2.Error) as error:
    print("Error connecting to the PostgreSQL database:", error)

# Create a Flask application
app = Flask(__name__)

# Route to display the form
@app.route('/')
def index():
    return render_template('index.html')
###############################################################
# Route to handle form submission
@app.route('/insert_data', methods=['POST'])
def insert_data():
    # Retrieve form data
    name = request.form['name']
    age = request.form['age']
    address = request.form['address']
    location = request.form['location']

    # Prepare and execute the INSERT statement
    insert_query = "INSERT INTO schemasvjp.users_table (name, age, address, location) VALUES (%s, %s, %s, %s)"
    values = (name, age, address, location)

    try:
        cursor = connection.cursor()  # Define the cursor here
        cursor.execute(insert_query, values)
        connection.commit()
        print("Data inserted successfully!")
    except (Exception, psycopg2.Error) as error:
        print("Failed to insert data:", error)

    return "Data inserted successfully! http://127.0.0.1:5000/   <a href=''>http://127.0.0.1:5000</a>"

################################################

if __name__ == '__main__':
    app.run()

