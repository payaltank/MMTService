USE [MMTShop]
GO
/****** Object:  StoredProcedure [dbo].[Featured_Products]    Script Date: 12/05/2021 14:56:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Featured_Products]
AS
BEGIN

select * from Products where SKU like '1%' OR SKU like '2%' OR SKU like '3%'

END
