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

CREATE PROCEDURE getOneEvent
@EventID INT
AS
BEGIN
  SELECT * FROM Events WHERE EventID = @EventID;
END

EXEC getOneEvent @EventID = 2
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

CREATE TABLE baptistChurchMembers (
    member_id INT IDENTITY(1, 1) PRIMARY KEY,
    full_name VARCHAR(100),
    dob DATE,
    age AS DATEDIFF(YEAR, dob, GETDATE()),
    gender VARCHAR(10),
    fellowship VARCHAR(100),
    ministry VARCHAR(100),
    department VARCHAR(100),
    contact_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

INSERT INTO baptistChurchMembers (full_name, dob, gender, fellowship, ministry, department, contact_number, email, address)
VALUES
    ('John Doe', '1990-05-15', 'Male', 'Youth Fellowship', 'Music Ministry', 'Worship Department', '1234567890', 'johndoe@example.com', '123 Main St'),
    ('Jane Smith', '1988-10-25', 'Female', 'Women Fellowship', 'Children Ministry', 'Education Department', '9876543210', 'janesmith@example.com', '456 Elm St'),
    ('Mark Johnson', '1995-03-12', 'Male', 'Men Fellowship', 'Outreach Ministry', 'Evangelism Department', '7894561230', 'markjohnson@example.com', '789 Oak Ave'),
    ('Sarah Williams', '1992-07-20', 'Female', 'Youth Fellowship', 'Prayer Ministry', 'Discipleship Department', '6547893210', 'sarahwilliams@example.com', '321 Pine St'),
    ('Michael Davis', '1985-09-05', 'Male', 'Women Fellowship', 'Missions Ministry', 'Social Services Department', '9871234560', 'michaeldavis@example.com', '456 Walnut Ave'),
    ('Emily Wilson', '1993-12-28', 'Female', 'Men Fellowship', 'Media Ministry', 'Technical Department', '3219876540', 'emilywilson@example.com', '987 Cedar St'),
    ('David Thompson', '1997-06-10', 'Male', 'Youth Fellowship', 'Youth Ministry', 'Youth Department', '6541237890', 'davidthompson@example.com', '654 Maple Ave'),
    ('Sophia Martinez', '1991-02-14', 'Female', 'Women Fellowship', 'Finance Ministry', 'Finance Department', '7893216540', 'sophiamartinez@example.com', '123 Elm St'),
    ('Matthew Taylor', '1989-11-02', 'Male', 'Men Fellowship', 'Hospitality Ministry', 'Hospitality Department', '4567891230', 'matthewtaylor@example.com', '987 Oak Ave'),
    ('Olivia Clark', '1994-08-17', 'Female', 'Youth Fellowship', 'Drama Ministry', 'Creative Arts Department', '3214567890', 'oliviaclark@example.com', '654 Pine St'),
    ('Robert Johnson', '1991-06-30', 'Male', 'Men Fellowship', 'Teaching Ministry', 'Education Department', '7896541230', 'robertjohnson@example.com', '789 Walnut Ave'),
    ('Laura Adams', '1987-04-12', 'Female', 'Women Fellowship', 'Counseling Ministry', 'Pastoral Care Department', '6543217890', 'lauraadams@example.com', '321 Cedar St'),
    ('Daniel Wilson', '1993-09-18', 'Male', 'Youth Fellowship', 'Sports Ministry', 'Recreation Department', '7890123456', 'danielwilson@example.com', '123 Oak Ave'),
    ('Grace Thompson', '1996-02-08', 'Female', 'Women Fellowship', 'Praise and Worship Ministry', 'Music Department', '9876543210', 'gracethompson@example.com', '456 Pine St'),
    ('Jonathan Smith', '1992-11-25', 'Male', 'Men Fellowship', 'Technical Ministry', 'Technical Department', '6543217890', 'jonathansmith@example.com', '789 Elm St'),
    ('Rachel Davis', '1990-07-14', 'Female', 'Youth Fellowship', 'Youth Ministry', 'Youth Department', '7890123456', 'racheldavis@example.com', '321 Maple Ave'),
    ('Nathan Wilson', '1994-04-30', 'Male', 'Men Fellowship', 'Media Ministry', 'Media Department', '0123456789', 'nathanwilson@example.com', '654 Cedar St'),
    ('Emily Johnson', '1988-01-20', 'Female', 'Women Fellowship', 'Children Ministry', 'Education Department', '7896543210', 'emilyjohnson@example.com', '789 Oak Ave'),
    ('David Smith', '1995-09-08', 'Male', 'Youth Fellowship', 'Outreach Ministry', 'Evangelism Department', '3210123456', 'davidsmith@example.com', '987 Pine St'),
    ('Olivia Adams', '1993-03-17', 'Female', 'Women Fellowship', 'Prayer Ministry', 'Discipleship Department', '6547890123', 'oliviaadams@example.com', '123 Walnut Ave')
   
GO

CREATE PROCEDURE ViewAllMembers
AS
BEGIN
    SELECT *
    FROM baptistChurchMembers;
END;
EXEC ViewAllMembers;


GO



-- Create Ministries table
-- Create Ministries table
CREATE TABLE churchMinistries (
    ministry_id INT IDENTITY(1, 1) PRIMARY KEY,
    ministry_name VARCHAR(100),
    ministry_description VARCHAR(255),
    chairperson INT,
    vice_chair INT,
    secretary INT,
    vice_secretary INT,
    treasurer INT,
    organizing_secretary INT,
    payer_coordinator INT,
    FOREIGN KEY (chairperson) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (vice_chair) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (secretary) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (vice_secretary) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (treasurer) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (organizing_secretary) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (payer_coordinator) REFERENCES baptistChurchMembers(member_id)
);

INSERT INTO churchMinistries (ministry_name, ministry_description, chairperson, vice_chair, secretary, vice_secretary, treasurer, organizing_secretary, payer_coordinator)
VALUES
    ('Worship Ministry', 'Responsible for leading worship during church services', 1, 2, 3, 4, 5, 6, 7),
    ('Children Ministry', 'Focuses on the spiritual development of children', 8, 9, 10, 11, 12, 13, 14),
    ('Outreach Ministry', 'Engages in evangelism and community outreach programs', 15, 16, 17, 18, 19, 20, 1),
    ('Youth Ministry', 'Ministry dedicated to serving the needs of the youth', 2, 3, 4, 5, 6, 7, 8),
    ('Prayer Ministry', 'Focuses on fostering a culture of prayer within the church', 9, 10, 11, 12, 13, 14, 15);

-- Create Fellowships table
CREATE TABLE churchFellowships (
    fellowship_id INT IDENTITY(1, 1) PRIMARY KEY,
    fellowship_name VARCHAR(100),
    fellowship_description VARCHAR(255),
    fellowship_location VARCHAR(100),
    chairperson INT,
    assistant_chair INT,
    secretary INT,
    treasurer INT,
    organizer INT,
    coordinator INT,
    FOREIGN KEY (chairperson) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (assistant_chair) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (secretary) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (treasurer) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (organizer) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (coordinator) REFERENCES baptistChurchMembers(member_id)
);


INSERT INTO churchFellowships (fellowship_name, fellowship_description, fellowship_location, chairperson, assistant_chair, secretary, treasurer, organizer, coordinator)
VALUES
    ('Young Adults Fellowship', 'Fellowship for young adults aged 18-30', 'Main Hall', 1, 2, 3, 4, 5, 6),
    ('Women Fellowship', 'Fellowship for women of all ages', 'Meeting Room 1', 7, 8, 9, 10, 11, 12),
    ('Men Fellowship', 'Fellowship for men of all ages', 'Meeting Room 2', 13, 14, 15, 16, 17, 18),
    ('Youth Fellowship', 'Fellowship for teenagers and young adults', 'Youth Center', 19, 20, 1, 2, 3, 4),
    ('Seniors Fellowship', 'Fellowship for senior members', 'Community Hall', 5, 6, 7, 8, 9, 10);

go
CREATE PROCEDURE viewFellowships
AS
BEGIN
    SELECT *
    FROM churchFellowships;
END;
EXEC ViewAllMembers;
GO

-- Create Departments table
CREATE TABLE churchDepartments (
    department_id INT IDENTITY(1, 1) PRIMARY KEY,
    department_name VARCHAR(100),
    department_description VARCHAR(255),
    chairperson INT,
    assistant_chairperson INT,
    secretary INT,
    assistant_secretary INT,
    treasurer INT,
    organizer INT,
    coordinator INT,
    FOREIGN KEY (chairperson) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (assistant_chairperson) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (secretary) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (assistant_secretary) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (treasurer) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (organizer) REFERENCES baptistChurchMembers(member_id),
    FOREIGN KEY (coordinator) REFERENCES baptistChurchMembers(member_id)
);

INSERT INTO churchDepartments (department_name, department_description, chairperson, assistant_chairperson, secretary, assistant_secretary, treasurer, organizer, coordinator)
VALUES
    ('Worship Department', 'Responsible for leading worship services', 1, 2, 3, 4, 5, 6, 7),
    ('Children''s Department', 'Handles activities and programs for children', 8, 9, 10, 11, 12, 13, 14),
    ('Outreach Department', 'Engages in community outreach and evangelism', 15, 16, 17, 18, 19, 20, 1),
    ('Education Department', 'Oversees teaching and discipleship programs', 2, 3, 4, 5, 6, 7, 8),
    ('Administration Department', 'Manages administrative tasks and church operations', 9, 10, 11, 12, 13, 14, 15);


