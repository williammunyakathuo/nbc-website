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