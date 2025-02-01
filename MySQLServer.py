import mysql.connector

mydb = mysql.connector.connect(host = "hostname ", passwd = "", username = "root")
mydb.cursor().execute("CREATE DATABASE IF NOT EXISTS alx_book_store")