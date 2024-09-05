from flask import Flask, request, render_template

import pyodbc  

url =input('file:///D:/Users/COBA/Desktop/Advanace%20Databse/Intership%20CPP%20-Admin.html#');
app = Flask(__name__)



@app.route('/')
def form():
    return render_template('Intership CPP-Admin .html')

@app.route('/submit', methods=['POST'])
def submit():
    company_name = request.form['companyName']
    position = request.form['position']
    number_of_seats = request.form['numberOfSeats']
    major_dropdown = request.form['majorDropdown']
    start_date = request.form['startDate']
    end_date = request.form['endDate']

    # Connect to SQL Server
    conn_str = 'Driver={ODBC Driver 17 for SQL Server};Server=MF086PC16\SQLEXPRESS;Database=Internship;Trusted_Connection=yes;'
    conn = pyodbc.connect(conn_str)
    cursor = conn.cursor()

    # Insert data into the database
    cursor.execute("""
        INSERT INTO Internship (CompanyName, Position, NumberOfSeats, Major, StartDate, EndDate)
        VALUES (?, ?, ?, ?, ?, ?)
    """, company_name, position, number_of_seats, major_dropdown, start_date, end_date)
    conn.commit()

    return 'Form submitted and data saved to database!'

if __name__ == '__main__':
    app.run(debug=True)
