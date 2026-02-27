--SQLQuery4 - CREATE HomeWork and Grades.sql

--CREATE TABLE HomeWork
--(
--	[group]			INT				NOT NULL,
--	lesson			INT				NOT NULL,
--	task			BINARY(1000),
--	deadline		INT,
--	PRIMARY KEY([group],lesson),
--	CONSTRAINT	FK_HomeWork_Group		FOREIGN KEY([group])	REFERENCES	Groups(group_id),
--	CONSTRAINT	FK_HomeWork_Schedule	FOREIGN KEY(lesson)		REFERENCES	Schedule(lesson_id)
--);

--CREATE TABLE Grades
--(
--	student			INT				NOT NULL,
--	lesson			INT				NOT NULL,
--	grade_1			INT,
--	grade_2			INT,
--	PRIMARY KEY(student,lesson),
--	CONSTRAINT	FK_Grades_Student		FOREIGN KEY(student)	REFERENCES	Students(student_id),
--	CONSTRAINT	FK_Grades_Schedule		FOREIGN KEY(lesson)		REFERENCES	Schedule(lesson_id)
--);

CREATE TABLE ResultsHW
(
	student			INT				NOT NULL,
	[group]			INT				NOT NULL,
	lesson			INT				NOT NULL,
	result			BINARY(1000),
	report			INT,
	grade			INT,
	[column]		INT,
	CONSTRAINT	FK_RHW_Student		FOREIGN KEY(student)		REFERENCES	Students(student_id),
	CONSTRAINT	FK_RHW_HomeWork		FOREIGN KEY([group],lesson)	REFERENCES	HomeWork([group],lesson)
);