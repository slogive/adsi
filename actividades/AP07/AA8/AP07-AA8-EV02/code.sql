CREATE DATABASE Factura;

SHOW DATABASES;

USE Factura;

CREATE TABLE Facturas(
  Numero int(11) AUTO_INCREMENT,
  Fecha date NOT NULL,
  Id_clientes int(11) NOT NULL,
  id_vendedor varchar(30) NOT NULL,
  id_formapago varchar(30) NOT NULL,
  PRIMARY KEY(Numero)
);

ALTER TABLE Facturas
ADD FOREIGN KEY(Id_clientes) REFERENCES Clientes(Id_clientes);

ALTER TABLE Facturas
ADD FOREIGN KEY(id_vendedor) REFERENCES Vendedores(id_vendedor);

ALTER TABLE Facturas
ADD FOREIGN KEY(id_formapago) REFERENCES formas_de_pago(id_formapago);

USE Factura;

CREATE TABLE Detalle_factura(
  Id_detalle int(11) AUTO_INCREMENT,
  Numero int(11) NOT NULL,
  Id_producto int(11) NOT NULL,
  Cantidad int(11) NOT NULL,
  Total int(11) NOT NULL,
  PRIMARY KEY(Id_detalle)
);

USE Factura;

CREATE TABLE Clientes(
  Id_clientes int(11) AUTO_INCREMENT,
  Nombre varchar(30) NOT NULL,
  Apellido varchar(30) NOT NULL,
  Numero_telefono varchar(11) NOT NULL,
  Direccion varchar(30) NOT NULL,
  Id_ciudad int(11) NOT NULL,
  Id_comuna int(11) NOT NULL,
  Correo varchar(30) NOT NULL,
  Fax int(11) NOT NULL,
  PRIMARY KEY(Id_clientes)
);

USE Factura;

CREATE TABLE Vendedores(
  Id_vendedores int(11) AUTO_INCREMENT,
  Nombre varchar(30) NOT NULL,
  Apellido varchar(30) NOT NULL,
  Numero_telefono varchar(11) NOT NULL,
  Direccion varchar(30) NOT NULL,
  Id_sedes int(11) NOT NULL,
  Id_ciudad int(11) NOT NULL,
  Id_comuna int(11) NOT NULL,
  Correo varchar(30) NOT NULL,
  Fax int(11) NOT NULL,
  PRIMARY KEY(Id_vendedores)
);

USE Factura;

CREATE TABLE formas_de_pago(
  id_formapago int(11) AUTO_INCREMENT,
  Forma_pago varchar(30) NOT NULL,
  PRIMARY KEY(id_formapago)
);

USE Factura;

CREATE TABLE Productos(
  Codigo int(11) AUTO_INCREMENT,
  Producto Varchar (30) NOT NULL,
  Descripcion Varchar (30) NOT NULL,
  Id_proveedor int(11) NOT NULL,
  Id_ubicacion int(11) NOT NULL,
  Id_unidad int(11) NOT NULL,
  Descuento int(11) NOT NULL,
  Iva int(11) NOT NULL,
  PRIMARY KEY(Codigo)
);

USE Factura;

CREATE TABLE Proveedores(
  Id_proveedores int(11) AUTO_INCREMENT,
  Nombre varchar(30) NOT NULL,
  Apellido varchar(30) NOT NULL,
  Numero_telefono varchar(11) NOT NULL,
  Direccion varchar(30) NOT NULL,
  Id_ciudad int(11) NOT NULL,
  Id_comuna int(11) NOT NULL,
  Correo varchar(30) NOT NULL,
  Fax int(11) NOT NULL,
  PRIMARY KEY(Id_proveedores)
);

USE Factura;

CREATE TABLE Ciudades(
  Id_ciudad int(11) AUTO_INCREMENT,
  Ciudad varchar(30) NOT NULL,
  PRIMARY KEY(Id_ciudad)
);

USE Factura;

CREATE TABLE Comunas(
  Id_comuna int(11) AUTO_INCREMENT,
  Comuna varchar(30) NOT NULL,
  Id_ciudad int(11) NOT NULL,
  PRIMARY KEY(Id_comuna)
);

USE Factura;

CREATE TABLE Unidad_de_medida(
  Id_Unida_medida int(11) AUTO_INCREMENT,
  Unidad int(11) NOT NULL,
  PRIMARY KEY(Id_Unida_medida)
);

USE Factura;

CREATE TABLE ubicacion_inventario(
  Id_sede int(11) AUTO_INCREMENT,
  Id_ciudad int(11) NOT NULL,
  Pocicion varchar(30) NOT NULL,
  PRIMARY KEY(Id_sede)
);

USE Factura;

CREATE TABLE Sede(
  Id_sede int(11) AUTO_INCREMENT,
  Id_ciudad int(11) NOT NULL,
  Sede varchar(30) NOT NULL,
  PRIMARY KEY(Id_sede)
);

USE Factura;

CREATE TABLE Bodega(
  Id_bodega int(11) AUTO_INCREMENT,
  Id_sede int(11) NOT NULL,
  Bodega varchar(30) NOT NULL,
  PRIMARY KEY(Id_bodega)
);