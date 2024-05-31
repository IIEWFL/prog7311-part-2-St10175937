[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/r62uPNsG)
# AgriEnergyConnect Platform
 AgriEnergyConnect is a web application designed to facilitate connections between farmers and employees in the agricultural industry.

### Table of Contents
## Introduction
## Features
## Installation
## Usage
## Contributing

# Introduction
AgriEnergyConnect aims to streamline communication and collaboration between farmers and employees. By providing a platform for farmers to showcase their products and for employees to manage farmer profiles and product data, AgriEnergyConnect enhances efficiency and productivity in the agricultural sector.
# System Functionalities and User Roles
Functionalities
### Farmers: 
Farmers can add and manage their products, including adding new products and viewing existing ones.
### Employees:
Employees can manage farmer profiles and view/filter products based on criteria such as date range and product type.
### User Roles
##### Farmer: 
Users with the "Farmer" role can manage their own products.
##### Employee:
Users with the "Employee" role can manage farmer profiles and view all products.
## Features
### Farmers:
Add and manage products with details such as name, category, and production date.
View and update farmer profile information.
### Employees:
Add new farmer profiles to the system.
View and filter products based on criteria such as date range and product type.
Installation
#### To install AgriEnergyConnect, follow these steps:

#### Clone the repository to your local machine:
bash
git clone https://github.com/yourusername/AgriEnergyConnect.git
Install dependencies using NuGet Package Manager:
bash
cd AgriEnergyConnect
dotnet restore
### Update the connection string in appsettings.json to point to your MySQL database.

### Apply database migrations to create the necessary tables in your MySQL database:

# sql
dotnet ef database update
Usage
# To use AgriEnergyConnect, follow these steps:

Build the solution using the .NET CLI:
dotnet build
Run the application using the .NET CLI:

arduino
dotnet run
Access the application by navigating to http://localhost:5000 in your web browser.
