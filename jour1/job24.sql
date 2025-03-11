 select * from etudiant where age = (select max(age) from etudiant);

 SELECT AVG(age) AS moyenne_age FROM etudiant;