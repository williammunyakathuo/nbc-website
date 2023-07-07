USE church;

CREATE TABLE Events (
    EventID INT  IDENTITY(1,1) PRIMARY KEY,
    EventName VARCHAR(50),
    EventDate DATE,
    Location VARCHAR(100),
    Organizer VARCHAR(50),
    OrganizingMinistry VARCHAR(100),
    OrganizerContact VARCHAR(100),
    Description VARCHAR(500)
);

INSERT INTO Events (EventName, EventDate, Location, Organizer, OrganizingMinistry, OrganizerContact, Description)
VALUES ('Event 4', '2023-07-10', 'Venue 1', 'Organizer 1', 'Ministry 4', 'Contact 4', 'Description 4'),
       ('Event 5', '2023-07-15', 'Venue 2', 'Organizer 2', 'Ministry 5', 'Contact 5', 'Description 5');


SELECT * FROM Events;

GO

CREATE PROCEDURE GetAllEvents
AS
BEGIN
  SELECT * FROM Events;
END;



EXECUTE GetAllEvents;

GO

CREATE TABLE ChurchAnnouncements (
    AnnouncementID INT IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(100),
    DatePosted DATE,
    Content VARCHAR(MAX),
    MinistryConcerned VARCHAR(100),
    Liaison VARCHAR(50)
);

INSERT INTO ChurchAnnouncements (Title, DatePosted, Content, MinistryConcerned, Liaison)
VALUES ('Upcoming Event', '2023-07-10', 'Join us for an upcoming event!', 'Events Ministry', 'John Doe'),
       ('Volunteer Opportunity', '2023-07-15', 'We need volunteers for community outreach.', 'Outreach Ministry', 'Jane Smith');


SELECT * FROM ChurchAnnouncements;

GO

CREATE PROCEDURE GetChurchAnnouncements
AS
BEGIN
  SELECT * FROM ChurchAnnouncements;
END;


EXEC GetChurchAnnouncements;


GO

CREATE TABLE preachings (
  id INT IDENTITY(1,1) PRIMARY KEY,
  date_preached DATE,
  preacher VARCHAR(255),
  title VARCHAR(255),
  main_verse VARCHAR(255),
  teaching TEXT,
  duration_minutes INT,
  series_name VARCHAR(255),
  location VARCHAR(255),
  media_link VARCHAR(255)
);

INSERT INTO preachings (date_preached, preacher, title, main_verse, teaching, duration_minutes, series_name, location, media_link)
VALUES
('2023-01-01', 'John Doe', 'The Power of Faith', 'John 3:16', 'Teaching content goes here', 30, 'Faith Series', 'New Hope Church', 'https://example.com/sermon1'),
('2023-02-15', 'Jane Smith', 'Finding Joy in Adversity', 'Romans 8:28', 'Teaching content goes here', 45, 'Finding Joy Series', 'Grace Chapel', 'https://example.com/sermon2'),
('2023-03-20', 'Mark Johnson', 'Living a Purposeful Life', 'Ephesians 2:10', 'Teaching content goes here', 35, 'Purpose Series', 'Victory Church', 'https://example.com/sermon3');

GO

CREATE PROCEDURE GetAllPreachings
AS
BEGIN
  SELECT * FROM preachings;
END;

EXEC GetAllPreachings;


GO

CREATE TABLE slideshow (
    id INT PRIMARY KEY IDENTITY(1,1),
    imageURL VARCHAR(255),
    linkURL VARCHAR(255),
    caption VARCHAR(255)
);

INSERT INTO slideshow (imageURL, linkURL, caption)
VALUES
    ('bornagain', 'link1', 'Image of a Joyful Moment: A Person Embracing a New Life in Christ'),
    ('congregation', 'link2', 'Gathering of Faithful Believers: Congregation Engaged in Worship'),
    ('leadersdedication', 'link3', 'Celebrating Commitment: Dedication Ceremony for Church Leaders'),
    ('prayer.jpg', 'link4', 'The Power of Prayer: Individuals Engaged in Prayerful Reflection'),
    ('youthleaders', 'link5', 'Empowering the Future: Youth Leaders Taking Charge'),
    ('leadersdedication', 'link6', 'Honoring Leaders: Special Dedication Event for Esteemed Leaders'),
    ('pastor', 'link7', 'Guidance and Spiritual Leadership: Pastor Leading the Congregation');

UPDATE slideshow
SET imageURL = 'prayer'
WHERE id = 4;

GO

CREATE PROCEDURE GetAllSlideshows
AS
BEGIN
    SELECT * FROM slideshow;
END;

EXEC GetAllSlideshows;

GO

-- Create the ChurchLeaders table
CREATE TABLE ChurchLeaders (
  leaderID INT PRIMARY KEY,
  fullName VARCHAR(100),
  gender VARCHAR(10),
  position VARCHAR(100),
  favoriteQuote VARCHAR(200)
);

-- Insert 10 leader records
INSERT INTO ChurchLeaders (leaderID, fullName, gender, position, favoriteQuote)
VALUES
  (1, 'John Doe', 'Male', 'Pastor', 'The best way to predict the future is to create it.'),
  (2, 'Jane Smith', 'Female', 'Deacon', 'Be the change you wish to see in the world.'),
  (3, 'Michael Johnson', 'Male', 'Elder', 'Success is not final, failure is not fatal: It is the courage to continue that counts.'),
  (4, 'Emily Davis', 'Female', 'Youth Minister', 'The future belongs to those who believe in the beauty of their dreams.'),
  (5, 'Robert Wilson', 'Male', 'Worship Leader', 'Music is the universal language of mankind.'),
  (6, 'Sarah Thompson', 'Female', 'Sunday School Teacher', 'Education is the most powerful weapon which you can use to change the world.'),
  (7, 'David Brown', 'Male', 'Missions Coordinator', 'We make a living by what we get, but we make a life by what we give.'),
  (8, 'Michelle Martinez', 'Female', 'Community Outreach', 'In a world where you can be anything, be kind.'),
  (9, 'Daniel Lee', 'Male', 'Finance Manager', 'The only way to do great work is to love what you do.'),
  (10, 'Stephanie Clark', 'Female', 'Children''s Minister', 'Children are the hands by which we take hold of heaven.');


go
-- Create a stored procedure to display leaders with gender balance and limit to 4
CREATE PROCEDURE GetChurchLeaders
AS
BEGIN
  SELECT TOP 4 *
  FROM ChurchLeaders
  ORDER BY NEWID();
END;


EXEC GetChurchLeaders

GO