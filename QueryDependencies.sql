/* Find Table Dependency in Foreign Key Constraint. */
SELECT 
     Constraint_Type
    ,Constraint_Name
    ,Table_Schema
    ,Table_Name
FROM information_schema.table_constraints
WHERE Constraint_Type = 'FOREIGN KEY'
    AND Table_Name = 'Any_Table'
    AND Table_Schema ='db_Name';

/* Find Table Dependency in Views. */
SELECT *
FROM information_schema.views 
WHERE Table_Schema='db_name' 
  AND Table_Name = 'table_name'

/* Find Table Dependency in Stored Procedure. */
SELECT 
    Table_Schema
    ,Table_Name
    ,Table_Type
    ,Engine
    ,Routine_Name
    ,Routine_Schema
    ,Routine_Type
FROM information_schema.tables
 INNER JOIN information_schema.routines
    ON routines.routine_definition 
    LIKE  Concat('%', tables.table_name, '%')
WHERE Table_Schema ='db_name'