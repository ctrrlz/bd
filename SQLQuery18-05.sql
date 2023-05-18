DROP TABLE IF EXISTS aviatikets;
IF NOT EXISTS (SELECT * FROM sysobjects WHERE xtype='U' and name='aviatikets')
CREATE TABLE aviatikets(
	id int IDENTITY(1,1) NOT NULL,
	namea nvarchar(100) NOT NULL DEFAULT 'bELAVIA', 
	wheres nvarchar(100) NOT NULL,
	wfrom  nvarchar(100) NOT NULL,
	price money NOT NULL,
	number nchar(10) NOT NULL,
	place nvarchar(10)NOT NULL,
	timeofv datetime NOT NULL,
	timeofp datetime NOT NULL,
	timein nchar(10) NOT NULL,
	PRIMARY KEY(id)
);

SELECT 
[wheres],
[wfrom],
[price],
[number],
[place],
[timeofv],
[timein] 
 FROM aviatikets WHERE price<80 AND timeofv=getdate();

ALTER TABLE aviatikets
ADD CHECK (price>20 AND price<3000)

ALTER TABLE aviatikets 
ADD CHECK (place>1 AND place<300)

SELECT 
[wheres],
[wfrom],
[price],
[number],
[place],
[timeofv],
[timein] 
 FROM aviatikets WHERE place>30 AND place<50 AND place IN('','','');

 SELECT 
[wheres],
[wfrom],
[price],
[number],
[place],
[timeofv],
[timein] 
 FROM aviatikets WHERE place IN('','','');
