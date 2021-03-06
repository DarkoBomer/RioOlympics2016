/*==========================================================*/
/* DBMS name:	SQLite3.DB									*/
/* Created on:	2017.10.12 15:46							*/
/*==========================================================*/

drop table if exists Events;

drop table if exists Schedule;

/*==========================================================*/
/* Table: Events											*/
/*==========================================================*/
create table Events
{
	EventID			INTEGER		primary key autoincrement	not null,
	EventName		VARCHAR(20),
	EventIcon		VARCHAR(20),
	KeyInfo			CLOB,
	BasicsInfo		CLOB,
	OlympicInfo		CLOB
};

/*==========================================================*/
/* Table: Schedule											*/
/*==========================================================*/
create table Schedule
{
	ScheduleID		INTEGER		primary key autoincrement	not null,
	GameDate		DATE									not null,
	GameTime		VARCHAR(20)								not null,
	GameInfo		VARCHAR(50),
	EventID			INTEGER,
	constraint FK_SCHEDULE_REFERENCE_EVENTS foreign key (EventID) references Events (EventID)
};


insert into Events(EventName,EventIcon,KeyInfo,BasicsInfo,OlympicInfo)
		values ('Athletics','athletics.gif','Athletics is...','There are four main strands...','The ancient Olympic ...');

insert into Schedule (GameDate,GameTime,GameInfo,EventID)
		values ('2016-08-05','16:00 - 20:46','Women''s',28);
