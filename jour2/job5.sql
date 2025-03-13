"""
SELECT SUM(superficie) FROM etage;

""" 


import mysql.connector 

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="************",
    database="laplateforme"
)

mycursor = conn.cursor() 
mycursor.execute("SELECT SUM(superficie) FROM etage")

resultat = mycursor.fetchone()[0]

print(f"La superficie de La Plateforme est de {resultat} m²")

conn.close()