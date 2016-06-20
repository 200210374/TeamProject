USE [sqlData]
GO

/****** Object: Table [dbo].[tracker] Script Date: 19/06/2016 12:08:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tracker] (
    [day_played]  NCHAR (10) NOT NULL,
    [week_played] NCHAR (10) NOT NULL,
    [who_won]     CHAR (10)  NOT NULL,
    [points]      INT        NULL,
    [TeamBpoints] INT        NULL
);



INSERT INTO tracker (day_played, week_played, who_won, points, TeamBpoints)
VALUES (24,4,2,10,12);

