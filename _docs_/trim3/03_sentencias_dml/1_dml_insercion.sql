 /* ************************************************************************************* */
 /* ---------------------------------------- DML ---------------------------------------- */
 /* ---------------------------- DATA MANIPULATION LANGUAGE ----------------------------- */
 /* ------------------------- LENGUAJE DE MANIPULACIÓN DE DATOS ------------------------- */
 /* ----------------------------------- NEXUS SPORTS ----------------------------------- */
 /* ************************************************************************************* */

USE Sportys;

-- =====================================================
-- 1. TABLA ROL
-- =====================================================

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE ROL;

INSERT INTO ROL (idROL, NOM_ROL) VALUES
(1, 'Administrador'),
(2, 'Entrenador'),
(3, 'Estudiante'),
(4, 'Escuela');

-- =====================================================
-- 2. TABLA USUARIO
-- =====================================================

TRUNCATE TABLE USUARIO;

INSERT INTO USUARIO
(idUSUARIO, NOMBRE, APELLIDO, CORREO, CONTRASENA, TELEFONO)
VALUES
(1, 'Carlos', 'Admin', 'admin@sportys.com', SHA1('password'), '3001111111'),
(2, 'Miguel', 'Lopez', 'entrenador1@sportys.com', SHA1('password'), '3002222222'),
(3, 'Laura', 'Martinez', 'estudiante1@sportys.com', SHA1('password'), '3003333333'),
(4, 'Sofia', 'Ramirez', 'escuela1@sportys.com', SHA1('password'), '3004444444'),
(5, 'Andres', 'Torres', 'entrenador2@sportys.com', SHA1('password'), '3005555555'),
(6, 'Valentina', 'Diaz', 'estudiante2@sportys.com', SHA1('password'), '3006666666'),
(7, 'Juan', 'Perez', 'estudiante3@sportys.com', SHA1('password'), '3007777777'),
(8, 'Camila', 'Rojas', 'escuela2@sportys.com', SHA1('password'), '3008888888');

-- =====================================================
-- 3. TABLA USUARIO_ROL
-- =====================================================

TRUNCATE TABLE USUARIO_ROL;

INSERT INTO USUARIO_ROL
(idUSUARIO_ROL, idUSUARIO, idROL)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 2),
(6, 6, 3),
(7, 7, 3),
(8, 8, 4);

-- =====================================================
-- 4. TABLA ESCUELA
-- =====================================================

TRUNCATE TABLE ESCUELA;

INSERT INTO ESCUELA
(idESCUELA, NOMBRE_ESCUELA, DIRECCION, TELEFONO, CORREO, idUSUARIO)
VALUES
(1, 'Escuela Futbol Elite', 'Calle 10 #20-30', '6011111111', 'elite@sportys.com', 4),
(2, 'Escuela Talentos FC', 'Carrera 50 #12-90', '6012222222', 'talentos@sportys.com', 8);

-- =====================================================
-- 5. TABLA EQUIPO
-- =====================================================

TRUNCATE TABLE EQUIPO;

INSERT INTO EQUIPO
(idEQUIPO, NOMBRE_EQUIPO, LOGO, idESCUELA)
VALUES
(1, 'Tigres FC', 'tigres.png', 1),
(2, 'Leones FC', 'leones.png', 1),
(3, 'Halcones FC', 'halcones.png', 2),
(4, 'Panteras FC', 'panteras.png', 2);

-- =====================================================
-- 6. TABLA CATEGORIA
-- =====================================================

TRUNCATE TABLE CATEGORIA;

INSERT INTO CATEGORIA
(idCATEGORIA, NOMBRE_CATEGORIA, EDAD_MINIMA, EDAD_MAXIMA)
VALUES
(1, 'Sub-10', 8, 10),
(2, 'Sub-12', 11, 12),
(3, 'Sub-15', 13, 15),
(4, 'Sub-17', 16, 17);

-- =====================================================
-- 7. TABLA ENTRENADOR
-- =====================================================

TRUNCATE TABLE ENTRENADOR;

INSERT INTO ENTRENADOR
(idENTRENADOR, NOMBRE, APELLIDO, DOCUMENTO, TELEFONO, idUSUARIO, idEQUIPO)
VALUES
(1, 'Miguel', 'Lopez', '100100100', '3011111111', 2, 1),
(2, 'Andres', 'Torres', '200200200', '3022222222', 5, 3);

-- =====================================================
-- 8. TABLA ESTUDIANTE
-- =====================================================

TRUNCATE TABLE ESTUDIANTE;

INSERT INTO ESTUDIANTE
(idESTUDIANTE, NOMBRE, APELLIDO, DOCUMENTO, FECHA_NACIMIENTO, idUSUARIO)
VALUES
(1, 'Laura', 'Martinez', '111111111', '2012-05-10', 3),
(2, 'Valentina', 'Diaz', '222222222', '2011-07-15', 6),
(3, 'Juan', 'Perez', '333333333', '2010-09-20', 7);

-- =====================================================
-- 9. TABLA EQUIPO_ESTUDIANTE
-- =====================================================

TRUNCATE TABLE EQUIPO_ESTUDIANTE;

INSERT INTO EQUIPO_ESTUDIANTE
(idEQUIPO_ESTUDIANTE, idEQUIPO, idESTUDIANTE)
VALUES
(1, 1, 1),
(2, 1, 2),
(3, 3, 3);

-- =====================================================
-- 10. TABLA TORNEO
-- =====================================================

TRUNCATE TABLE TORNEO;

INSERT INTO TORNEO
(idTORNEO, NOMBRE_TORNEO, FECHA_INICIO, FECHA_FIN, ESTADO)
VALUES
(1, 'Copa Sportys 2026', '2026-06-01', '2026-06-20', 'ACTIVO'),
(2, 'Liga Juvenil 2026', '2026-07-01', '2026-07-30', 'ACTIVO');

-- =====================================================
-- 11. TABLA TORNEO_EQUIPO
-- =====================================================

TRUNCATE TABLE TORNEO_EQUIPO;

INSERT INTO TORNEO_EQUIPO
(idTORNEO_EQUIPO, idTORNEO, idEQUIPO, GRUPO_LETRA,
 PUNTOS, PARTIDOS_JUGADOS, PARTIDOS_GANADOS,
 PARTIDOS_EMPATADOS, PARTIDOS_PERDIDOS)
VALUES
(1, 1, 1, 'A', 6, 2, 2, 0, 0),
(2, 1, 2, 'A', 3, 2, 1, 0, 1),
(3, 1, 3, 'B', 4, 2, 1, 1, 0),
(4, 1, 4, 'B', 1, 2, 0, 1, 1);

-- =====================================================
-- 12. TABLA HORARIO
-- =====================================================

TRUNCATE TABLE HORARIO;

INSERT INTO HORARIO
(idHORARIO, DIA, HORA, LUGAR, idEQUIPO)
VALUES
(1, 'Lunes', '15:00:00', 'Cancha Norte', 1),
(2, 'Martes', '16:00:00', 'Cancha Sur', 2),
(3, 'Miercoles', '14:00:00', 'Cancha Central', 3);

-- =====================================================
-- 13. TABLA NOTIFICACION
-- =====================================================

TRUNCATE TABLE NOTIFICACION;

INSERT INTO NOTIFICACION
(idNOTIFICACION, FECHA, HORA, LUGAR, MENSAJE, idTORNEO)
VALUES
(1, '2026-06-01', '08:00:00', 'Estadio Central',
'Inicio oficial de la Copa Sportys', 1),

(2, '2026-06-05', '10:00:00', 'Cancha Norte',
'Partido Tigres FC vs Leones FC', 1),

(3, '2026-07-01', '09:00:00', 'Complejo Deportivo',
'Inicio de la Liga Juvenil', 2);

-- =====================================================
-- 14. TABLA CATALOGO
-- =====================================================

TRUNCATE TABLE CATALOGO;

INSERT INTO CATALOGO
(idPRODUCTO, NOMBRE_PRODUCTO, DESCRIPCION,
 PRECIO, IMAGEN_URL, ESTADO, idESTUDIANTE)
VALUES
(1, 'Guayos Nike', 'Guayos profesionales para futbol',
250000, 'guayos.png', 'DISPONIBLE', 1),

(2, 'Balon Adidas', 'Balon oficial tamaño 5',
120000, 'balon.png', 'DISPONIBLE', 2),

(3, 'Canilleras', 'Canilleras deportivas resistentes',
50000, 'canilleras.png', 'AGOTADO', 3);

-- =====================================================
-- 15. TABLA CATEGORIA_PRODUCTO
-- =====================================================

TRUNCATE TABLE CATEGORIA_PRODUCTO;

INSERT INTO CATEGORIA_PRODUCTO
(idCATEGORIA_PRODUCTO, NOMBRE_CATEGORIA, idPRODUCTO)
VALUES
(1, 'Implementos Deportivos', 1),
(2, 'Balones', 2),
(3, 'Proteccion Deportiva', 3);

SET FOREIGN_KEY_CHECKS = 1;

-- =====================================================
-- FIN DE INSERCIONES
-- =====================================================