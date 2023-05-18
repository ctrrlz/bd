DROP TABLE IF EXISTS aviatiketss;
IF NOT EXISTS (SELECT * FROM sysobjects WHERE xtype='U' and name='aviatiketss')
CREATE TABLE aviatiketss(
	id int IDENTITY(1,1) NOT NULL,
	country nvarchar(100) NOT NULL, 
	punct nvarchar(100) NOT NULL,
	hotel nvarchar(100) NOT NULL,
	price money NOT NULL,
	stars nchar(10) NOT NULL,
	sea nchar(10) NOT NULL,
	food nchar(10) NOT NULL,
	daysP nchar(10) NOT NULL,
	timeofv datetime NOT NULL,
	PRIMARY KEY(id)
);

SELECT 
[country],
[punct],
[price],
[daysP],
[timeofv]
 FROM aviatiketss WHERE price>1500 AND daysP>7 AND daysP<11;

--INSERT INTO aviatikets(mark, model, price, color, fuel, wt, yearof, passenger)
--VALUES ('Aston Vartin', 'DBx9', 1800, 'grey', 'Бензин', 1.8, 2012, 4),
--('Chevrolet', 'Camaro', 1000, 'red', 'Бензин', 1.6, 2018, 4),
--('Infiniti', 'QX30', 800, 'white', 'Дизель', 1.5, 2016, 5);

ALTER TABLE aviatiketss
ADD CHECK (price>100)

ALTER TABLE aviatiketss 
ADD CHECK (stars>1 AND stars<5)

ALTER TABLE aviatiketss
ADD CHECK (sea>=50)

ALTER TABLE aviatiketss
ADD CHECK (daysP>=3)

ALTER TABLE aviatikets
ADD CHECK (timeofv>getdate()+1)

SELECT 
[country],
[punct],
[price],
[daysP],
[timeofv]
 FROM aviatiketss WHERE stars>=4 AND daysP=10 AND sea<500;