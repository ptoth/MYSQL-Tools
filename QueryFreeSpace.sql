/* Script for Database */
SELECT 
	table_schema AS DataBase_Name
	,ROUND(sum( data_length + index_length ) / 1024 /1024,1) AS OccupiedSize_inMB
    ,ROUND(sum( data_free )/ 1024 / 1024,1) AS FreeSpace_inMB 
FROM information_schema.TABLES 
GROUP BY table_schema ;

/* Script for Tables */
SELECT table_Name  AS Table_Name,
   ROUND(SUM(data_length + index_length) / 1024 / 1024, 1) AS TableSize_InMB
   ,ROUND(sum( data_free )/ 1024 / 1024,1) AS FreeSpace_inMB
FROM   information_schema.tables 
WHERE Table_Schema = 'db_name'