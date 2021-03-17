-- Create table
CREATE TABLE public.financeiro(
	Mes char(7),
	Departamento varchar(30),
	UF char(2),
	Item integer,
	Faturamento_Produto real,
	Faturamento_Frete real,
	Custo_Produto real,
	Custo_Frete real,
	Custo_Mkt real,
	Desconto_Produto real,
	Desconto_Frete real
);

-- Test table creation
SELECT * FROM financeiro;

-- Import data
COPY financeiro FROM '/home/pathilink/Área de Trabalho/tracked_files/B2W_data/Financeiro.csv' WITH (FORMAT 'csv', DELIMITER ';', NULL '', HEADER, encoding 'latin-1');

-- Verify data
SELECT * FROM financeiro;

-------------------------------------------------------------------------------

CREATE TABLE public.vendas(
	Mes char(7),
	Departamento varchar(30),
	UF char(2),
	Item integer,
	Vendas integer
);

-- Test table creation
SELECT * FROM vendas;

-- Import data
COPY vendas FROM '/home/pathilink/Área de Trabalho/tracked_files/B2W_data/Vendas.csv' WITH (FORMAT 'csv', DELIMITER ';', NULL 'NULL', HEADER, encoding 'latin-1');

-- Verify data
SELECT * FROM vendas;

-------------------------------------------------------------------------------

CREATE TABLE public.visitas(
	Mes char(7),
	Departamento varchar(30),
	UF char(2),
	Item integer,
	Visitas integer
);

-- Test table creation
SELECT * FROM visitas;

-- Import data
COPY visitas FROM '/home/pathilink/Área de Trabalho/tracked_files/B2W_data/visitas.csv' WITH (FORMAT 'csv', DELIMITER ';', NULL 'NULL',HEADER, encoding 'latin-1');

-- Verify data
SELECT * FROM visitas;

----------------------------------------------------------------------------------

-- Join tables

CREATE TABLE base AS (
	SELECT * FROM financeiro
	NATURAL JOIN visitas
	NATURAL JOIN vendas
);

-- CREATE TABLE base AS (
-- 	SELECT financeiro.*, visitas.visitas, vendas.vendas 
-- 		FROM visitas
-- 		LEFT JOIN vendas ON visitas.mes = vendas.mes 
-- 			AND visitas.departamento = vendas.departamento 
-- 			AND visitas.uf = vendas.uf
-- 		LEFT JOIN financeiro ON visitas.mes = financeiro.mes 
-- 			AND visitas.departamento = financeiro.departamento 
-- 			AND visitas.uf = financeiro.uf
-- );

-- Verify data
SELECT * FROM base;

----------------------------------------------------------------------------------

-- Export table
COPY base TO '/home/pathilink/Área de Trabalho/tracked_files/B2W_data/base_db.csv' DELIMITER ';' CSV HEADER;

----------------------------------------------------------------------------------
-- encoding
show server_encoding;
show client_encoding;


