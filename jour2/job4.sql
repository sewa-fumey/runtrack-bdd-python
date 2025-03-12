"""
import mysql.connector 

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="************",
    database="laplateforme"
)

mycursor = conn.cursor() 
mycursor.execute("SELECT nom, capacite FROM salle")


for i in mycursor: 
    print(i)



conn.close()
"""

import mysql.connector 

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="************",
    database="laplateforme"
)

mycursor = conn.cursor() 
mycursor.execute("SELECT nom, capacite FROM salle")

resultats = mycursor.fetchall()

print(resultats)

conn.close()
