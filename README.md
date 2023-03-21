Welcome to the MiniProjectSQL

 ## 🛠️ Tools
    
    - C# programming language
    - .NET Framework
    -  SQL database
    -  Dapper (a Micro ORM for .NET)
    -  Visual Studio (IDE for C# development)
    
    
    
 ## Requirements

     To run the application, the following requirements must be met:

    - Microsoft Visual Studio IDE.
    
    - PostgreSQL installed on the system.
    

## ⚙️ Installation

To install and run the application, follow the steps below:

    1. Clone the repository to your local machine.
    
    2. Open the solution in Visual Studio.
    
    3. Open the PostgresqlConnection.cs file and modify the PostgreSQL
    
       connection string to match your PostgreSQL server credentials.
       
    4. Build and run the application in Visual Studio.
    
    
    
## 💻 Code Structure

   The code is structured in the following way:
   
   The primary entry point for the application is Program.cs. contains the primary menu structure as well as tools for adding people, projects, and recording time      worked.

   PostgresqlConnection.cs is a static class that uses Dapper and Npgsql to manage all database interactions. 

   Contains methods for creating a user, a project, retrieving a user or project by name, and logging the amount of time a person spent working on a project.

   Entity models used in the program are housed in the subdirectory called "SQLModels." 
   UserModel.cs, ProjectModel.cs, and ProjectPersonModel.cs are all included.

   A folder called "DataAccess" houses the database structure.


