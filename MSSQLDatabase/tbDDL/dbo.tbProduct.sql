
DECLARE @ObjectName sysname
declare @Stmt varchar(256)
set @ObjectName = 'dbo.tbProduct'

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

CREATE TABLE [dbo].[tbProduct]( 
   [ProductID] 					[INT]  				NOT NULL IDENTITY(1,1),
   [ProductName] 				[varchar](150) 		NOT NULL,
   [ProductDescription] 		[varchar](255)  	NULL,
   [ProductMolecule] 			[varchar](255)  	NULL,
   [ProductCategoryID] 			[INT]  				NOT NULL,
   [ProductManufacturerID] 		[INT]  				NOT NULL,
   [ProductUnitCode] 			[varchar](150)		NOT NULL,
   [ProductPackageCode] 		[varchar](150)		NOT NULL,
   [ProductTypeID] 				[INT]  				NOT NULL,
   [TaxTypeValue]				[INT]  				NOT NULL,
   [HSNCode] 					[varchar](100)		NULL,
   [Prescription] 				[BIT]	  			NULL					DEFAULT 0,
   [DrugTypeID] 				[INT]  				NULL,
   [AllowDiscount] 				[BIT]	  			NOT NULL				DEFAULT 1,
   [DiscountPercentage] 		[INT]				NULL,
   [ProductRackID] 				[INT]				NULL,
   [MinimumStock] 				[INT]				NULL,
   [ReorderStock] 				[INT]				NULL,
   [StatusID] 					[INT]				NOT NULL,
   [CreatedBy]		 			[varchar](255)		NOT NULL,
   [CreatedAt]		 			[DATETIME]			NOT NULL				DEFAULT sysdatetime(),
   [ModifiedBy]		 			[varchar](255)		NOT NULL,
   [ModifiedAt]		 			[DATETIME]			NOT NULL				DEFAULT sysdatetime(),
   CONSTRAINT [PK_tbProduct] PRIMARY KEY (ProductID)
);

GO

DECLARE @ObjectName sysname
declare @Stmt varchar(256)
set @ObjectName = 'dbo.tbProduct'

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

