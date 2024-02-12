-- Inserting into Race table
USE newDB;
GO

INSERT INTO [dbo].[Race]
  ([Race])
VALUES
  ('Black'),
  ('Indian'),
  ('Coloured');
	
-- Inserting into Contact_Details table
INSERT INTO [dbo].[Contact_Details]
  ([PhoneNumber], [Email])
VALUES
  ('1234567890', 'john.doe@example.com'),
  ('9876543210', 'jane.smith@example.com'),
  ('5555555555', 'michael.johnson@example.com'),
  ('1112223333', 'emily.brown@example.com'),
  ('4445556666', 'david.williams@example.com'),
  ('7778889999', 'sarah.miller@example.com'),
  ('3332221111', 'christopher.davis@example.com'),
  ('6667778888', 'emma.taylor@example.com'),
  ('9998887777', 'matthew.wilson@example.com'),
  ('1239876543', 'olivia.garcia@example.com'),
  ('1111111111', 'ashley.martinez@example.com'),
  ('2222222222', 'james.moore@example.com'),
  ('3333333333', 'lisa.jones@example.com'),
  ('4444444444', 'megan.thomas@example.com'),
  ('5555555555', 'ryan.johnson@example.com'),
  ('6666666666', 'emily.wilson@example.com'),
  ('7777777777', 'daniel.clark@example.com'),
  ('8888888888', 'nancy.martin@example.com'),
  ('9999999999', 'laura.hill@example.com'),
  ('1010101010', 'joseph.white@example.com'),
  ('1212121212', 'angela.lee@example.com'),
  ('1313131313', 'justin.walker@example.com'),
  ('1414141414', 'rebecca.young@example.com'),
  ('1515151515', 'aaron.wright@example.com'),
  ('1616161616', 'amanda.king@example.com');

	
-- Inserting into Accreditation table
INSERT INTO [dbo].[Accreditation]
  ([Name])
VALUES
  ('Council on Higher Education (CHE)'),
  ('South African Qualifications Authority (SAQA)'),
  ('Higher Education Quality Committee (HEQC)'),
  ('Quality Council for Trades and Occupations (QCTO)'),
  ('Umalusi Council for Quality Assurance in General and Further Education and Training'),
  ('Health Professions Council of South Africa (HPCSA)'),
  ('Council for the Accreditation of Business Schools (CABS)'),
  ('The Independent Institute of Education (IIE)'),
  ('South African Institute of Chartered Accountants (SAICA)'),
  ('Engineering Council of South Africa (ECSA)'),
  ('Council for Higher Education in Art and Design (CHEAD)'),
  ('South African Nursing Council (SANC)'),
  ('South African Pharmacy Council (SAPC)'),
  ('Association of Chartered Certified Accountants (ACCA)'),
  ('Southern African Association for Counselling and Development in Higher Education (SAACDHE)');

-- Inserting into Bursary_Fund table
INSERT INTO [dbo].[Bursary_Fund]
  ([FundAmount])
VALUES
  (15000000.00);
	
-- Inserting into Application_Status table
INSERT INTO [dbo].[Application_Status]
  ([Status])
VALUES
  ('Pending'),
  ('Approved'),
  ('Rejected');
	
-- Inserting into User_Details table
INSERT INTO [dbo].[User_Details]
  ([FirstName], [LastName], [ContactDetailsID])
VALUES
  ('John', 'Doe', 1),
  ('Jane', 'Smith', 2),
  ('Michael', 'Johnson', 3),
  ('Emily', 'Brown', 4),
  ('David', 'Williams', 5),
  ('Sarah', 'Miller', 6),
  ('Christopher', 'Davis', 7),
  ('Emma', 'Taylor', 8),
  ('Matthew', 'Wilson', 9),
  ('Olivia', 'Garcia', 10),
  ('Ashley', 'Martinez', 11),
  ('James', 'Moore', 12),
  ('Lisa', 'Jones', 13),
  ('Megan', 'Thomas', 14),
  ('Ryan', 'Johnson', 15),
  ('Emily', 'Wilson', 16),
  ('Daniel', 'Clark', 17),
  ('Nancy', 'Martin', 18),
  ('Laura', 'Hill', 19),
  ('Joseph', 'White', 20),
  ('Angela', 'Lee', 21),
  ('Justin', 'Walker', 22),
  ('Rebecca', 'Young', 23),
  ('Aaron', 'Wright', 24),
  ('Amanda', 'King', 25);

	
-- Inserting into Institute_Info table
INSERT INTO [dbo].[Institute_Info]
  ([InstituteName], [ContactDetailsID], [BBDBursaryInstituteStatus])
VALUES
  ('Institute A', 1, 2),
  ('Institute B', 2, 2),
  ('Institute C', 3, 1),
  ('Institute D', 4, 3),
  ('Institute E', 5, 2),
  ('Institute F', 6, 2),
  ('Institute G', 7, 1),
  ('Institute H', 8, 1),
  ('Institute I', 9, 3),
  ('Institute J', 10, 3);
	
-- Inserting into Student table
INSERT INTO [dbo].[Student]
  ([UserID], [ID_Number], [RaceID])
VALUES
  (2, '1234567890123', 1),
  (3, '9876543210987', 2),
  (6, '5555555555555', 3),
  (7, '1112223334444', 3),
  (9, '4445556667777', 3),
  (10, '7778889990000', 2),
  (12, '3332221110000', 2),
  (13, '6667778889999', 3),
  (14, '9998887776666', 1),
  (16, '5639876543210', 3),
  (18, '7839876543210', 3),
  (19, '9139876543210', 1),
  (20, '0039876543210', 1),
  (22, '7739875543210', 2),
  (24, '1139872343210', 1),
  (25, '9939876543210', 3);
	
-- Inserting into Head_Of_Department table
INSERT INTO [dbo].[Head_Of_Department]
  ([InstituteID], [UserID], [ContactDetailsID])
VALUES
  (1, 1, 1),
  (2, 4, 2),
  (3, 5, 3),
  (4, 8, 4),
  (5, 11, 5),
  (6, 15, 6),
  (7, 17, 7),
  (8, 21, 8),
  (9, 23, 9);
	
-- Inserting into Institution_Fund_Allocation table
INSERT INTO [dbo].[Institution_Fund_Allocation]
  ([InstituteID], [AllocatedAmount], [BursaryFundID])
VALUES
  (1, 500000.00, 2024),
  (2, 125000.00, 2024),
  (5, 1500000.00, 2024),
  (6, 25000.00, 2024);
	
-- Inserting into Institute_Accreditation table
INSERT INTO [dbo].[Institute_Accreditation]
  ([AccreditationID], [InstituteID])
VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (1, 2),
  (2, 2),
  (3, 2),
  (6, 3),
  (7, 5),
  (8, 5),
  (9, 5),
  (8, 6),
  (4, 7),
  (13, 8);
	
-- Inserting into Courses table
INSERT INTO [dbo].[Courses]
  ([CourseName], [InstituteID])
VALUES
  ('Computer Science', 1),
  ('Medicine', 2),
  ('Engineering', 3),
  ('Business Administration', 4),
  ('Law', 5),
  ('Biology', 6),
  ('Chemistry', 7),
  ('Physics', 8),
  ('Mathematics', 9),
  ('Psychology', 10);

	


-- Inserting into Bursary_Applicants table
INSERT INTO [dbo].[Bursary_Applicants]
  ([StudentID], [HeadOfDepartmentID], [BursaryAmount], [InFinalYear], [Motivation], [BursaryApplicantStatus])
VALUES
  (1, 3, 125000.00, 1, 'Exceptional academic performance demonstrates dedication and potential for future success.', 2),
  (2, 5, 25000.00, 0, 'Demonstrated leadership skills and active involvement in extracurricular activities showcase initiative and commitment.', 2),
  (3, 6, 30000.00, 1, 'Overcoming significant challenges highlights resilience and determination to succeed against adversity.', 2),
  (4, 7, 35000.00, 0, 'Contribution to the community through volunteering reflects a spirit of service and social responsibility.', 1),
  (6, 9, 20000.00, 0, 'Financial need combined with a strong academic record underscores the students deserving candidacy.', 3),
  (7, 8, 25000.00, 1, 'Demonstrated passion for their field of study indicates a genuine commitment to personal and professional growth.', 3),
  (8, 3, 30000.00, 0, 'Positive attitude and eagerness to learn suggest a promising future and a desire to make a meaningful impact.', 2),
  (9, 2, 35000.00, 1, 'Clear goals and aspirations demonstrate a focused direction and readiness to make the most of educational opportunities.', 1),
  (10, 1, 40000.00, 0, 'Recommendations from faculty or mentors attest to the students character, work ethic, and potential contributions.', 2);
	

	
-- Inserting into Bursary_Applicant_Grades table
INSERT INTO [dbo].[Bursary_Applicant_Grades]
  ([BursaryApplicantID],[CourseID], [Grade], [BursaryFundID])
VALUES
  (1, 1, 80.5, 2024),
  (2, 1, 90.5, 2024),
  (3, 1, 100, 2024),
  (4, 2, 85.2, 2024),
  (5, 2, 75.2, 2024),
  (6, 2, 86.2, 2024),
  (7, 3, 79.8, 2024),
  (8, 4, 88.6, 2024);
