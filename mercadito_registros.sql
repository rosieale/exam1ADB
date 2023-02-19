select * from Categoria 

Insert into Categoria (NombreCategoria) values ('Lacteos'), ('Enlatados'), ('Carnes'), ('Frutas'), ('Pescados'), ('Mariscos'), ('Granos'), ('Vegetales'), ('Articulos de Hogar'), ('Miscelaneos')

select * from Credito

Insert into Credito (creditoActivo, saldoPendiente) values (1,150.2), (0,0), (1, 210), (0,0), (1, 320.2), (0,0), (1, 512.3), (0,0), (1, 642.3), (0,0)

select * from Empleados

Insert into Empleados (primerNombre, primerApellido) values ('Maria', 'Trudy'), ('Juana', 'Perez'), ('Ivan', 'Villa'), ('Mario', 'Manolo'), ('Alejandra', 'Ponce'), ('Maria', 'Funez'), ('Jose', 'Prado'), ('Manuel', 'Trudy'), ('Jane', 'Doe'), ('Benedict', 'Cucumber')

select * from Producto

Insert into Producto (NombreProducto, Precio_Unidad, unidades, Categoria_Id) values ('Leche de Soya', 75, 50, 1), ('Toalla', 100, 60, 9), ('Aceite de Carro', 70, 30, 10), ('Leche de Coco', 40, 80, 2), ('Carne Molida', 85, 40, 3), ('Pechuga deshuesada', 50, 100, 3), ('Tilapia', 75, 50, 5), ('Cangrejo', 150, 30, 6), ('Manzana', 4, 50, 4), ('Papa', 3, 150, 8)

select * from Proveedores

Insert into Proveedores (proveedorNombre, Producto_Id) values ('Leyde', 1), ('Goya', 4), ('Home Essentials', 2), ('Valvoline', 3), ('Mogami', 5), ('Pollo Norteño', 6), ('Mariscos del Sur', 7), ('La Mariscada', 8), ('La Carreta', 9), ('Don Papa', 10)

select * from Clientes

Insert into Clientes (primerNombre, primerApellido, numero, Credito_Id) values ('Julia', 'Mendez', 96653256, 1), ('Daniel', 'Craig', 89562545, 2), ('David', 'Milla', 89635625, 3), ('Manuel', 'Gonzales', 96896598, 4), ('Silvio', 'Maldonado', 96898888, 5), ('Mario', 'Perez', 85859696, 6), ('Kike', 'Levi', 98985252, 7), ('Brad', 'Martinez', 99996856, 8), ('Francisco', 'Herbert', 85556327, 9), ('Juana', 'Caceres', 98966666, 10)

select * from DetallesOrden

Insert into DetallesOrden (Producto_ID, Cliente_Id, Empleado_ID, total) values (1, 1, 1, 650), (2, 2, 2, 560), (3, 3, 3, 542), (4, 4, 4, 678), (5, 5, 5, 320), (6, 6, 6, 1450), (7, 7, 7, 542), (8, 8, 8, 798), (9, 9, 9, 2556), (10, 10, 10, 425)