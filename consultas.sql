-- 1. Crear una tabla con mascotas vacunadas
CREATE TABLE MascotasVacunadas AS
SELECT idMascotas, nombre, vacuna, Duenos_Cedula
FROM Mascotas
WHERE vacuna = 1;

-- 2. Alias en campos
SELECT
  nombre      AS NombreMascota,
  Especies_idEspecies        AS Especies
FROM Mascotas;

-- 3. Alias en subconsulta
SELECT
  m.nombre,
  (SELECT e.nombre
   FROM Especies e
   WHERE e.idEspecies = m.Especies_idEspecies) AS EspecieNombre
FROM Mascotas m;

-- 4. COUNT con alias
SELECT
  COUNT(*) AS TotalDuenos
FROM Duenos;

-- 5. AVG con alias
SELECT
  AVG(precioBase) AS PromedioPrecioServicios
FROM Servicios;

-- 6. MAX y MIN
SELECT
  MAX(precioBase) AS PrecioMaximo,
  MIN(precioBase) AS PrecioMinimo
FROM Servicios;

-- 7. CONCAT
SELECT
  CONCAT(nombre, ' - ', telefono) AS NombreTelefono
FROM Duenos;

-- 8. UPPER y LOWER
SELECT
  UPPER(nombre) AS NombreMayusculas,
  LOWER(nombre) AS NombreMinusculas
FROM mascotas;

-- 9. LENGTH, SUBSTRING, TRIM
SELECT
  nombre,
  LENGTH(nombre)           AS LargoNombre,
  SUBSTRING(nombre, 1, 3)  AS Iniciales,
  TRIM(telefono)          AS Telefono
FROM Duenos;

-- 10. ROUND sobre precios
SELECT
  nombre,
  ROUND(precioBase, -3) AS PrecioRedondeado
FROM Servicios;

-- 11. IF en campos
SELECT
  nombre,
  IF(vacuna = 1, 'Vacunado', 'No vacunado') AS EstadoVacunacion
FROM Mascotas;

-- 12. JOIN entre mascotas y dueños
SELECT
  m.nombre AS Mascota,
  d.nombre AS Dueno
FROM Mascotas m
JOIN Duenos d ON m.Duenos_Cedula = d.Cedula;

-- 13. GROUP BY y COUNT
SELECT
  Especies_idEspecies     AS IdEspecie,
  COUNT(*)                AS TotalPorEspecie
FROM Mascotas
GROUP BY Especies_idEspecies;

-- 14. Mascotas por tratamiento aplicado
SELECT
  t.nombre AS Tratamiento,
  COUNT(*)  AS TotalAplicado
FROM Visitas v
JOIN Tratamientos t ON v.Tratamientos_idTratamientos = t.idTratamientos
GROUP BY t.nombre;

-- 15. Mascotas y fecha de última visita
SELECT
  m.nombre AS Mascota,
  MAX(v.Fecha) AS UltimaVisita
FROM Mascotas m
JOIN Visitas v ON m.idMascotas = v.Mascotas_idMascotas
GROUP BY m.nombre;

