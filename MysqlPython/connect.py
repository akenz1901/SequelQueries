#Connect to mysql database using python and retrireve some data
import mysql.connector
from mysql.connector import Error

#define the connector function
def connector_fetch():
    ''' function to connect and fetch rows in a database'''

    #create a variable for the connector
    conn = None

    try:
        conn = mysql.connector.connect(host = 'localhost', database = 'cape_codd', user = 'root', password = 'olashile1' )
        print('Connecting to database server')
        if conn.is_connected:
            print('Conected to database server')
            
            #sql_select Query
            sql_select_query = "select * from buyer"
            cursor = conn.cursor()
            cursor.execute(sql_select_query)
            records = cursor.fetchall()
            print('Total numner of rows in buyer is: ', cursor.rowcount)

            #Display the output data
            print("\nPrinting each buyer recond")
            for row in records:
                print("Buyer Name:", row[0])
                print("Department:", row[1])
                print("Position:", row[2])
                print("Supervisor:", row[3], '\n')

    except Error as e:
        print('Not connecting due to:', e)

    finally:   
        if conn is not None and conn.is_connected():
            conn.close()
            print('Database shutdown')   

# connector_fetch()

def connect_fetch_new_db():

    conn = None

    try:
        conn = mysql.connector.connect(host = 'localhost', database = 'demo', user = 'root', password = 'olashile1' )
        print('Connecting to database server')
        if conn.is_connected:
            print('Conected to database server')
            
            #sql_select Query
            sql_select_query = "select * from human"
            cursor = conn.cursor()
            cursor.execute(sql_select_query)
            human = cursor.fetchall()
            print('Total numner of rows in Human is: ', cursor.rowcount)

            #Display the output data
            print("\nPrinting each buyer recond")
            for row in human:
                print(row)
                # print("Buyer Name:", row[0])
                # print("Department:", row[1])
                # print("Position:", row[2])
                # print("Supervisor:", row[3], '\n')

    except Error as e:
        print('Not connecting due to:', e)

    finally:   
        if conn is not None and conn.is_connected():
            conn.close()
            print('Database shutdown') 


connect_fetch_new_db()