import mysql.connector
from mysql.connector import Error

def connect_insert():
    '''function to connect and insert a row in a database'''

    #create a connection variable
    conn = None
    try:
        conn = mysql.connector.connect(host = 'localhost', database = 'demo', user = 'root', password = 'olashile1')
        print('Connected to the database')
        db_cursor = conn.cursor()

        #create a variable to contain the sql query to be executed
        sql = "insert into Human (humanId, name, color, sex, bloodgroup) Values (%s, %s, %s, %s, %s)"
        val = []

        #create a list variable to contain all the values we want to into the human table

        count = int(input("Enter times input of data:"))
    
        for i in range (count):
            humanId = int(input("Enter Your ID:"))
            name = str(input("Enter a Name:"))
            color = str(input("Enter Color:"))
            sex = str(input("Enter Sex:"))
            bloodgroup = str(input("Enter BloodGroup:"))
            val.append((humanId, name, color, sex, bloodgroup))
           
        #execute the query using the executmany function
        db_cursor.executemany(sql, val)

        #commit to the database
        conn.commit()

        #print a success message
        print(db_cursor.rowcount, 'rows was inserted')

        #close the cursor
        db_cursor.close

    except Error as e:
        print('Connection failed due to the following ', e)

    finally:
        if conn is not None and conn.is_connected:
            conn.close
            print('Diconnected from the database')              

connect_insert()