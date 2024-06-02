-- Modificar la columna que será la clave primaria en la tabla Supervisor para que no permita valores nulos y sea de tipo INT
ALTER TABLE Supervisor 
ALTER COLUMN [Código Supervisor] INT NOT NULL;

-- Modificar la columna que será la clave primaria en la tabla Vendedor para que no permita valores nulos y sea de tipo INT
ALTER TABLE Vendedor 
ALTER COLUMN [Código Vendedor] INT NOT NULL;

-- Modificar la columna que será la clave primaria en la tabla Sector para que no permita valores nulos y sea de tipo INT
ALTER TABLE Sector 
ALTER COLUMN [Código Sector] INT NOT NULL;

-- Modificar la columna que será la clave primaria en la tabla Pais para que no permita valores nulos y sea de tipo INT
ALTER TABLE Pais 
ALTER COLUMN [Código País] INT NOT NULL;

-- Modificar la columna que será la clave primaria en la tabla Gaseosa para que no permita valores nulos y sea de tipo INT
ALTER TABLE Gaseosa 
ALTER COLUMN [Código Gaseosa] INT NOT NULL;

-- Agregar clave primaria a la tabla Supervisor
ALTER TABLE Supervisor ADD CONSTRAINT PK_Supervisor PRIMARY KEY ([Código Supervisor]);
-- Agregar clave primaria a la tabla Vendedor
ALTER TABLE Vendedor ADD CONSTRAINT PK_Vendedor PRIMARY KEY ([Código Vendedor]);
-- Agregar clave primaria a la tabla Sector
ALTER TABLE Sector ADD CONSTRAINT PK_Sector PRIMARY KEY ([Código Sector]);
-- Agregar clave primaria a la tabla Pais
ALTER TABLE Pais ADD CONSTRAINT PK_Pais PRIMARY KEY ([Código País]);
-- Agregar clave primaria a la tabla Gaseosa
ALTER TABLE Gaseosa ADD CONSTRAINT PK_Gaseosa PRIMARY KEY ([Código Gaseosa]);
-- Establecer relación entre Vendedor y Supervisor con ON DELETE CASCADE
ALTER TABLE Vendedor ADD CONSTRAINT FK_Vendedor_Supervisor FOREIGN KEY ([Código Supervisor]) REFERENCES Supervisor([Código Supervisor]) ON DELETE CASCADE;
-- Establecer relación entre Factura y Vendedor con ON DELETE CASCADE
ALTER TABLE Factura ADD CONSTRAINT FK_Factura_Vendedor FOREIGN KEY ([Código Vendedor]) REFERENCES Vendedor([Código Vendedor]) ON DELETE CASCADE;
-- Establecer relación entre Factura y Gaseosa con ON DELETE CASCADE
ALTER TABLE Factura ADD CONSTRAINT FK_Factura_Gaseosa FOREIGN KEY ([Código Gaseosa]) REFERENCES Gaseosa([Código Gaseosa]) ON DELETE CASCADE;
-- Establecer relación entre Factura y Pais con ON DELETE CASCADE
ALTER TABLE Factura ADD CONSTRAINT FK_Factura_Pais FOREIGN KEY ([Código País]) REFERENCES Pais([Código País]) ON DELETE CASCADE;
-- Establecer relación entre Factura y Sector con ON DELETE CASCADE
ALTER TABLE Factura ADD CONSTRAINT FK_Factura_Sector FOREIGN KEY ([Código Sector]) REFERENCES Sector([Código Sector]) ON DELETE CASCADE;