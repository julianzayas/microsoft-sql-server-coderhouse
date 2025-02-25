USE demo42265;

SELECT *
FROM Profesores;

SELECT Apellido, Nombre
FROM Profesores;

SELECT Apellido, Nombre
FROM Profesores
WHERE Apellido = 'Zayas'

-- Distinct
SELECT Distinct Apellido
FROM Profesores;

SELECT *
FROM ESTUDIANTES;

-- AS Explicito
SELECT Documento AS DNI
FROM Estudiantes;

-- AS Implicito
SELECT Documento DNI
FROM Estudiantes;

SELECT Documento AS DNI, ID_Estudiante AS ID
FROM Estudiantes;

-- WHERE
-- Operadores
SELECT Apellido, ID_Profesor
FROM Profesores
WHERE Apellido != 'Zayas';

SELECT Apellido, ID_Profesor
FROM Profesores
WHERE ID_Profesor > 76;

SELECT Apellido, ID_Profesor
FROM Profesores
WHERE ID_Profesor >= 76;

-- Operadores Lógicos
-- AND
SELECT Apellido, ID_Profesor
FROM Profesores
WHERE ID_Profesor >= 45 AND ID_Profesor <= 76;

SELECT Apellido, ID_Profesor
FROM Profesores
WHERE ID_Profesor >= 450 AND ID_Profesor <= 76;

-- OR
SELECT Apellido, ID_Profesor
FROM Profesores
WHERE ID_Profesor >= 450 OR ID_Profesor <= 76;

-- LIKE
SELECT Apellido, ID_Profesor
FROM Profesores
WHERE Apellido LIKE 'Z%';

SELECT Apellido, ID_Profesor
FROM Profesores
WHERE Apellido LIKE '%y';

SELECT Apellido, ID_Profesor
FROM Profesores
WHERE Apellido LIKE '%r%';

SELECT Apellido, ID_Profesor
FROM Profesores
WHERE Apellido LIKE '%ya%';

-- IN = Lista
SELECT Apellido, ID_Profesor
FROM Profesores
WHERE ID_Profesor IN (6, 23, 40, 76, 77);

SELECT Apellido, ID_Profesor
FROM Profesores
WHERE ID_Profesor BETWEEN 45 AND 77;

-- TOP / ORDER BY (ASC por defecto)
SELECT TOP(10) ID_Profesor, Apellido
FROM Profesores
ORDER BY DNI;

-- TOP / ORDER BY - DESC
SELECT TOP(10) ID_Profesor, Apellido
FROM Profesores
ORDER BY DNI DESC;

-- ORDER BY
SELECT ID_Profesor, Apellido
FROM Profesores
ORDER BY ID_Profesor;

-- GROUP BY
-- FUNCIÓN COUNT
SELECT Edad, COUNT(ID_Edad) AS Cant_Edades
FROM Edad
GROUP BY Edad;

-- FUNCIÓN COUNT
-- FILTRO HAVING
SELECT Edad, COUNT(ID_Edad) AS Cant_Edades
FROM Edad
GROUP BY Edad
HAVING COUNT(ID_Edad) <= 2;

SELECT Edad, COUNT(ID_Edad) AS Cant_Edades
FROM Edad
GROUP BY Edad
HAVING COUNT(ID_Edad) >= 3;

