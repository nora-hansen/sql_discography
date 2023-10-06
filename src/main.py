import mysql.connector

import songs

print("Hello, World!")

# Testing connection with database!
# I know these are bad practice, but the db isn't
#   available elsewhere so I'll handle it soon
mydb = mysql.connector.connect(
    host="localhost",
    username="thenure",
    password="noriakinure"
)


print(mydb)
songs.helloWorld()  # I just had to test multiple python files lol

mycursor = mydb.cursor()

