create database examen1

--1
Create table Categoria (
Categoria_Id int PRIMARY KEY NOT NULL IDENTITY(1,1), 
NombreCategoria varchar (40) NOT NULL,
)

--2
Create table Credito (
Credito_Id int PRIMARY KEY NOT NULL IDENTITY(1,1), 
creditoActivo BIT,
saldoPendiente decimal,
)

--3
Create table Empleados (
Empleado_Id int PRIMARY KEY NOT NULL IDENTITY(1,1), 
primerNombre varchar (40), primerApellido varchar (40),
)

--4
Create table Producto (
Producto_Id int PRIMARY KEY NOT NULL IDENTITY(1,1), 
NombreProducto varchar (40),
Precio_Unidad decimal,
unidades int,
Categoria_Id int Constraint fk_Categoria_Producto Foreign Key(Categoria_Id) references Categoria(Categoria_Id)
)

--5
CREATE TABLE Proveedores(
proveedores_Id int PRIMARY KEY NOT NULL IDENTITY(1,1),
proveedorNombre varchar (40), 
Producto_Id int Constraint fk_Producto_Proveedores FOREIGN KEY(Producto_Id) REFERENCES Producto(Producto_Id),
)

--6
CREATE TABLE Clientes(
Cliente_Id int PRIMARY KEY NOT NULL IDENTITY(1,1),
primerNombre varchar (40), primerApellido varchar (40),
numero int,
Credito_Id int Constraint fk_Credito_Clientes FOREIGN KEY(Credito_Id) REFERENCES Credito(Credito_Id),
)

--7
CREATE TABLE DetallesOrden(
DetallesOrden_Id int PRIMARY KEY NOT NULL IDENTITY(1,1),
Producto_Id int Constraint fk_Producto_DetallesOrden FOREIGN KEY(Producto_Id) REFERENCES Producto(Producto_Id),
Cliente_Id int Constraint fk_Clientes_DetallesOrden FOREIGN KEY(Cliente_Id) REFERENCES Clientes(Cliente_Id),
Empleado_Id int Constraint fk_Empleados_DetallesOrden FOREIGN KEY(Empleado_Id) REFERENCES Empleados(Empleado_Id),
total int, 
)
