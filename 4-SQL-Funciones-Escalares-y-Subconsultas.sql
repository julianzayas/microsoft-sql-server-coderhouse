-- FUNCIONES ESCALARES Y SUBCONSULTAS.

-- De Caracteres:
-- LEFT
SELECT LEFT('SQL Tutorial', 4) AS ExtractString;
-- RIGHT
SELECT RIGHT('SQL Tutorial', 8) AS ExtractString2;
-- REPLACE
SELECT REPLACE('SQL Tutorial', 'T', 'M');
-- TRIM
SELECT TRIM ('     SQL Tutorial!     ') AS TrimmedString;
-- TRIM con espacios intermedios
SELECT TRIM ('     SQL       Tutorial!     ') AS TrimmedString2;

-- De Fechas Y Tiempo:
-- Fecha Actual
SELECT CURRENT_TIMESTAMP;
-- YEAR
SELECT YEAR('2025/02/17') AS YEAR
-- DATEPART (Devuelve Integer)
SELECT DATEPART(year, '2025/02/17') AS DatePartInt;
SELECT DATEPART(hour, '2017/08/25 08:36') AS DatePartInt2;
-- DATENAME (Devuelve String)
SELECT DATENAME(year, '2025/02/17') AS DatePartString;
-- DATEADD (Desplazar en el tiempo)
-- Formato: AÑO-MES-DIA --> No funciona --> bug w3schools
SELECT DATEADD(year, 1, '2025/08/25') AS DateAdd;
-- Formato: AÑO-DIA-MES --> Funciona
SELECT DATEADD(year, 1, '2025/25/08') AS DateAdd;
-- Desplazamiento negativo
SELECT DATEADD(day, -31, '2025/25/08') AS DateAdd;
-- Agregar una hora a la hora actual
SELECT DATEADD(hour, 1, CURRENT_TIMESTAMP) AS DateAdd;
-- DATEDIFF
SELECT DATEDIFF(year, '2019/02/19', '2025/02/19') AS DateDiff;
-- GETDATE
SELECT DATEDIFF(year, '2019/02/25', GETDATE()) AS DateDiff;