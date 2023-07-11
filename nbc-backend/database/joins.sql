CREATE DATABASE joinsPractice

USE joinsPractice


-- Create the Leaders table
CREATE TABLE Leaders (
  LeaderID INT PRIMARY KEY,
  FullName VARCHAR(100),
  Gender VARCHAR(10),
  Position VARCHAR(100),
  FavoriteQuote VARCHAR(200),
  DepartmentID INT,
  CONSTRAINT FK_Leaders_Departments FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Create the Departments table
CREATE TABLE Departments (
  DepartmentID INT PRIMARY KEY,
  DepartmentName VARCHAR(100),
  DepartmentHead VARCHAR(100),
  Description VARCHAR(200)
);


INSERT INTO Leaders (LeaderID, FullName, Gender, Position, FavoriteQuote, DepartmentID)
VALUES
  (1, 'John Doe', 'Male', 'Pastor', 'The best way to predict the future is to create it.', 1),
  (2, 'Jane Smith', 'Female', 'Deacon', 'Be the change you wish to see in the world.', 4),
  (3, 'Michael Johnson', 'Male', 'Elder', 'Success is not final, failure is not fatal: It is the courage to continue that counts.', 1),
  (4, 'Emily Davis', 'Female', 'Youth Minister', 'The future belongs to those who believe in the beauty of their dreams.', 2),
  (5, 'Robert Wilson', 'Male', 'Worship Leader', 'Music is the universal language of mankind.', 3),
  (6, 'Sarah Thompson', 'Female', 'Sunday School Teacher', 'Education is the most powerful weapon which you can use to change the world.', 5),
  (7, 'David Brown', 'Male', 'Missions Coordinator', 'We make a living by what we get, but we make a life by what we give.', 4),
  (8, 'Michelle Martinez', 'Female', 'Community Outreach', 'In a world where you can be anything, be kind.', 4),
  (9, 'Daniel Lee', 'Male', 'Finance Manager', 'The only way to do great work is to love what you do.', 6),
  (10, 'Stephanie Clark', 'Female', 'Children''s Minister', 'Children are the hands by which we take hold of heaven.', 8);


INSERT INTO Departments (DepartmentID, DepartmentName, DepartmentHead, Description)
VALUES
  (1, 'Administration', 'John Smith', 'Responsible for overseeing overall administrative functions.'),
  (2, 'Youth Ministry', 'Sarah Johnson', 'Focuses on engaging and nurturing the spiritual growth of the youth.'),
  (3, 'Worship and Music', 'David Brown', 'Responsible for coordinating worship services and music activities.'),
  (4, 'Missions and Outreach', 'Emily Davis', 'Focuses on local and global mission initiatives and community outreach.'),
  (5, 'Education', 'Jennifer Thompson', 'Oversees Sunday school programs and educational activities.'),
  (6, 'Finance and Stewardship', 'Michael Wilson', 'Handles financial matters and promotes responsible stewardship.'),
  (7, 'Technical Ministry', 'Jessica Lee', 'Manages audiovisual systems and technical aspects of worship services.'),
  (8, 'Children''s Ministry', 'Amy Martinez', 'Focuses on the spiritual growth and well-being of children.'),
  (9, 'Hospitality', 'Daniel Garcia', 'Ensures a welcoming and hospitable environment for members and visitors.'),
  (10, 'Prayer and Care', 'Karen Clark', 'Provides prayer support and pastoral care to the congregation.');

GO 

CREATE PROCEDURE ShowLeadersWithDepartments
AS
BEGIN
  SELECT L.FullName AS LeaderName, L.Position, L.FavoriteQuote, D.DepartmentName
  FROM Leaders AS L
  INNER JOIN Departments AS D ON L.DepartmentID = D.DepartmentID;
END;

EXEC ShowLeadersWithDepartments;