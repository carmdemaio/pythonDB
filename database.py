# create a database named "mydatabase"

import mysql.connector

while True: 

  mydb = mysql.connector.connect(
    host="localhost",
    user="admin",
    passwd="password"
  )

  mycursor = mydb.cursor()

  mycursor.execute("CREATE DATABASE mydatabase")
