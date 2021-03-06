/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 13.5 		*/
/*  Created On : 18-abr.-2022 20:57:11 				*/
/*  DBMS       : SQL Server 2012 						*/
/* ---------------------------------------------------- */

/* Drop Foreign Key Constraints */

create database Delivery
use Delivery

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Articulos_Categoria]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Articulos] DROP CONSTRAINT [FK_Articulos_Categoria]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Articulos_Proveedores]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Articulos] DROP CONSTRAINT [FK_Articulos_Proveedores]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Articulos_TiempoDeEntrega]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Articulos] DROP CONSTRAINT [FK_Articulos_TiempoDeEntrega]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Clientes_TipoDeDocumento]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Clientes] DROP CONSTRAINT [FK_Clientes_TipoDeDocumento]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_DetallePedido_Articulos]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [DetallePedido] DROP CONSTRAINT [FK_DetallePedido_Articulos]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_DetallePedido_Pedido]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [DetallePedido] DROP CONSTRAINT [FK_DetallePedido_Pedido]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Factura_Parametros]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Factura] DROP CONSTRAINT [FK_Factura_Parametros]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Factura_Pedido]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Factura] DROP CONSTRAINT [FK_Factura_Pedido]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Pedido_Clientes]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Pedido] DROP CONSTRAINT [FK_Pedido_Clientes]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Pedido_Estado]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Pedido] DROP CONSTRAINT [FK_Pedido_Estado]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Pedido_Repartidor]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Pedido] DROP CONSTRAINT [FK_Pedido_Repartidor]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Pedido_TipoDeEntrega]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Pedido] DROP CONSTRAINT [FK_Pedido_TipoDeEntrega]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Pedido_TipoDePago]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Pedido] DROP CONSTRAINT [FK_Pedido_TipoDePago]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_PedidosCancelados_Pedido]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [PedidosCancelados] DROP CONSTRAINT [FK_PedidosCancelados_Pedido]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Proveedores_TipoDeDocumento]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Proveedores] DROP CONSTRAINT [FK_Proveedores_TipoDeDocumento]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Repartidor_Sexo]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Repartidor] DROP CONSTRAINT [FK_Repartidor_Sexo]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Repartidor_TipoDeDocumento]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Repartidor] DROP CONSTRAINT [FK_Repartidor_TipoDeDocumento]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Usuarios_AreaLaboral]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Usuarios] DROP CONSTRAINT [FK_Usuarios_AreaLaboral]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Usuarios_Sexo]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Usuarios] DROP CONSTRAINT [FK_Usuarios_Sexo]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Usuarios_TipoDeDocumento]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Usuarios] DROP CONSTRAINT [FK_Usuarios_TipoDeDocumento]
GO

/* Drop Tables */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[AreaLaboral]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [AreaLaboral]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Articulos]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Articulos]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Categoria]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Categoria]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Clientes]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Clientes]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DetallePedido]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [DetallePedido]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Estado]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Estado]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Factura]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Factura]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Parametros]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Parametros]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Pedido]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Pedido]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[PedidosCancelados]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [PedidosCancelados]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Proveedores]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Proveedores]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Repartidor]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Repartidor]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Sexo]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Sexo]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[TiempoDeEntrega]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [TiempoDeEntrega]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[TipoDeDocumento]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [TipoDeDocumento]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[TipoDeEntrega]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [TipoDeEntrega]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[TipoDePago]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [TipoDePago]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Usuarios]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Usuarios]
GO

/* Create Tables */

CREATE TABLE [AreaLaboral]
(
	[IdAreaLaboral] int NOT NULL IDENTITY (1, 1),
	[NombreAreaLaboral] varchar(25) NULL,
	[DescripcionAreaLaboral] varchar(50) NULL,
	[EstadoAreaLaboral] bit NULL
)
GO

CREATE TABLE [Articulos]
(
	[IdArticulos] int NOT NULL IDENTITY (1, 1),
	[NombreArticulo] varchar(30) NULL,
	[Stock] int NULL,
	[DescripcionArticulo] varchar(50) NULL,
	[PrecioArticulo] float NULL,
	[EstadoArticulo] bit NULL,
	[IdProveedor] int NULL,
	[IdCategoria] int NULL,
	[IdTiempoDeEntrega] int NULL
)
GO

CREATE TABLE [Categoria]
(
	[IdCategoria] int NOT NULL IDENTITY (1, 1),
	[NombreCategoria] varchar(50) NULL,
	[DescripcionCategoria] varchar(100) NULL,
	[EstadoCategoria] bit NULL
)
GO

CREATE TABLE [Clientes]
(
	[IdCliente] int NOT NULL IDENTITY (1, 1),
	[NombreCliente] varchar(20) NULL,
	[ApellidoCliente] varchar(20) NULL,
	[TelefonoCliente] varchar(10) NULL,
	[DireccionCliente] varchar(150) NULL,
	[CorreoCliente] varchar(60) NULL,
	[EstadoCliente] bit NULL,
	[DocumentoCliente] varchar(15) NULL,
	[ContrasenaCliente] varchar(100) NULL,
	[IdTipoDeDocumento] int NULL
)
GO

CREATE TABLE [DetallePedido]
(
	[IdDetallePedido] int NOT NULL IDENTITY (1, 1),
	[Precio] float NULL,
	[Cantidad] int NULL,
	[IdArticulos] int NULL,
	[IdPedido] int NULL
)
GO

CREATE TABLE [Estado]
(
	[IdEstado] int NOT NULL IDENTITY (1, 1),
	[NombreEstado] varchar(20) NULL,
	[DescripcionEstado] varchar(50) NULL,
	[ActivoEstado] bit NULL
)
GO

CREATE TABLE [Factura]
(
	[IdFactura] int NOT NULL IDENTITY (1, 1),
	[FechaFactura] datetime NULL,
	[NumeroFactura] varchar(50) NULL,
	[TotalFactura] float NULL,
	[IdPedido] int NULL,
	[IdParametros] int NULL
)
GO

CREATE TABLE [Parametros]
(
	[IdParametros] int NOT NULL IDENTITY (1, 1),
	[Cai] varchar(50) NULL,
	[FechaEmision] datetime NULL,
	[FechaCaducidad] datetime NULL,
	[FacturaInicial] int NULL,
	[FacturaFinal] int NULL
)
GO

CREATE TABLE [Pedido]
(
	[IdPedido] int NOT NULL IDENTITY (1, 1),
	[FechaPedido] datetime NULL,
	[Impuesto] float NULL,
	[SubTotal] float NULL,
	[Total] float NULL,
	[DireccionPedido] varchar(200) NULL,
	[IdCliente] int NULL,
	[IdRepartidor] int NULL,
	[IdTipoDePago] int NULL,
	[IdTipoDeEntrega] int NULL,
	[IdEstado] int NULL
)
GO

CREATE TABLE [PedidosCancelados]
(
	[IdPedidosCancelados] int NOT NULL IDENTITY (1, 1),
	[FechaCancelacion] datetime NULL,
	[DescripcionCancelacion] varchar(100) NULL,
	[IdPedido] int NULL
)
GO

CREATE TABLE [Proveedores]
(
	[IdProveedor] int NOT NULL IDENTITY (1, 1),
	[NombreProveedor] varchar(30) NULL,
	[TelefonoProveedor] varchar(10) NULL,
	[CorreoProveedor] varchar(60) NULL,
	[EstadoProveedor] bit NULL,
	[DocumentoProveedor] varchar(15) NULL,
	[IdTipoDeDocumento] int NULL
)
GO

CREATE TABLE [Repartidor]
(
	[IdRepartidor] int NOT NULL IDENTITY (1, 1),
	[NombreRepartidor] varchar(20) NULL,
	[ApellidoRepartidor] varchar(20) NULL,
	[TelefonoRepartidor] varchar(10) NULL,
	[CorreoRepartidor] varchar(60) NULL,
	[EstadoRepartidor] bit NULL,
	[DocumentoRepartidor] varchar(15) NULL,
	[IdSexo] int NULL,
	[IdTipoDeDocumento] int NULL
)
GO

CREATE TABLE [Sexo]
(
	[IdSexo] int NOT NULL IDENTITY (1, 1),
	[NombreSexo] varchar(50) NULL
)
GO

CREATE TABLE [TiempoDeEntrega]
(
	[IdTiempoDeEntrega] int NOT NULL IDENTITY (1, 1),
	[EstimadoEntrega] varchar(50) NULL,
	[DescripcionEstimadoEntrega] varchar(100) NULL,
	[EstadoTiempoDeEntrega] bit NULL
)
GO

CREATE TABLE [TipoDeDocumento]
(
	[IdTipoDeDocumento] int NOT NULL IDENTITY (1, 1),
	[NombreTipoDocumento] varchar(20) NULL,
	[DescripcionTipoDocumento] varchar(50) NULL
)
GO

CREATE TABLE [TipoDeEntrega]
(
	[IdTipoDeEntrega] int NOT NULL IDENTITY (1, 1),
	[NombreTipoDeEntrega] varchar(50) NULL,
	[DescripcionTipoDeEntrega] varchar(50) NULL,
	[EstadoTipoDeEntrega] bit NULL
)
GO

CREATE TABLE [TipoDePago]
(
	[IdTipoDePago] int NOT NULL IDENTITY (1, 1),
	[NombreTipoDePago] varchar(20) NULL,
	[DescripcionTipoDePago] varchar(50) NULL
)
GO

CREATE TABLE [Usuarios]
(
	[IdUsuario] int NOT NULL IDENTITY (1, 1),
	[NombreEmpleado] varchar(20) NULL,
	[ApellidoEmpleado] varchar(20) NULL,
	[NombreUsuario] varchar(50) NULL,
	[Contrasena] varchar(100) NULL,
	[NumeroDeIntentos] int NULL,
	[EstadoUsuario] bit NULL,
	[Admin] bit NULL,
	[DocumentoEmpleado] varchar(15) NULL,
	[IdSexo] int NULL,
	[IdTipoDeDocumento] int NULL,
	[FechaDeCambio] datetime NULL,
	[IdAreaLaboral] int NULL
)
GO

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE [AreaLaboral] 
 ADD CONSTRAINT [PK_AreaLaboral]
	PRIMARY KEY CLUSTERED ([IdAreaLaboral] ASC)
GO

ALTER TABLE [Articulos] 
 ADD CONSTRAINT [PK_Articulos]
	PRIMARY KEY CLUSTERED ([IdArticulos] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Articulos_Categoria] 
 ON [Articulos] ([IdCategoria] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Articulos_Proveedores] 
 ON [Articulos] ([IdProveedor] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Articulos_TiempoDeEntrega] 
 ON [Articulos] ([IdTiempoDeEntrega] ASC)
GO

ALTER TABLE [Categoria] 
 ADD CONSTRAINT [PK_Categoria]
	PRIMARY KEY CLUSTERED ([IdCategoria] ASC)
GO

ALTER TABLE [Clientes] 
 ADD CONSTRAINT [PK_Clientes]
	PRIMARY KEY CLUSTERED ([IdCliente] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Clientes_TipoDeDocumento] 
 ON [Clientes] ([IdTipoDeDocumento] ASC)
GO

ALTER TABLE [DetallePedido] 
 ADD CONSTRAINT [PK_DetallePedido]
	PRIMARY KEY CLUSTERED ([IdDetallePedido] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_DetallePedido_Articulos] 
 ON [DetallePedido] ([IdArticulos] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_DetallePedido_Pedido] 
 ON [DetallePedido] ([IdPedido] ASC)
GO

ALTER TABLE [Estado] 
 ADD CONSTRAINT [PK_Estado]
	PRIMARY KEY CLUSTERED ([IdEstado] ASC)
GO

ALTER TABLE [Factura] 
 ADD CONSTRAINT [PK_Factura]
	PRIMARY KEY CLUSTERED ([IdFactura] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Factura_Parametros] 
 ON [Factura] ([IdParametros] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Factura_Pedido] 
 ON [Factura] ([IdPedido] ASC)
GO

ALTER TABLE [Parametros] 
 ADD CONSTRAINT [PK_Parametros]
	PRIMARY KEY CLUSTERED ([IdParametros] ASC)
GO

ALTER TABLE [Pedido] 
 ADD CONSTRAINT [PK_Pedido]
	PRIMARY KEY CLUSTERED ([IdPedido] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Pedido_Clientes] 
 ON [Pedido] ([IdCliente] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Pedido_Estado] 
 ON [Pedido] ([IdEstado] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Pedido_Repartidor] 
 ON [Pedido] ([IdRepartidor] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Pedido_TipoDeEntrega] 
 ON [Pedido] ([IdTipoDeEntrega] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Pedido_TipoDePago] 
 ON [Pedido] ([IdTipoDePago] ASC)
GO

ALTER TABLE [PedidosCancelados] 
 ADD CONSTRAINT [PK_PedidosCancelados]
	PRIMARY KEY CLUSTERED ([IdPedidosCancelados] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_PedidosCancelados_Pedido] 
 ON [PedidosCancelados] ([IdPedido] ASC)
GO

ALTER TABLE [Proveedores] 
 ADD CONSTRAINT [PK_Proveedores]
	PRIMARY KEY CLUSTERED ([IdProveedor] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Proveedores_TipoDeDocumento] 
 ON [Proveedores] ([IdTipoDeDocumento] ASC)
GO

ALTER TABLE [Repartidor] 
 ADD CONSTRAINT [PK_Repartidor]
	PRIMARY KEY CLUSTERED ([IdRepartidor] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Repartidor_Sexo] 
 ON [Repartidor] ([IdSexo] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Repartidor_TipoDeDocumento] 
 ON [Repartidor] ([IdTipoDeDocumento] ASC)
GO

ALTER TABLE [Sexo] 
 ADD CONSTRAINT [PK_Sexo]
	PRIMARY KEY CLUSTERED ([IdSexo] ASC)
GO

ALTER TABLE [TiempoDeEntrega] 
 ADD CONSTRAINT [PK_TiempoDeEntrega]
	PRIMARY KEY CLUSTERED ([IdTiempoDeEntrega] ASC)
GO

ALTER TABLE [TipoDeDocumento] 
 ADD CONSTRAINT [PK_TipoDeDocumento]
	PRIMARY KEY CLUSTERED ([IdTipoDeDocumento] ASC)
GO

ALTER TABLE [TipoDeEntrega] 
 ADD CONSTRAINT [PK_TipoDeEntrega]
	PRIMARY KEY CLUSTERED ([IdTipoDeEntrega] ASC)
GO

ALTER TABLE [TipoDePago] 
 ADD CONSTRAINT [PK_TipoDePago]
	PRIMARY KEY CLUSTERED ([IdTipoDePago] ASC)
GO

ALTER TABLE [Usuarios] 
 ADD CONSTRAINT [PK_Usuarios]
	PRIMARY KEY CLUSTERED ([IdUsuario] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Usuarios_AreaLaboral] 
 ON [Usuarios] ([IdAreaLaboral] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Usuarios_Sexo] 
 ON [Usuarios] ([IdSexo] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Usuarios_TipoDeDocumento] 
 ON [Usuarios] ([IdTipoDeDocumento] ASC)
GO

/* Create Foreign Key Constraints */

ALTER TABLE [Articulos] ADD CONSTRAINT [FK_Articulos_Categoria]
	FOREIGN KEY ([IdCategoria]) REFERENCES [Categoria] ([IdCategoria]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Articulos] ADD CONSTRAINT [FK_Articulos_Proveedores]
	FOREIGN KEY ([IdProveedor]) REFERENCES [Proveedores] ([IdProveedor]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Articulos] ADD CONSTRAINT [FK_Articulos_TiempoDeEntrega]
	FOREIGN KEY ([IdTiempoDeEntrega]) REFERENCES [TiempoDeEntrega] ([IdTiempoDeEntrega]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Clientes] ADD CONSTRAINT [FK_Clientes_TipoDeDocumento]
	FOREIGN KEY ([IdTipoDeDocumento]) REFERENCES [TipoDeDocumento] ([IdTipoDeDocumento]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [DetallePedido] ADD CONSTRAINT [FK_DetallePedido_Articulos]
	FOREIGN KEY ([IdArticulos]) REFERENCES [Articulos] ([IdArticulos]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [DetallePedido] ADD CONSTRAINT [FK_DetallePedido_Pedido]
	FOREIGN KEY ([IdPedido]) REFERENCES [Pedido] ([IdPedido]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Factura] ADD CONSTRAINT [FK_Factura_Parametros]
	FOREIGN KEY ([IdParametros]) REFERENCES [Parametros] ([IdParametros]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Factura] ADD CONSTRAINT [FK_Factura_Pedido]
	FOREIGN KEY ([IdPedido]) REFERENCES [Pedido] ([IdPedido]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Pedido] ADD CONSTRAINT [FK_Pedido_Clientes]
	FOREIGN KEY ([IdCliente]) REFERENCES [Clientes] ([IdCliente]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Pedido] ADD CONSTRAINT [FK_Pedido_Estado]
	FOREIGN KEY ([IdEstado]) REFERENCES [Estado] ([IdEstado]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Pedido] ADD CONSTRAINT [FK_Pedido_Repartidor]
	FOREIGN KEY ([IdRepartidor]) REFERENCES [Repartidor] ([IdRepartidor]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Pedido] ADD CONSTRAINT [FK_Pedido_TipoDeEntrega]
	FOREIGN KEY ([IdTipoDeEntrega]) REFERENCES [TipoDeEntrega] ([IdTipoDeEntrega]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Pedido] ADD CONSTRAINT [FK_Pedido_TipoDePago]
	FOREIGN KEY ([IdTipoDePago]) REFERENCES [TipoDePago] ([IdTipoDePago]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [PedidosCancelados] ADD CONSTRAINT [FK_PedidosCancelados_Pedido]
	FOREIGN KEY ([IdPedido]) REFERENCES [Pedido] ([IdPedido]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Proveedores] ADD CONSTRAINT [FK_Proveedores_TipoDeDocumento]
	FOREIGN KEY ([IdTipoDeDocumento]) REFERENCES [TipoDeDocumento] ([IdTipoDeDocumento]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Repartidor] ADD CONSTRAINT [FK_Repartidor_Sexo]
	FOREIGN KEY ([IdSexo]) REFERENCES [Sexo] ([IdSexo]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Repartidor] ADD CONSTRAINT [FK_Repartidor_TipoDeDocumento]
	FOREIGN KEY ([IdTipoDeDocumento]) REFERENCES [TipoDeDocumento] ([IdTipoDeDocumento]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Usuarios] ADD CONSTRAINT [FK_Usuarios_AreaLaboral]
	FOREIGN KEY ([IdAreaLaboral]) REFERENCES [AreaLaboral] ([IdAreaLaboral]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Usuarios] ADD CONSTRAINT [FK_Usuarios_Sexo]
	FOREIGN KEY ([IdSexo]) REFERENCES [Sexo] ([IdSexo]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Usuarios] ADD CONSTRAINT [FK_Usuarios_TipoDeDocumento]
	FOREIGN KEY ([IdTipoDeDocumento]) REFERENCES [TipoDeDocumento] ([IdTipoDeDocumento]) ON DELETE No Action ON UPDATE No Action
GO
