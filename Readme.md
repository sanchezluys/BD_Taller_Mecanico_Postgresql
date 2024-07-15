# Base de Datos para Taller Mecánico

![Mechanical Workshop](https://example.com/mechanical-workshop-logo.png)

## Descripción

Este repositorio contiene una base de datos estructurada para la gestión de un taller mecánico. La base de datos está diseñada para almacenar información sobre clientes, vehículos, reparaciones y piezas, facilitando así la administración y el seguimiento de los servicios ofrecidos.

## Contenido

La base de datos incluye:

- **Clientes**: Información detallada de los clientes del taller.
- **Vehículos**: Datos de los vehículos registrados en el taller.
- **Reparaciones**: Registro de reparaciones realizadas.
- **Piezas**: Inventario de piezas disponibles y utilizadas en las reparaciones.

## Estructura de la Base de Datos

La base de datos está organizada en las siguientes tablas:

### Tabla: `clientes`

| Campo        | Tipo         | Descripción                        |
|--------------|--------------|------------------------------------|
| id           | INT          | Identificador único del cliente    |
| nombre       | VARCHAR(100) | Nombre del cliente                 |
| direccion    | VARCHAR(255) | Dirección del cliente              |
| telefono     | VARCHAR(15)  | Teléfono del cliente               |
| email        | VARCHAR(100) | Correo electrónico del cliente     |

### Tabla: `vehiculos`

| Campo        | Tipo         | Descripción                        |
|--------------|--------------|------------------------------------|
| id           | INT          | Identificador único del vehículo   |
| matricula    | VARCHAR(15)  | Matrícula del vehículo             |
| marca        | VARCHAR(50)  | Marca del vehículo                 |
| modelo       | VARCHAR(50)  | Modelo del vehículo                |
| ano          | INT          | Año de fabricación del vehículo    |
| cliente_id   | INT          | Identificador del propietario (cliente) |

### Tabla: `reparaciones`

| Campo        | Tipo         | Descripción                        |
|--------------|--------------|------------------------------------|
| id           | INT          | Identificador único de la reparación |
| vehiculo_id  | INT          | Identificador del vehículo         |
| fecha        | DATE         | Fecha de la reparación             |
| descripcion  | TEXT         | Descripción de la reparación       |
| costo        | DECIMAL(10,2)| Costo de la reparación             |

### Tabla: `piezas`

| Campo        | Tipo         | Descripción                        |
|--------------|--------------|------------------------------------|
| id           | INT          | Identificador único de la pieza    |
| nombre       | VARCHAR(100) | Nombre de la pieza                 |
| descripcion  | TEXT         | Descripción de la pieza            |
| cantidad     | INT          | Cantidad en inventario             |
| precio       | DECIMAL(10,2)| Precio unitario de la pieza        |

## Ejemplos de Consultas

### Obtener todos los clientes

```sql
SELECT * FROM clientes;

