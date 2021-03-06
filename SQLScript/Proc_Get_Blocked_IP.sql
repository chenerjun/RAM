USE [RAM]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Get_Blocked_IP]    Script Date: 3/14/2017 2:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		William Chen
-- Create date: March.14, 2017
-- Description:	Get all Blocked IP addresses
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Get_Blocked_IP]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT		[BlockIP]	FROM	[dbo].[BlockList]		WHERE	[BlockIPActivity]	=	1;
END
