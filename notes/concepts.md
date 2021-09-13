# Concepts

## Module 1

### 1 Understanding Data Storage Models

#### Hierarchical Databases

- A parent can have many children but a child can only have one parent
- Has trouble modeling things that aren't "above and below"
- We use a relational database for complex structures

#### Relational Databases

- Break tables down into many separate tables to more easily relate the data
- Constraints: limit what you can do on a column. Only unique values etc
- Referential integrity - make sure related data exists in parent before allowing entries in the child
- MSSQL: uses transact SQL
- We always want to calculate values or derive them from existing data instead of storing the data and having to maintain it

### 3 Understanding Data Definition Language

- Used to define data structures in SQL server. These statements create and manipulate database objects. Employs USE, CREATE, ALTER, DROP, TRUNCATE, DELETE
- Write keywords using uppercase letters
- Terminator is `;`
- Comment is `--` for single line or `/* */` for multiline
- Ctrl+Shift+R refreshes the intellisense cache

#### Create a new table

```sql
CREATE TABLE ZhongwenTest (
	"Reasons it is hard" nvarchar(50) NOT NULL,
	"UID" uniqueidentifier DEFAULT newid()
);
```

#### Create New Database

```sql
CREATE DATABASE MyNewDatabase;
```

#### Use a Specific Database

``` sql
USE [database_name] -- Include the square brackets. They aren't required though unless you 
                    -- have a name with symbols.
```

### Add/Drop a Column

Replace the word `ADD` with `DROP` to drop something.

```sql
USE [database_name]
ALTER TABLE <TABLE_NAME>
ADD <COLUMN_NAME> <DATA_TYPE>
```

##### Add Multiple Columns

```sql
USE [database_name]
ALTER TABLE <TABLE_NAME>
ADD <COLUMN_NAME> <DATA_TYPE>,
    <NEXT_COLUMN_NAME> <NEXT_COLUMN_TYPE>
```

#### Remove Data from a Table with Truncate

```sql
USE [database_name]
TRUNCATE TABLE <TABLE_NAME>
```

#### Copy a Table with Into

```sql
USE [database_name]
SELECT *
INTO <NEW_TABLE_NAME>
FROM <COPY_SOURCE_TABLE>;
```