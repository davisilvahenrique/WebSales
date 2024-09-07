# Web System ASP.NET Core MVC

**Description**: This is a web system developed with ASP.NET Core MVC and Entity Framework, performing CRUD operations on a MySQL database.

## Table of Contents
1. [Installation](#installation)
2. [Usage](#usage)
3. [Features](#features)
4. [Contact](#contact)

## Installation

### Requirements

- **ASP.NET Core 8.0**
- **Entity Framework Core**
- **MySQL 8.0**

### Step-by-Step

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/project-name.git
    cd project-name
    ```

2. Install MySQL 8.0 (if not already installed).

3. Verify the connection string in the `appsettings.json` file:

    ```json
    "ConnectionStrings": {
        "WebSalesContext": "server=localhost;userid=<your_user>;password=<your_password>;database=websales"
    }
    ```

4. Set up the database:
   - Ensure MySQL is running and the user `<your_user>` with password `<your_password>` is properly configured.
   - Create a database named `websales`.


5. Apply migrations to configure the database:

   - **Using .NET CLI**:
     You can run migrations via the terminal or command line:

     - Open a terminal or command line.
     - Navigate to your project folder (where the `.csproj` file is located).
     
       ```bash
       cd path-to-your-project
       ```

     - Add a new migration:

       ```bash
       dotnet ef migrations add "MigrationName"
       ```

     - Apply the migration to the database:

       ```bash
       dotnet ef database update
       ```

6. Run the project:

    ```bash
    dotnet run
    ```
## Usage

After installation, you can access the web system in your browser via the URL:
```
http://localhost:5062/
```

### Usage examples

- Access the login screen to start a session.
- Create, edit, or delete records in the database through the web interface.

## Features

- **Full CRUD**: Manage records in the database.
- **Authentication**: Login and logout system.
- **MySQL Integration**: Uses Entity Framework Core to access the database.

## Contact

- [GitHub](https://github.com/davisilvahenrique)
- [Linkedin](https://www.linkedin.com/in/davisilvahenrique/)
- davisilvahenrique@gmail.com

