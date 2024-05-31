create database agriconnect;
CREATE TABLE Farmers (
    FarmerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    PhoneNumber VARCHAR(15)
);
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    FarmerID INT,
    Name VARCHAR(100) NOT NULL,
    Category VARCHAR(100),
    ProductionDate DATE,
    FOREIGN KEY (FarmerID) REFERENCES Farmers(FarmerID)
);
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    UserName VARCHAR(100) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    Role ENUM('Farmer', 'Employee') NOT NULL
);
CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL
);

INSERT INTO Employees (Name, Email, PasswordHash) VALUES 
('Junior', 'junior@example.com', 'hashedpassword5'),
('Mbali', 'mbali@example.com', 'hashedpassword6');

INSERT INTO Farmers (Name, Email, PasswordHash, Address, PhoneNumber) VALUES 
('Michael Farmer', 'michael@example.com', 'hashedpassword1', '789 Orchard Lane', '082 123 4567'),
('Emily Farmer', 'emily@example.com', 'hashedpassword2', '101 Vineyard Street', '071 987 6543'),
('Sarah Farmer', 'sarah@example.com', 'hashedpassword3', '222 Farm Road', '083 456 7890'),
('David Farmer', 'david@example.com', 'hashedpassword4', '333 Ranch Lane', '072 345 6789');

INSERT INTO Products (FarmerID, Name, Category, ProductionDate) VALUES 
(1, 'Organic Oranges', 'Fruit', '2024-05-05'),
(2, 'Grass-fed Beef', 'Meat', '2024-05-06'),
(3, 'Organic Strawberries', 'Fruit', '2024-05-07'),
(4, 'Free-range Pork', 'Meat', '2024-05-08');

