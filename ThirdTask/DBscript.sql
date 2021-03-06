/****** Object:  Table [dbo].[Clients]    Script Date: 3/28/2018 3:12:18 PM ******/

CREATE TABLE [dbo].[Clients](
 [client_id] [int] IDENTITY(1,1) NOT NULL,
 [client_name] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
 [client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/28/2018 3:12:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
 [order_id] [int] IDENTITY(1,1) NOT NULL,
 [client_id] [int] NULL,
 [order_sum] [decimal](18, 0) NULL,
 [order_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
 [order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([client_id], [client_name]) VALUES (1, N'Orkhan')
INSERT [dbo].[Clients] ([client_id], [client_name]) VALUES (2, N'Ann')
INSERT [dbo].[Clients] ([client_id], [client_name]) VALUES (3, N'Jane')
INSERT [dbo].[Clients] ([client_id], [client_name]) VALUES (4, N'Nara')
SET IDENTITY_INSERT [dbo].[Clients] OFF

SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([order_id], [client_id], [order_sum], [order_date]) VALUES (1, 1, CAST(55 AS Decimal(18, 0)), CAST(N'2018-03-28T14:37:44.000' AS DateTime))
INSERT [dbo].[Orders] ([order_id], [client_id], [order_sum], [order_date]) VALUES (2, 3, CAST(56 AS Decimal(18, 0)), CAST(N'2018-03-22T14:37:53.000' AS DateTime))
INSERT [dbo].[Orders] ([order_id], [client_id], [order_sum], [order_date]) VALUES (3, 2, CAST(531 AS Decimal(18, 0)), CAST(N'2018-03-14T14:38:08.000' AS DateTime))
INSERT [dbo].[Orders] ([order_id], [client_id], [order_sum], [order_date]) VALUES (4, 4, CAST(67 AS Decimal(18, 0)), CAST(N'2018-03-28T14:38:17.000' AS DateTime))
INSERT [dbo].[Orders] ([order_id], [client_id], [order_sum], [order_date]) VALUES (5, 1, CAST(52 AS Decimal(18, 0)), CAST(N'2018-02-28T14:38:48.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Orders] OFF

ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [order_client_id] FOREIGN KEY([client_id])
REFERENCES [dbo].[Clients] ([client_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [order_client_id]