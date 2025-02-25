USE demo42265;

SELECT * FROM Profesores;

UPDATE Profesores SET Nombre = 'Gabriel'
WHERE ID_Profesor = 502;

SELECT * FROM Profesores;

UPDATE Profesores SET Apellido = 'Zayas'
WHERE Apellido = 'Garcia';

SELECT * FROM Profesores;

DELETE FROM Profesores WHERE ID_Profesor = 93;

SELECT * FROM Profesores;

SELECT Apellido, ID_Profesor
FROM Profesores;

SELECT *
FROM Profesores
WHERE Apellido = 'Zayas';
