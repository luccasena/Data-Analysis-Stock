
CREATE TABLE StockData(
	 IdStock SERIAL PRIMARY KEY,
	 DateStock DATE NULL,
	 SymbolStock VARCHAR(5),
	 ClosePrice  DECIMAL(10, 2),
	 HighPrice DECIMAL(10, 2),
	 OpenPrice DECIMAL(10, 2),
	 LowPrice DECIMAL(10, 2),
	 Volume BIGINT
	 
);

CREATE TABLE StockImages(
	IdImage SERIAL PRIMARY KEY,
	SymbolStock VARCHAR(5),
	LinkImage VARCHAR(255),
	
);

CREATE TABLE FundamentalsStockData(
	IdFundamental SERIAL PRIMARY KEY,
	SymbolStock VARCHAR(5),
	DividendYield DECIMAL(10, 2),
	PL DECIMAL(10, 2),
	PVP DECIMAL(10, 2),
	ROE DECIMAL(10, 2),
	FOREIGN KEY (IdStock) REFERENCES StockData(IdStock)

);

SELECT * FROM stockdata;
SELECT * FROM stockimages;
SELECT * FROM fundamentalsstockdata;