from logging import error
from typing import Collection
import mysql.connector
from mysql.connector import Error, connect
from mysql.connector import connection

class Operation(Exception):

    connector = None

    def insert():

        try:
            connector = mysql.connector.connect(host = 'localhost', database = 'movie_categories', user = 'root', password = 'olashile1')
            print("Connecting to database server.....")
            if connector.is_connected:
                print("Connected to database server")
                db_cursor = connector.cursor()
            
            table = ""
            val = []
            
            display = "Enter 1 to insert in movies table\n" + "Enter 2 to insert in reviewers table\n" +"Enter 3 to insert in rating table"
        
            print(display)
            user_request = int(input("-->: "))
            if user_request == 1:
                table = "insert into movies (title, release_year, genre, collection_in_mov) Values (%s, %s, %s, %s)"
                title = str(input("Enter title:"))
                release_year = int(input("Enter Release Year:"))
                genre = str(input("Enter genre:"))
                collection_in_mov = float(input("Enter Collection:"))
                val.append((title, release_year, genre, collection_in_mov))
                db_cursor.executemany(table, val)

            elif user_request == 2:
                table = "insert into reviewers (first_name, last_name) Values (%s, %s)"
                first_name = str(input("Enter first name:"))
                last_name = str(input("Enter last name:"))
                val.append((first_name, last_name))
                db_cursor.executemany(table, val)

            elif user_request == 3:
                table = "insert into rating (idmovies, idreviewers, rating) Values (%s, %s, %s)"
                idmovies = int((input("Enter Movie Id: ")))
                idreviewers = int((input("Enter Reviewer Id: ")))
                rating = float((input("Enter Rating: ")))
                val.append((idmovies, idreviewers, rating))
                db_cursor.executemany(table, val)
            elif user_request != isinstance:
                raise ValueError("Invalid Input")
                
            connector.commit()

            print(db_cursor.rowcount, 'rows was inserted')

            db_cursor.close
        except Error as exception:
            print("Sorry connection Failed")
            print(exception.msg)
        
        finally:
            if connector is not None and connector.is_connected:
                connector.close
                print('Diconnected from the database')


cn = Operation
cn.insert()