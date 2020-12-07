DECLARE @ObjectName sysname
declare @Stmt varchar(256)
set @ObjectName = 'dbo.tbStatus'

if exists (select * from sysobjects where id = object_id(@ObjectName) and ObjectProperty(id,'IsTable')=1)
begin
   set @Stmt = 'drop table '+@ObjectName
	Exec(@Stmt)
   if exists (select * from sysobjects where id = object_id(@ObjectName) 
 		and ObjectProperty(id,'IsTable')=1)
   begin
	RAISERROR('<<FAILED TO DROP TABLE %s>>',16,1,@ObjectName)
   end
   else 
	RAISERROR('<<DROPPED TABLE %s>>',0,1,@ObjectName)
end

go

CREATE TABLE [dbo].[tbStatus]( 
   [StatusID] 				[INT]  				NOT NULL IDENTITY(1,1),   
   [StatusLabel]	 		[varchar](150) 		NOT NULL,  
   [IsActive]				[INT]				NOT NULL				DEFAULT 1,
   [CreatedBy]		 		[varchar](255)		NOT NULL,
   [CreatedAt]		 		[DATETIME]			NOT NULL				DEFAULT sysdatetime(),
   [ModifiedBy]		 		[varchar](255)		NOT NULL,
   [ModifiedAt]		 		[DATETIME]			NOT NULL				DEFAULT sysdatetime(),
   CONSTRAINT [PK_tbStatus] PRIMARY KEY (StatusID)
);

GO

DECLARE @ObjectName sysname
declare @Stmt varchar(256)
set @ObjectName = 'dbo.tbStatus'

if exists (select * from sysobjects where id = object_id(@ObjectName) 
	   and ObjectProperty(id,'IsTable')=1)
BEGIN
	RAISERROR('<<CREATED TABLE %s>>',0,1,@ObjectName)
END
ELSE 
begin
  RAISERROR('<<FAILED TO CREATE TABLE %s>>',16,1,@ObjectName)
END
go
 
 
 

