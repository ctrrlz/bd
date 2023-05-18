--DROP TABLE IF EXISTS tableNew;
--IF NOT EXISTS (SELECT * FROM sysobjects WHERE xtype='U' and name='tableNew')
--CREATE TABLE tableNew(
--	id int IDENTITY(1,1) NOT NULL,
--	thename nvarchar(100) NOT NULL,
--	price money,
--	PRIMARY KEY(id),
--	UNIQUE(thename)
--);

--INSERT INTO tableNew(thename, price)
--VALUES ('GP 7 Pro', 999);
--SELECT * FROM tableNew;
DROP TABLE IF EXISTS tableNew;
IF NOT EXISTS (SELECT * FROM sysobjects WHERE xtype='U' and name='tableNew')
CREATE TABLE tableNew(
	id int IDENTITY(1,1) NOT NULL,
	model nvarchar(100) NOT NULL, 
	color nvarchar(100) NOT NULL,
	os nvarchar(100) NOT NULL,
	screen nchar(10)NOT NULL,
	process nvarchar(100) NOT NULL,
	ram nchar(10)NOT NULL,
	mem nchar(10)NOT NULL,
	camera nchar(10),
	price money,
	PRIMARY KEY(id)
);
INSERT INTO tableNew(model, color, os, screen, process, ram, mem, camera, price)
VALUES ('POCO X5 pro 5G', 'blue', 'Android', 6.67, 'Qualcomm Snapdragon 778G', 8, 256, 108, 1074),
('Honor x8a', 'white', 'Android', 6.7, 'MediaTec', 6, 128, 100, 769),
('iPhone', 'white', 'IOS', 6.1, 'Bionic', 4, 128, 12, 2099);
SELECT * FROM tableNew;