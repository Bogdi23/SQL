--SQLQuery0-Check.sql
USE PV_521_Import;
SET DATEFIRST 1;

--	%
--DELETE FROM Schedule WHERE [group]=521 --AND [date] >= N'2026-08-28';
--DELETE FROM Schedule WHERE discipline=(SELECT discipline_id FROM Disciplines	WHERE discipline_name LIKE N'???????%');

EXEC sp_InsertSchedule1221 N'PV_521', N'Hardware%', N'??????', N'2025-01-20', 1,3,5;
EXEC sp_InsertSchedule1221 N'PV_521', N'%Windows',  N'??????', N'2025-04-30', 1,3,5;
EXEC sp_InsertSchedule1221 N'PV_521', N'???????????%C++', N'??????', N'2025-01-20', 5,3,1;
--UPDATE Schedule SET teacher=1 WHERE discipline=1;

--EXEC sp_InsertScheduleStacionar N'PV_521', N'%MS SQL Server', N'????', N'2025-12-24';
--EXEC sp_InsertScheduleStacionar N'PV_521', N'%ADO.NET%', N'????', N'2026-02-04';
--EXEC sp_InsertScheduleStacionar N'PV_521', N'???????%', N'????', N'2026-03-09';
--EXEC sp_InsertScheduleStacionar N'PV_521', N'?????????%', N'????', DEFAULT;
--EXEC sp_InsertScheduleStacionar N'PV_521', N'HTML/CSS', N'????', DEFAULT;
--EXEC sp_InsertScheduleStacionar	N'PV_521', N'JavaScript', N'????', DEFAULT;
--EXEC sp_InsertScheduleStacionar	N'PV_521', N'ReactJS', N'????', DEFAULT;
--EXEC sp_InsertScheduleStacionar	N'PV_521', N'%ASP.NET', N'????',DEFAULT;
--EXEC sp_InsertScheduleStacionar N'PV_521', N'%ADO.NET%', N'????', N'2026-01-21';
--EXEC sp_InsertScheduleStacionar N'PV_521', N'???????%', N'????', N'2026-02-18';
EXEC sp_SelectScheduleFor N'PV_521';

-------------------------		Holidays		-------------------------------

--EXEC sp_InsertAllHolidaysFor 2027;

--SELECT
--		[????]		=	date,
--		[????????]	=	holiday_name
--FROM	DaysOFF,Holidays
--WHERE	holiday=holiday_id
--AND		date >=	DATEFROMPARTS(2026,12,20)
--;