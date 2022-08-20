# to-do-mtp
To-Do list I developed using ASP.NET and C# with SQL Server and Bulma CSS Framework

![ezgif com-gif-maker](https://user-images.githubusercontent.com/9470353/185767529-946c7490-88b3-48c2-9c7e-3a4643e5c9a5.gif)

# SQL Server Queries:
* First: Create Database
<code>
CREATE DATABASE todo_db
</code><br/><br/>

* Then: Create Table
<code>
 CREATE TABLE todoTable (
    ID int IDENTITY(1,1) PRIMARY KEY,
    TODO varchar(255) NOT NULL
); 
</code>
