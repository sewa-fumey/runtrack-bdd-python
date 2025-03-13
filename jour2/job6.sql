"""
SELECT SUM(capacite) FROM salle;

"""

import mysql.connector 

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="************",
    database="laplateforme"
)

mycursor = conn.cursor() 
mycursor.execute("SELECT SUM(capacite) FROM salle")

resultat = mycursor.fetchone()[0]

print(f"La capacité totale des salles est de {resultat}.")

conn.close()