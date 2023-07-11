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
INSERT INTO preachings (date_preached, preacher, title, main_verse, teaching, duration_minutes, series_name, location, media_link)
VALUES
('2023-01-01', 'John Doe', 'The Power of Faith', 'John 3:16', 'Teaching content goes here', 30, 'Faith Series', 'New Hope Church', 'https://example.com/sermon1'),
('2023-02-15', 'Jane Smith', 'Finding Joy in Adversity', 'Romans 8:28', 'Teaching content goes here', 45, 'Finding Joy Series', 'Grace Chapel', 'https://example.com/sermon2'),
('2023-03-20', 'Mark Johnson', 'Living a Purposeful Life', 'Ephesians 2:10', 'Teaching content goes here', 35, 'Purpose Series', 'Victory Church', 'https://example.com/sermon3'),
('2023-04-05', 'Sarah Adams', 'Overcoming Fear and Doubt', '2 Timothy 1:7', 'In this teaching, we will explore strategies to overcome fear and doubt in our lives. We will learn how to rely on Gods promises and trust in His power. Join us as we discover the freedom that comes from living without fear and doubt.', 50, 'Victorious Living Series', 'Hope Community Church', 'https://example.com/sermon4'),
('2023-05-10', 'Michael Brown', 'Walking in Love', '1 Corinthians 13:4-8', 'Love is a powerful force that can transform lives and bring healing to broken relationships. In this teaching, we will explore the characteristics of love and how we can walk in love towards others. Let us embrace the call to love one another as Christ has loved us.', 55, 'Love Revolution Series', 'Grace Church', 'https://example.com/sermon5'),
('2023-06-15', 'Emily Davis', 'Living in Gods Abundance', 'Philippians 4:19', 'God desires to bless us abundantly and provide for all our needs. In this teaching, we will discover how to align ourselves with Gods plans and experience His overflowing blessings in our lives. Let us step into a life of abundance and gratitude.', 60, 'Abundant Living Series', 'New Life Center', 'https://example.com/sermon6'),
('2023-07-20', 'Daniel Wilson', 'Building Strong Foundations', 'Matthew 7:24-27', 'A strong foundation is essential for a successful and enduring life. In this teaching, we will learn the importance of building our lives on the solid rock of Gods Word and principles. Let us establish strong foundations that will withstand the storms of life.', 65, 'Solid Rock Series', 'Cornerstone Church', 'https://example.com/sermon7'),
('2023-08-25', 'Olivia Taylor', 'Unlocking the Power of Prayer', 'James 5:16', 'Prayer is a powerful tool that connects us to the heart of God and releases His power into our lives. In this teaching, we will explore the principles of effective prayer and learn how to unlock its transformative power. Join us as we deepen our prayer lives and experience breakthroughs.', 70, 'Prayer Revolution Series', 'Hope Valley Church', 'https://example.com/sermon8'),
('2023-09-30', 'William Anderson', 'Living with a Kingdom Mindset', 'Matthew 6:33', 'As followers of Christ, we are called to live with a Kingdom mindset, seeking first Gods Kingdom and His righteousness. In this teaching, we will explore what it means to prioritize Gods Kingdom in our lives and how it impacts our choices and priorities. Let us align our hearts with Gods eternal purposes.', 75, 'Kingdom Living Series', 'Victory Center', 'https://example.com/sermon9'),
('2023-10-15', 'Sophia Wilson', 'The Transforming Power of Worship', 'Psalm 100:1-5', 'Worship is more than singing songs; it is a lifestyle of honoring and glorifying God. In this teaching, we will delve into the transformative power of worship and how it can bring us closer to God and renew our minds. Join us as we encounter Gods presence and experience personal transformation.', 80, 'Worship Encounter Series', 'Graceful Worship Center', 'https://example.com/sermon10');


GO

CREATE  PROCEDURE GetAllofPreachings
AS
BEGIN
  SELECT * FROM preachings;
END;

EXEC GetAllofPreachings

GO

CREATE PROCEDURE DeletePreaching
  @preachingId INT
AS
BEGIN
  DELETE FROM preachings WHERE id = @preachingId;
END;

EXEC DeletePreaching @preachingId = 1004;

GO

CREATE PROCEDURE UpdatePreaching
  @preachingId INT,
  @datePreached DATE,
  @preacher VARCHAR(255),
  @title VARCHAR(255),
  @mainVerse VARCHAR(255),
  @teaching TEXT,
  @durationMinutes INT,
  @seriesName VARCHAR(255),
  @location VARCHAR(255),
  @mediaLink VARCHAR(255)
AS
BEGIN
  UPDATE preachings
  SET date_preached = @datePreached,
      preacher = @preacher,
      title = @title,
      main_verse = @mainVerse,
      teaching = @teaching,
      duration_minutes = @durationMinutes,
      series_name = @seriesName,
      location = @location,
      media_link = @mediaLink
  WHERE id = @preachingId;
END;

EXEC UpdatePreaching
  @preachingId = 10,
  @datePreached = '2023-07-10',
  @preacher = 'Jane Doe',
  @title = 'The Power of Faith',
  @mainVerse = 'John 3:16',
  @teaching = 'This sermon explores the significance of faith in our lives.',
  @durationMinutes = 45,
  @seriesName = 'Faith Series',
  @location = 'New City Church',
  @mediaLink = 'https://example.com/sermon123';

GO

CREATE PROCEDURE CreatePreaching
  @datePreached DATE,
  @preacher VARCHAR(255),
  @title VARCHAR(255),
  @mainVerse VARCHAR(255),
  @teaching TEXT,
  @durationMinutes INT,
  @seriesName VARCHAR(255),
  @location VARCHAR(255),
  @mediaLink VARCHAR(255)
AS
BEGIN
  INSERT INTO preachings (date_preached, preacher, title, main_verse, teaching, duration_minutes, series_name, location, media_link)
  VALUES (@datePreached, @preacher, @title, @mainVerse, @teaching, @durationMinutes, @seriesName, @location, @mediaLink);
END;

EXEC CreatePreaching
  @datePreached = '2023-07-10',
  @preacher = 'Jane Doe',
  @title = 'The Power of Faith',
  @mainVerse = 'John 3:16',
  @teaching = 'This sermon explores the significance of faith in our lives.',
  @durationMinutes = 45,
  @seriesName = 'Faith Series',
  @location = 'New City Church',
  @mediaLink = 'https://example.com/sermon123';



GO

CREATE  PROCEDURE GetAllPreachings
AS
BEGIN
  SELECT TOP 3 * FROM preachings;
END;

EXEC GetAllPreachings;


GO

CREATE PROCEDURE GetSermonByID
  @id INT
AS
BEGIN
  SELECT * FROM preachings WHERE id = @id;
END;

EXEC GetSermonByID @id = 2;


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

CREATE TABLE Fellowships (
  FellowshipID INT PRIMARY KEY,
  FellowshipName VARCHAR(100),
  Description VARCHAR(200),
  Location VARCHAR(100),
  Leader VARCHAR(100)
);

INSERT INTO Fellowships (FellowshipID, FellowshipName, Description, Location, Leader)
VALUES
  (1, 'Kiawara Fellowship', 'A fellowship focused on community outreach and evangelism.', 'Kiawara', 'John Smith'),
  (2, 'BV Fellowship', 'A fellowship dedicated to Bible study and spiritual growth.', 'BV', 'Jane Doe'),
  (3, 'Kiganjo Fellowship', 'A fellowship for young adults seeking fellowship and discipleship.', 'Kiganjo', 'Michael Johnson'),
  -- Add two more entries as needed
  (4, 'Another Fellowship', 'Description of another fellowship.', 'Location of another fellowship', 'Leader of another fellowship'),
  (5, 'Yet Another Fellowship', 'Description of yet another fellowship.', 'Location of yet another fellowship', 'Leader of yet another fellowship');

GO

CREATE PROCEDURE ViewAllFellowships
AS
BEGIN
  SELECT *
  FROM Fellowships;
END;

EXEC ViewAllFellowships

GO

ALTER TABLE Fellowships
ADD Time TIME,
    DayOfWeek VARCHAR(20);

UPDATE Fellowships
SET Time = '19:00:00', DayOfWeek = 'Wednesday'
WHERE FellowshipName = 'Kiawara Fellowship';

UPDATE Fellowships
SET Time = '18:30:00', DayOfWeek = 'Thursday'
WHERE FellowshipName = 'BV Fellowship';

UPDATE Fellowships
SET Time = '20:00:00', DayOfWeek = 'Friday'
WHERE FellowshipName = 'Kiganjo Fellowship';

UPDATE Fellowships
SET Time = '17:30:00', DayOfWeek = 'Monday'
WHERE FellowshipName = 'Another Fellowship';

UPDATE Fellowships
SET Time = '16:00:00', DayOfWeek = 'Tuesday'
WHERE FellowshipName = 'Yet Another Fellowship';

GO

CREATE PROCEDURE ViewFellowships
AS
BEGIN
  SELECT TOP 2 *
  FROM Fellowships;
END;

EXEC ViewFellowships
