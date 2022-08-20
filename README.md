# to-do-mtp
To-Do list I developed using ASP.NET, C# and Bulma CSS Framework with SQL Server 

![ezgif com-gif-maker(1)](https://user-images.githubusercontent.com/9470353/185767936-1bf53611-a882-45a9-b90d-1f38c3b525bd.gif)

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
