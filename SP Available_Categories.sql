USE [MMTShop]
GO
/****** Object:  StoredProcedure [dbo].[Available_Categories]    Script Date: 12/05/2021 14:57:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Available_Categories]
AS
BEGIN

select CName from Category

END
