DROP TABLE IF EXISTS aviatikets;
IF NOT EXISTS (SELECT * FROM sysobjects WHERE xtype='U' and name='aviatikets')
CREATE TABLE aviatikets(
	id int IDENTITY(1,1) NOT NULL,
	namea nvarchar(100) NOT NULL , 
	price money NOT NULL,
	testo nvarchar(100) NOT NULL,
	cheese nchar(10) NOT NULL,
	chicken nchar(10) NOT NULL,
	mush nchar(10)NOT NULL,
	vetc nchar(10) NOT NULL,
	gov nchar(10) NOT NULL,
	tomato nchar(10)NOT NULL,
	ol nchar(10) NOT NULL,
	masl nchar(10) NOT NULL,
	pepper nchar(10)NOT NULL,
	ananas nchar(10) NOT NULL,
	cuc nchar(10)NOT NULL,
	grud nchar(10) NOT NULL,
	los nchar(10) NOT NULL,
	size nchar(10) NOT NULL,
	wt nchar(10)NOT NULL,
	wtes nchar(10) NOT NULL,
	PRIMARY KEY(id)
);



ALTER TABLE aviatikets
ADD CHECK (price>8)

ALTER TABLE aviatikets 
ADD CHECK ()


 SELECT * FROM aviatikets;
