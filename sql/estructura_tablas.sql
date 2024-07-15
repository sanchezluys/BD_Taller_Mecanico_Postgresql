-- Creación de la tabla clientes
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(15),
    email VARCHAR(100)
);

-- Creación de la tabla vehiculos
CREATE TABLE vehiculos (
    id SERIAL PRIMARY KEY,
    matricula VARCHAR(15) NOT NULL,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    ano INT,
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Creación de la tabla reparaciones
CREATE TABLE reparaciones (
    id SERIAL PRIMARY KEY,
    vehiculo_id INT,
    fecha DATE,
    descripcion TEXT,
    costo DECIMAL(10,2),
    FOREIGN KEY (vehiculo_id) REFERENCES vehiculos(id)
);

-- Creación de la tabla piezas
CREATE TABLE piezas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    cantidad INT,
    precio DECIMAL(10,2)
);
