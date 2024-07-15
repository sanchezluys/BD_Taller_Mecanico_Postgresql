-- Insertando datos en la tabla clientes
INSERT INTO clientes (nombre, direccion, telefono, email) VALUES
('Juan Pérez', 'Calle 123, Ciudad', '1234567890', 'juan.perez@example.com'),
('María García', 'Avenida 456, Ciudad', '0987654321', 'maria.garcia@example.com');

-- Insertando datos en la tabla vehiculos
INSERT INTO vehiculos (matricula, marca, modelo, ano, cliente_id) VALUES
('ABC123', 'Toyota', 'Corolla', 2015, 1),
('XYZ789', 'Honda', 'Civic', 2018, 2);

-- Insertando datos en la tabla reparaciones
INSERT INTO reparaciones (vehiculo_id, fecha, descripcion, costo) VALUES
(1, '2023-07-01', 'Cambio de aceite y filtro', 100.00),
(2, '2023-07-02', 'Reemplazo de frenos', 200.00);

-- Insertando datos en la tabla piezas
INSERT INTO piezas (nombre, descripcion, cantidad, precio) VALUES
('Aceite de motor', 'Aceite de motor 5W-30', 50, 10.00),
('Filtro de aceite', 'Filtro de aceite para motor', 30, 5.00),
('Pastillas de freno', 'Juego de pastillas de freno', 20, 25.00);
