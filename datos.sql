-- Dueños
INSERT INTO Duenos (Cedula, nombre, telefono, direccion) VALUES
(101, 'Carlos Gómez', '3011234567', 'Calle 12 #4-56'),
(102, 'Ana Martínez', '3027654321', 'Carrera 9 #34-78'),
(103, 'Luis Herrera', '3109876543', 'Avenida 7 #23-10'),
(104, 'Marta Ríos', '3001239876', 'Diagonal 8 #56-12'),
(105, 'Jorge Peña', '3124567890', 'Transversal 10 #45-23');

-- Especies
INSERT INTO Especies (idEspecies, nombre) VALUES
(1, 'Perro'),
(2, 'Gato');

-- Raza
INSERT INTO Raza (idRaza, nombre) VALUES
(1, 'Labrador'),
(2, 'Golden Retriever'),
(3, 'Siamés'),
(4, 'Persa'),
(5, 'Beagle');

-- Servicios
INSERT INTO Servicios (idServicios, nombre, descripcion, precioBase) VALUES
(1, 'Consulta general', 'Evaluación médica general', 50000),
(2, 'Vacunación', 'Aplicación de vacunas para mascotas', 30000),
(3, 'Desparasitación', 'Tratamiento antiparasitario', 25000),
(4, 'Cirugía menor', 'Procedimientos quirúrgicos menores', 150000),
(5, 'Baño y peluquería', 'Servicios de higiene y estética', 40000);

-- Tratamientos
INSERT INTO Tratamientos (idTratamientos, nombre, observaciones) VALUES
(1, 'Antibióticos', 'Administrar por 7 días'),
(2, 'Analgésicos', 'Aplicar cada 8 horas'),
(3, 'Suplementos', 'Vitaminas una vez al día'),
(4, 'Curación de heridas', 'Cambio de vendaje cada 2 días'),
(5, 'Desparasitación oral', 'Aplicar cada 3 meses');

-- Mascotas
INSERT INTO Mascotas (idMascotas, Duenos_Cedula, Raza_idRaza, Especies_idEspecies, nombre, fechaDeNacimiento, sexo, vacuna) VALUES
(1, 101, 1, 1, 'Max', '2018-05-10', 'Macho', 1),
(2, 102, 2, 1, 'Luna', '2020-03-15', 'Hembra', 1),
(3, 103, 3, 2, 'Michi', '2019-07-22', 'Macho', 0),
(4, 104, 4, 2, 'Pelusa', '2021-01-12', 'Hembra', 1),
(5, 105, 1, 1, 'Rocky', '2022-11-30', 'Macho', 0),
(6, 101, 2, 1, 'Toby', '2020-09-14', 'Macho', 1),
(7, 102, 3, 2, 'Nieve', '2021-06-09', 'Hembra', 0),
(8, 103, 4, 2, 'Kira', '2023-02-18', 'Hembra', 1),
(9, 104, 5, 1, 'Bruno', '2017-08-03', 'Macho', 1),
(10, 105, 5, 1, 'Coco', '2021-12-05', 'Macho', 1);

-- Visitas
INSERT INTO Visitas (idVisitas, Mascotas_idMascotas, Servicios_idServicios, Tratamientos_idTratamientos, Fecha) VALUES
(1, 1, 1, 1, '2023-01-10'),
(2, 2, 2, 5, '2023-02-15'),
(3, 3, 3, 2, '2023-03-20'),
(4, 4, 4, 4, '2023-04-25'),
(5, 5, 1, 3, '2023-05-05'),
(6, 6, 2, 5, '2023-06-10'),
(7, 7, 5, 3, '2023-07-14'),
(8, 8, 1, 2, '2023-08-18'),
(9, 9, 4, 1, '2023-09-22'),
(10, 10, 3, 4, '2023-10-30');

