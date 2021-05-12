USE [MMTShop]
GO
/****** Object:  StoredProcedure [dbo].[Products_By_Category]    Script Date: 12/05/2021 14:58:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Products_By_Category]
@CtName nvarchar(50)
AS
BEGIN

if (@CtName = 'Home')
	select * from Products where SKU like '1%'
if (@CtName = 'Garden')
	select * from Products where SKU like '2%'
if (@CtName = 'Electronics')
	select * from Products where SKU like '3%'
if (@CtName = 'Fitness')
	select * from Products where SKU like '4%'
if (@CtName = 'Toys')
	select * from Products where SKU like '5%'

END
