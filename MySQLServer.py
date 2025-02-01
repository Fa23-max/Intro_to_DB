import mysql.connector

mydb = mysql.connector.connect(host = "hostname ", passwd = "", username = "root")
try:
    mydb.cursor().execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error:
        print("Database 'alx_book_store' not created successfully!")