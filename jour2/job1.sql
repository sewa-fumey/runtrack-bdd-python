import mysql.connector 

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="************",
    database="laplateforme"
)

mycursor = conn.cursor() 
mycursor.execute("select * from salle")
for i in mycursor: 
    print(i)

if conn.is_connected():
    print("Connexion réussie à MySQL !")

conn.close()
