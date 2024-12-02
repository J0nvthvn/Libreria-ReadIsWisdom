CREATE TABLE Autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(35) NOT NULL,
    pais_origen VARCHAR(35) NOT NULL
);

CREATE TABLE Sucursal (
    id_sucursal INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(35) NOT NULL,
    telefono VARCHAR(15),
    horario VARCHAR(20)
);

CREATE TABLE Editorial (
    id_editorial INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    direccion VARCHAR(150),
    pais_origen VARCHAR(35)
);

CREATE TABLE Membresia (
    id_membresia INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(20),
    costo_mensual INT,
    beneficios VARCHAR(120)
);

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    id_membresia INT,
    nombre VARCHAR(35) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    comuna VARCHAR(35),
    fecha_registro DATE,
    FOREIGN KEY (id_membresia) REFERENCES Membresia(id_membresia)
);

CREATE TABLE Proveedor (
    id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(35) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    email VARCHAR(255),
    pais VARCHAR(35)
);

CREATE TABLE Libro (
    titulo_libro VARCHAR(100) PRIMARY KEY,
    numero_paginas INT NOT NULL,
    genero VARCHAR(35) NOT NULL,
    categoria VARCHAR(35) NOT NULL,
    año_publicacion INT,
    id_editorial INT,
    FOREIGN KEY (id_editorial) REFERENCES Editorial(id_editorial)
);

CREATE TABLE Escribe (
    id_autor INT,
    titulo_libro VARCHAR(100),
    fecha_escrito DATE,
    PRIMARY KEY (id_autor, titulo_libro),
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor),
    FOREIGN KEY (titulo_libro) REFERENCES Libro(titulo_libro)
);

CREATE TABLE Inventario (
    id_sucursal INT,
    titulo_libro VARCHAR(100),
    stock INT,
    precio INT NOT NULL,
    PRIMARY KEY (id_sucursal, titulo_libro),
    FOREIGN KEY (id_sucursal) REFERENCES Sucursal(id_sucursal),
    FOREIGN KEY (titulo_libro) REFERENCES Libro(titulo_libro)
);

CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    titulo_libro VARCHAR(100),
    fecha_compra DATE,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (titulo_libro) REFERENCES Libro(titulo_libro)
);

CREATE TABLE Devolucion (
    id_cliente INT,
    titulo_libro VARCHAR(100),
    fecha_devolucion DATE,
    motivo VARCHAR(100),
    PRIMARY KEY (id_cliente, titulo_libro),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (titulo_libro) REFERENCES Libro(titulo_libro)
);

CREATE TABLE Suministra (
    id_proveedor INT,
    titulo_libro VARCHAR(100),
    fecha_suministro DATE,
    PRIMARY KEY (id_proveedor, titulo_libro),
    FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor),
    FOREIGN KEY (titulo_libro) REFERENCES Libro(titulo_libro)
);

CREATE TABLE Envio (
    id_cliente INT,
    id_sucursal INT,
    titulo_libro VARCHAR(100),
    direccion VARCHAR(150),
    cantidad INT,
    fecha_enviado DATE,
    fecha_entregado DATE,
    PRIMARY KEY (id_cliente, id_sucursal, titulo_libro),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_sucursal) REFERENCES Sucursal(id_sucursal),
    FOREIGN KEY (titulo_libro) REFERENCES Libro(titulo_libro)
);

CREATE TABLE Empleado (
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    id_sucursal INT,
    nombre VARCHAR(35) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(150),
    cargo VARCHAR(35),
    sueldo INT,
    fecha_contratacion DATE,
    FOREIGN KEY (id_sucursal) REFERENCES Sucursal(id_sucursal)
);

INSERT INTO Autor (nombre, pais_origen) VALUES
    ('James Clear', 'USA'),
    ('Isabel Allende', 'Chile'),
    ('Brian Tracy', 'Canada'),
    ('Jacobo Grinberg', 'México'),
    ('George Orwell', 'India'),
    ('Joana Marcus', 'España'),
    ('Meg Cabot', 'USA'),
    ('Jazmin Riera', 'Argentina'),
    ('Gabriel Garcia Marquez', 'Colombia'),
    ('Haruki Murakami', 'Japón'),
    ('J.K. Rowling', 'Reino Unido'),
    ('Paulo Coelho', 'Brasil'),
    ('Stephen King', 'USA'),
    ('Jane Austen', 'Reino Unido'),
    ('Franz Kafka', 'República Checa'),
    ('Agatha Christie', 'Reino Unido'),
    ('Leo Tolstoy', 'Rusia'),
    ('Mark Manson', 'USA');

INSERT INTO Sucursal (nombre, telefono, horario) VALUES
    (1, 'RIW Santiago', '123456789', 'Lunes a Viernes 9:00 - 20:00');

INSERT INTO Editorial (editorial, nombre, direccion, pais_origen) VALUES
    ('Paidés', 'Av. Diagonal, 662, Barcelona', 'España'),
    ('Plaza & Janés', 'Travessera de Gracia, 47, Barcelona', 'España'),
    ('Grijalbo', 'Av. Grijalbo, 333, Barcelona', 'España'),
    ('Penguin Random House Grupo Editorial', 'Grutas S/N, Bahia grutas, Bosque de Chapultepec I Secc, Miguel Hidalgo, 11586 Ciudad de México', 'México'),
    ('Editorial Trillas', 'Calle Dr. José Maria Vertiz 687, Colonia Narvarte Po niente, Alcaldia Benito Juárez, C.P. 03020, Ciudad de México', 'México'),
    ('Secker & Warburg', '14 Carlisle Street, Londres, W1D 3BW', 'Reino Unido'),
    ('Penguin Random House Grupo Editorial', 'Calle de Almagro, 36, 28010 Madrid', 'España'),
    ('Montena', 'Calle de Almagro, 36, 28016 Madrid', 'España'),
    ('HarperTrophy', '195 Broadway, New York, NY 10067', 'USA'),
    ('Editorial Planeta', 'Av. Santa Fe 1970, C1123AA, Buenos Aires', 'Argentina'),
    ('Alfaguara', 'Calle del Conde de Aranda, 12, Madrid', 'España'),
    ('Tusquets Editores', 'Calle Provenza, 197, Barcelona', 'España'),
    ('Kodansha', '2-12-21 Otowa, Bunkyo City, Tokio', 'Japón'),
    ('Bloomsbury Publishing', '56 Bedford Square, Londres', 'Reino Unido'),
    ('Companhia das Letras', 'Av. Brigadeiro Faria Lima, 3064, São Paulo', 'Brasil'),
    ('Scribner', '1236 Avenue of the Americas, New York', 'USA'),
    ('Vintage Books', '20 Vauxhall Bridge Rd, Londres', 'Reino Unido'),
    ('HarperCollins', '195 Broadway, New York, NY 10007', 'USA'),
    ('Penguin Classics', '80 Strand, Londres', 'Reino Unido'),
    ('Editorial Debolsillo', 'Calle de Almagro, 36, Madrid', 'España');

INSERT INTO Proveedor (nombre, direccion, telefono, email, pais) VALUES
    ('Importaciones Chile', 'Av. Libertador 1234, Santiago', '+56912345678', 'importaciones@proveedorchile.com', 'Chile'),
    ('Editorial Andes', 'Calle Los Andes 567, Valparaiso', '+56987654321', 'contacto@editorialandes.cl', 'Chile'),
    ('Exportaciones USA', '123 Main St, New York', '+12125551234', 'exportaciones@proveedorus.com', 'USA'),
    ('Proveedores México', 'Av. Reforma 456, Ciudad de México', '+525512345678', 'info@proveedormex.com', 'México'),
    ('Editorial Buenos Aires', 'Calle Corrientes 789, Buenos Aires', '+541112345678', 'ventas@editorialba.com', 'Argentina'),
    ('Editorial España', 'Gran Via 123, Madrid', '+341234567890', 'contacto@editorialesp.com', 'España');

INSERT INTO Membresia (tipo, costo_mensual, beneficios) VALUES
    ('Estandar', 0, 'Descuentos por mas de 5 libros comprados, descuentos semanales.'),
    ('Estudiante', 1500, 'Descuentos en libros de estudios, ofertas especiales.'),
    ('Premium', 5000, 'Descuentos en libros de interés, ofertas especiales, descuentos semanales.'),
    ('Membresia familiar', 10000, 'Descuento del 20% por mas de 3 libros comprados, descuentos en libros de interés, ofertas especiales.');

INSERT INTO Cliente (id_membresia, nombre, email, telefono, direccion, comuna, fecha_registro) VALUES
    (4, 'Jonathan Flores', 'jonathan@udp.cl', '933333333', 'Av Exito 333', 'Santiago', '2023-06-15'),
    (4, 'Juan Flores', 'juan@udp.cl', '936936999', 'Av Arturo Prat 1976', 'Iquique', '2022-08-13'),
    (3, 'Victor Reyes', 'victor@udp.cl', '987654321', 'Av Providencia 1234', 'Providencia', '2023-06-21'),
    (3, 'Felipe Gutierrez', 'felipe@udp.cl', '912345678', 'Av Los Leones 567', 'Las Condes', '2024-06-15'),
    (1, 'Camila Soto', 'camila@udp.cl', '976543210', 'Calle Larga 890', 'Puente Alto', '2023-05-19'),
    (2, 'Francisca Lagos', 'francisca@udp.cl', '965432109', 'Av La Florida 1111', 'La Florida', '2022-06-10'),
    (1, 'Pedro Morales', 'pedro@udp.cl', '943216789', 'Pasaje Central 101', 'San Bernardo', '2023-07-23'),
    (1, 'Antonia Rojas', 'antonia@udp.cl', '932167845', 'Av Grecia 2222', 'Huinioa', '2024-02-11'),
    (3, 'Javier Lopez', 'javier@udp.cl', '919283746', 'Av Alameda 2000', 'Estacion Central', '2023-06-05'),
    (1, 'Cristian Castillo', 'cristian@udp.cl', '967894321', 'Av Bellavista 50', 'Rancagua', '2022-11-14'),
    (1, 'Isabel Fuentes', 'isabel@udp.cl', '987345621', 'Calle Larga 360', 'Quilicura', '2023-12-01'),
    (1, 'Sofia Carrasco', 'sofia@udp.cl', '956789432', 'Calle Comercio 160', 'Valparaiso', '2024-04-07');

INSERT INTO Libro (titulo_libro, numero_paginas, genero, categoria, año_publicacion, id_editorial) VALUES
    ('Atomic Habits', 320, 'Desarrollo personal', 'Psicologia aplicada', 2018, 1),
    ('El viento conoce mi nombre', 368, 'Ficción', 'Novela histórica', 2623, 2),
    ('Si lo crees lo creas', 264, 'Autoayuda', 'Desarrollo personal', 2019, 3),
    ('La teoria sintérgica', 136, 'Ciencia', 'Neurociencia', 2024, 4),
    ('El cerebro consciente', 163, 'Ciencia', 'Psicofisiologia de la conciencia', 1979, 5),
    ('1984', 328, 'Ficción distópica', 'Novela', 1949, 6),
    ('La creación de la experiencia', 320, 'Ciencia', 'Neurociencia', 2024, 7),
    ('Antes de diciembre', 496, 'Romance juvenil', 'Novela', 2021, 8),
    ('El diario de una princesa', 249, 'Novela juvenil', 'Ficción contemporánea', 2000, 9),
    ('Las reglas del boxeador', 704, 'Romance juvenil', 'Novela', 2016, 10),
    ('Cien años de soledad', 417, 'Ficción', 'Novela', 1967, 11),
    ('Kafka en la orilla', 565, 'Ficción contemporánea', 'Novela', 2002, 13),
    ('Harry Potter y la piedra filosofal', 309, 'Fantasía', 'Novela juvenil', 1997, 14),
    ('El Alquimista', 28, 'Ficción', 'Novela', 1988, 15),
    ('It', 1138, 'Terror', 'Novela', 1986, 16),
    ('Orgullo y prejuicio', 432, 'Romance', 'Novela', 1813, 17),
    ('La metamorfosis', 74, 'Ficción', 'Novela corta', 1915, 15),
    ('Diez negritos', 272, 'Misterio', 'Novela', 1939, 18),
    ('Guerra y paz', 1225, 'Ficción histórica', 'Novela', 1869, 19),
    ('El sutil arte de que te importe un caraj*', 224, 'Autoayuda', 'Desarrollo personal', 2016, 20);

INSERT INTO Suministra (id_proveedor, titulo_libro, fecha_suministro) VALUES
    (1, 'Atomic Habits', '2024-11-01'),
    (2, 'El viento conoce mi nombre', '2024-10-20'),
    (3, 'Si lo crees lo creas', '2024-09-15'),
    (4, 'La teoria sintérgica'),
    (5, 'EL cerebro consciente', '2024-07-05'),
    (6, '1984', '2024-06-25'),
    (1, 'La Creación de la Experiencia', '2024-05-15'),
    (2, 'Antes de diciembre', '2024-04-10'),
    (3, 'El diario de una princesa', '2024-03-15'),
    (4, 'Las reglas del boxeador', '2024-02-25'),
    (5, 'Cien años de soledad', '2024-01-20'),
    (6, 'Kafka en la orilla', '2023-12-15'),
    (1, 'Harry Potter y la piedra filosofal', '2623-11-10'),
    (2, 'El Alquimista', '2023-10-05'),
    (3, 'It', '2623-09-25'),
    (4, 'Orgullo y prejuicio', '2023-08-20'),
    (5, 'La metamorfosis', '2023-07-15'),
    (6, 'Diez negritos', '2023-06-10'),
    (1, 'Guerra y paz', '2023-05-05'),
    (2, 'EL sutil arte de que te importe un caraj*', '2023-04-25');

INSERT INTO Escribe (autor, titulo_libro, fecha_escrito) VALUES
    (1, 'Atomic Habits', '2018-10-16'),
    (2, 'El viento conoce mi nombre', '2023-06-01'),
    (3, 'Si lo crees lo creas', '2016-04-07'),
    (4, 'La teoria sintérgica', '1991-03-23'),
    (4, 'El cerebro consciente', '1979-06-30'),
    (5, '1984', '1948-05-08'),
    (4, 'La Creacion de la Experiencia', '1991-10-01'),
    (6, 'Antes de diciembre', '2019-11-11'),
    (7, 'El diario de una princesa', '1998-12-15'),
    (8, 'Las reglas del boxeador', '2013-02-26'),
    (9, 'Cien años de soledad', '1965-08-01'),
    (10, 'Kafka en la orilla', '2001-03-15'),
    (11, 'Harry Potter y la piedra filosofal', '1995-09-25'),
    (12, 'El Alquimista', '1987-10-10'),
    (13, 'It', '1984-11-22'),
    (14, 'Orgullo y prejuicio', '1811-12-20'),
    (15, 'La metamorfosis', '1912-10-31'),
    (16, 'Diez negritos', '1938-05-30'),
    (17, 'Guerra y paz', '1865-03-01'),
    (18, 'El sutil arte de que te importe un caraj*', '2015-09-01');

INSERT INTO Empleado (id_empleado, id_sucursal, nombre, telefono, email, cargo, sueldo, fecha_contratacion) VALUES
    (1, 1, 'Maria González', '+56998765432', 'maria.gonzalez@libreriariw.com', 'Gerente', 1200000, '2022-06-15'),
    (2, 1, 'Carlos Pérez', '+56912349876', 'carlos.perez@libreriariw.com', 'Vendedor', 750060, '2023-06-10'),
    (3, 1, 'Ana Lopez', '+56987651234', 'ana.lopez@libreriariw.com', 'Vendedor', 50000, '2023-05-20'),
    (4, 1, 'Juan Torres', '+56911223344', 'juan.torres@libreriariw.com', 'Cajero', 650000, '2022-06-25'),
    (5, 1, 'Sofia Rojas', '+56999887766', 'sofia.rojas@libreriariw.com', 'Cajero', 650000, '2021-12-01'),
    (6, 1, 'Felipe Vega', '+56977665544', 'felipe.vega@libreriariw.com', 'Administrador', 950000, '2021-08-15'),
    (7, 1, 'Javiera Castro', '+56966554433', 'javiera.castro@libreriariw.com', 'Inventario', 860000, '2023-08-18'),
    (8, 1, 'Diego Morales', '+56955443322', 'diego.morales@libreriariw.com', 'Inventario', 800660, '2023-10-10'),
    (9, 1, 'Camila Fuentes', '+56944332211', 'camila.fuentes@libreriariw.com', 'Limpieza', 500000, '2023-07-01'),
    (10, 1, 'Luis Ramirez', '+56933221100', 'luis.ramirez@libreriariw.com', 'Seguridad', 600000, '2022-04-15');

mysql> INSERT INTO Inventario (id_sucursal, titulo_libro, stock, precio) VALUES
    (1, 'Atomic Habits', 33, 1500),
    (1, 'EL viento conoce mi nombre', 10, 18600),
    (1, 'Si lo crees lo creas', 33, 10000),
    (1, 'La teoria sintérgica', 22, 26000),
    (1, 'El cerebro consciente', 8, 28000),
    (1, '1984', 19, 20000),
    (1, 'La Creación de la Experiencia', 6, 24600),
    (1, 'Antes de diciembre', 15, 35000),
    (1, 'El diario de una princesa', 7, 28000),
    (1, 'Las reglas del boxeador', 12, 20000),
    (1, 'Cien años de soledad', 25, 18000),
    (1, 'Kafka en la orilla', 12, 22000),
    (1, 'Harry Potter y la piedra filosofal', 30, 15600),
    (1, 'El Alquimista', 18, 12000),
    (1, 'It', 16, 28006),
    (1, 'Orgullo y prejuicio', 26, 16600),
    (1, 'La metamorfosis', 15, 8008),
    (1, 'Diez negritos', 22, 14600),
    (1, 'Guerra y paz', 8, 30000),
    (1, 'El sutil arte de que te importe un caraj*', 30, 13000);

mysql> INSERT INTO Pedido (id_cliente, titulo_libro, fecha_compra) VALUES
    (1, 'Atomic Habits', '2023-01-15'),
    (2, 'Si lo crees lo creas', '2024-10-29'),
    (3, '1984', '2023-03-22'),
    (5, 'Cien anos de soledad', '2023-05-20'),
    (6, 'Harry Potter y la piedra filosofal', '2022-09-11');

