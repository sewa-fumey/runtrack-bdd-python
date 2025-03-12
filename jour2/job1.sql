import mysql.connector 

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Bachelor24&",
    database="laplateforme"
)

mycursor = conn.cursor() 
mycursor.execute("select * from etudiant")
for i in mycursor: 
    print(i)

if conn.is_connected():
    print("Connexion réussie à MySQL !")

conn.close()
