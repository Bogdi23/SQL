--SQLQuery3 - CREATE Exams and Schedule.sql

CREATE TABLE Exams
(
	student		INT		NOT NULL,
	discipline	SMALLINT	NOT NULL,
	grade		INT,
	PRIMARY KEY(student,discipline),
	CONSTRAINT	FK_Exams_Student		FOREIGN KEY(student)		REFERENCES	Students(student_id),
	CONSTRAINT	FK_Exams_Discipline		FOREIGN KEY(discipline)		REFERENCES	Disciplines(discipline_id)
);

CREATE TABLE Schedule
(
	lesson_id		INT					PRIMARY KEY,
	[date]			DATE				NOT NULL,
	[time]			TIME				NOT NULL,
	[group]			INT					NOT NULL,
	discipline		SMALLINT			NOT NULL,
	teacher			INT					NOT NULL,
	[subject]		NVARCHAR(256),
	[status]		BIT,
	CONSTRAINT	FK_Schedule_Discipline	FOREIGN KEY(discipline)		REFERENCES	Disciplines(discipline_id),
	CONSTRAINT	FK_Schedule_Teacher		FOREIGN KEY(teacher)		REFERENCES	Teachers(teacher_id),
	CONSTRAINT	FK_Schedule_Group		FOREIGN KEY([group])		REFERENCES	Groups(group_id)
);

--DROP TABLE Exams