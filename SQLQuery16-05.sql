DROP TABLE IF EXISTS tableNew;
IF NOT EXISTS (SELECT * FROM sysobjects WHERE xtype='U' and name='tableNew')
CREATE TABLE tableNew(
	id int IDENTITY(1,1) NOT NULL,
	mark nvarchar(100) NOT NULL, 
	model nvarchar(100) NOT NULL,
	price money NOT NULL,
	color nvarchar(100) NOT NULL,
	fuel nchar(10) NOT NULL,
	wt decimal(10,1)NOT NULL,
	yearof nchar(10) NOT NULL,
	passenger nchar(10) NOT NULL,
	PRIMARY KEY(id)
);

INSERT INTO tableNew(mark, model, price, color, fuel, wt, yearof, passenger)
VALUES ('Aston Vartin', 'DBx9', 1800, 'grey', 'Бензин', 1.8, 2012, 4),
('Chevrolet', 'Camaro', 1000, 'red', 'Бензин', 1.6, 2018, 4),
('Infiniti', 'QX30', 800, 'white', 'Дизель', 1.5, 2016, 5);

ALTER TABLE tableNew 
ADD CHECK (LEN(model)>3)

ALTER TABLE tableNew 
ADD CHECK (price>300 AND price<200000)

ALTER TABLE tableNew 
ADD CHECK (wt>0.8 AND wt<3.5)

ALTER TABLE tableNew 
ADD CHECK (yearof>1985 AND yearof<getdate())

ALTER TABLE tableNew 
ADD CHECK (passenger>1 AND passenger<9)

SELECT * FROM tableNew;
