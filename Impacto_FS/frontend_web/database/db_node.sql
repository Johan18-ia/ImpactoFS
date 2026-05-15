-- ============================================
-- CREAR BASE DE DATOS
-- ============================================
DROP DATABASE IF EXISTS db_node;
CREATE SCHEMA db_node DEFAULT CHARACTER SET utf8 ;

USE db_node; 

-- ============================================
-- CREAR TABLA SER USUARIOS
-- ============================================
CREATE TABLE users ( 
id INT AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(100) NOT NULL,
lastname VARCHAR(100) NOT NULL,
email VARCHAR(150) NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL,
phone VARCHAR(20),
image VARCHAR(255),
role VARCHAR(20),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- ============================================
-- INSERTAR USUARIO
-- ============================================
USE db_node; 

INSERT INTO users VALUES (
null,
"Albeiro",
"Ramos",
"profealbeiro2020@gmail.com",
"$2b$10$NR8eRuuAB12JoHe81ZYnG.i2/5k/D5TKrxc7Pk74W4rgzADdABM9G",
"3103103101",
"profile",
"admin",
null,
null
);

-- ============================================
-- CREAR TABLA DE PRODUCTOS
-- ============================================
USE db_node; 

CREATE TABLE productos(
    id BIGINT PRIMARY KEY AUTO_INCREMENT, -- BIGINT porque pueden existir muchos productos
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT, -- La descripción no es obligatoria
    precio DOUBLE NOT NULL,
    stock INT NOT NULL, -- Cantidad disponible de productos
    imagen VARCHAR(255), -- URL o nombre de la imagen del producto
    categoria VARCHAR(100),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
);
-- ============================================
-- INSERTAR PRODUCTO
-- ============================================
INSERT INTO productos(
    nombre,
    descripcion,
    precio,
    stock,
    imagen,
    categoria
)
VALUES(
    'Nike Air Max',
    'Zapatos deportivos',
    450000,
    20,
    'https://imagen.com/nike.jpg',
    'Calzado'
);