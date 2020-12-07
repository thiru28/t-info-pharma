 
-----------------------------------
-- Table Name : [tbProduct]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbProduct_tbProductCategory' AND TYPE = 'F')) IS NOT NULL
	ALTER TABLE [tbProduct] DROP CONSTRAINT FK__tbProduct_tbProductCategory
GO

ALTER TABLE [dbo].[tbProduct]  WITH CHECK ADD CONSTRAINT FK__tbProduct_tbProductCategory FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[tbProductCategory] ([ProductCategoryID])
GO

ALTER TABLE [dbo].[tbProduct] CHECK CONSTRAINT FK__tbProduct_tbProductCategory
GO
-----------

-----------------------------------
-- Table Name : [tbProduct]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbProduct_tbProductManufacturer' AND TYPE = 'F')) IS NOT NULL
ALTER TABLE [tbProduct] DROP CONSTRAINT FK__tbProduct_tbProductManufacturer
GO
ALTER TABLE [dbo].[tbProduct]  WITH CHECK ADD CONSTRAINT FK__tbProduct_tbProductManufacturer FOREIGN KEY([ProductManufacturerID])
REFERENCES [dbo].[tbProductManufacturer] ([ProductManufacturerID])
GO
ALTER TABLE [dbo].[tbProduct] CHECK CONSTRAINT FK__tbProduct_tbProductManufacturer
GO
-----------

-----------------------------------
-- Table Name : [tbProduct]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbProduct_tbProductUnit' AND TYPE = 'F')) IS NOT NULL
ALTER TABLE [tbProduct] DROP CONSTRAINT FK__tbProduct_tbProductUnit
GO
ALTER TABLE [dbo].[tbProduct]  WITH CHECK ADD CONSTRAINT FK__tbProduct_tbProductUnit FOREIGN KEY([ProductUnitCode])
REFERENCES [dbo].[tbProductUnit] ([ProductUnitCode])
GO
ALTER TABLE [dbo].[tbProduct] CHECK CONSTRAINT FK__tbProduct_tbProductUnit
GO
-----------

-----------------------------------
-- Table Name : [tbProduct]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbProduct_tbProductPackage' AND TYPE = 'F')) IS NOT NULL
ALTER TABLE [tbProduct] DROP CONSTRAINT FK__tbProduct_tbProductPackage
GO
ALTER TABLE [dbo].[tbProduct]  WITH CHECK ADD CONSTRAINT FK__tbProduct_tbProductPackage FOREIGN KEY([ProductPackageCode])
REFERENCES [dbo].[tbProductPackage] ([ProductPackageCode])
GO
ALTER TABLE [dbo].[tbProduct] CHECK CONSTRAINT FK__tbProduct_tbProductPackage
GO
-----------


-----------------------------------
-- Table Name : [tbProduct]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbProduct_tbProductType' AND TYPE = 'F')) IS NOT NULL
ALTER TABLE [tbProduct] DROP CONSTRAINT FK__tbProduct_tbProductType
GO
ALTER TABLE [dbo].[tbProduct]  WITH CHECK ADD CONSTRAINT FK__tbProduct_tbProductType FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[tbProductType] ([ProductTypeID])
GO
ALTER TABLE [dbo].[tbProduct] CHECK CONSTRAINT FK__tbProduct_tbProductType
GO
-----------
 
-----------------------------------
-- Table Name : [tbProduct]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbProduct_tbTaxType' AND TYPE = 'F')) IS NOT NULL
ALTER TABLE [tbProduct] DROP CONSTRAINT FK__tbProduct_tbTaxType
GO
ALTER TABLE [dbo].[tbProduct]  WITH CHECK ADD CONSTRAINT FK__tbProduct_tbTaxType FOREIGN KEY([TaxTypeValue])
REFERENCES [dbo].[tbTaxType] ([TaxTypeValue])
GO
ALTER TABLE [dbo].[tbProduct] CHECK CONSTRAINT FK__tbProduct_tbTaxType
GO

-----------------------------------
-- Table Name : [tbProduct]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbProduct_tbProductRack' AND TYPE = 'F')) IS NOT NULL
ALTER TABLE [tbProduct] DROP CONSTRAINT FK__tbProduct_tbProductRack
GO
ALTER TABLE [dbo].[tbProduct]  WITH CHECK ADD CONSTRAINT FK__tbProduct_tbProductRack FOREIGN KEY([ProductRackID])
REFERENCES [dbo].[tbProductRack] ([ProductRackID])
GO
ALTER TABLE [dbo].[tbProduct] CHECK CONSTRAINT FK__tbProduct_tbProductRack
GO

-----------------------------------
-- Table Name : [tbProduct]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbProduct_tbStatus' AND TYPE = 'F')) IS NOT NULL
ALTER TABLE [tbProduct] DROP CONSTRAINT FK__tbProduct_tbStatus
GO
ALTER TABLE [dbo].[tbProduct]  WITH CHECK ADD CONSTRAINT FK__tbProduct_tbStatus FOREIGN KEY([StatusID])
REFERENCES [dbo].[tbStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tbProduct] CHECK CONSTRAINT FK__tbProduct_tbStatus
GO
-----------

-----------------------------------
-- Table Name : [tbProductCategory]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbProductCategory_tbStatus' AND TYPE = 'F')) IS NOT NULL
ALTER TABLE [tbProductCategory] DROP CONSTRAINT FK__tbProductCategory_tbStatus
GO
ALTER TABLE [dbo].[tbProductCategory]  WITH CHECK ADD CONSTRAINT FK__tbProductCategory_tbStatus FOREIGN KEY([StatusID])
REFERENCES [dbo].[tbStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tbProductCategory] CHECK CONSTRAINT FK__tbProductCategory_tbStatus
GO

-----------------------------------
-- Table Name : [tbProductManufacturer]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbProductManufacturer_tbStatus' AND TYPE = 'F')) IS NOT NULL
ALTER TABLE [tbProductManufacturer] DROP CONSTRAINT FK__tbProductManufacturer_tbStatus
GO
ALTER TABLE [dbo].[tbProductManufacturer]  WITH CHECK ADD CONSTRAINT FK__tbProductManufacturer_tbStatus FOREIGN KEY([StatusID])
REFERENCES [dbo].[tbStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tbProductManufacturer] CHECK CONSTRAINT FK__tbProductManufacturer_tbStatus
GO
-----------
-----------------------------------
-- Table Name : [tbProductPackage]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbProductPackage_tbStatus' AND TYPE = 'F')) IS NOT NULL
ALTER TABLE [tbProductPackage] DROP CONSTRAINT FK__tbProductPackage_tbStatus
GO
ALTER TABLE [dbo].[tbProductPackage]  WITH CHECK ADD CONSTRAINT FK__tbProductPackage_tbStatus FOREIGN KEY([StatusID])
REFERENCES [dbo].[tbStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tbProductPackage] CHECK CONSTRAINT FK__tbProductPackage_tbStatus
GO

-----------------------------------
-- Table Name : [tbProductRack]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbProductRack_tbStatus' AND TYPE = 'F')) IS NOT NULL
ALTER TABLE [tbProductRack] DROP CONSTRAINT FK__tbProductRack_tbStatus
GO
ALTER TABLE [dbo].[tbProductRack]  WITH CHECK ADD CONSTRAINT FK__tbProductRack_tbStatus FOREIGN KEY([StatusID])
REFERENCES [dbo].[tbStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tbProductRack] CHECK CONSTRAINT FK__tbProductRack_tbStatus
GO
-----------

-----------------------------------
-- Table Name : [tbProductType]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbProductType_tbStatus' AND TYPE = 'F')) IS NOT NULL
ALTER TABLE [tbProductType] DROP CONSTRAINT FK__tbProductType_tbStatus
GO
ALTER TABLE [dbo].[tbProductType]  WITH CHECK ADD CONSTRAINT FK__tbProductType_tbStatus FOREIGN KEY([StatusID])
REFERENCES [dbo].[tbStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tbProductType] CHECK CONSTRAINT FK__tbProductType_tbStatus
GO
-----------

-----------------------------------
-- Table Name : [tbProductUnit]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbProductUnit_tbStatus' AND TYPE = 'F')) IS NOT NULL
ALTER TABLE [tbProductUnit] DROP CONSTRAINT FK__tbProductUnit_tbStatus
GO
ALTER TABLE [dbo].[tbProductUnit]  WITH CHECK ADD CONSTRAINT FK__tbProductUnit_tbStatus FOREIGN KEY([StatusID])
REFERENCES [dbo].[tbStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tbProductUnit] CHECK CONSTRAINT FK__tbProductUnit_tbStatus
GO

-----------------------------------
-- Table Name : [tbTaxType]

IF  OBJECT_ID( (SELECT name FROM sys.objects WHERE name = 'FK__tbTaxType_tbStatus' AND TYPE = 'F')) IS NOT NULL
ALTER TABLE [tbTaxType] DROP CONSTRAINT FK__tbTaxType_tbStatus
GO
ALTER TABLE [dbo].[tbTaxType]  WITH CHECK ADD CONSTRAINT FK__tbTaxType_tbStatus FOREIGN KEY([StatusID])
REFERENCES [dbo].[tbStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tbTaxType] CHECK CONSTRAINT FK__tbTaxType_tbStatus
GO
-----------

