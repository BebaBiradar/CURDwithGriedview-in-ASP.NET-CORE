CREATE TABLE [dbo].[stu]
(
	[Id] INT NOT NULL PRIMARY KEY identity, 
    [name] NCHAR(50) NOT NULL, 
    [gender] NCHAR(50) NOT NULL, 
    [class] INT NOT NULL,
)
