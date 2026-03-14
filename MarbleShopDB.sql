USE [MarbleShopDB]
GO
/****** Object:  User [IIS APPPOOL\TestMarbleShop]    Script Date: 12/18/2025 3:36:38 PM ******/
CREATE USER [IIS APPPOOL\TestMarbleShop] FOR LOGIN [IIS APPPOOL\TestMarbleShop] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [IIS APPPOOL\TestMarbleShop]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 12/18/2025 3:36:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[OrderItemID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[Remarks] [nvarchar](500) NULL,
	[CreatedAt] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/18/2025 3:36:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [nvarchar](40) NOT NULL,
	[OrderDate] [datetime2](7) NULL,
	[CustomerName] [nvarchar](255) NOT NULL,
	[CustomerMobile] [nvarchar](20) NOT NULL,
	[UserID] [int] NOT NULL,
	[TotalItems] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[IsSentWhatsApp] [bit] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[Referance] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPhotos]    Script Date: 12/18/2025 3:36:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPhotos](
	[PhotoID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[PhotoURL] [nvarchar](1000) NOT NULL,
	[IsDefault] [bit] NULL,
	[CreatedAt] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[PhotoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/18/2025 3:36:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Size] [nvarchar](100) NULL,
	[LotNo] [nvarchar](100) NULL,
	[NoOfPlate] [numeric](9, 2) NULL,
	[ProductURL] [nvarchar](1000) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[SqFt] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/18/2025 3:36:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Mobile] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](150) NULL,
	[PasswordHash] [nvarchar](255) NOT NULL,
	[UserType] [nvarchar](20) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ProductID], [Qty], [Remarks], [CreatedAt]) VALUES (1, 1, 12, 3, N'XYZ', CAST(N'2025-10-27T16:39:11.2200000' AS DateTime2))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ProductID], [Qty], [Remarks], [CreatedAt]) VALUES (2, 2, 12, 3, N'XYZ', CAST(N'2025-10-27T17:01:13.4333333' AS DateTime2))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ProductID], [Qty], [Remarks], [CreatedAt]) VALUES (3, 2, 7, 4, N'XYZ', CAST(N'2025-10-27T17:01:44.7700000' AS DateTime2))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ProductID], [Qty], [Remarks], [CreatedAt]) VALUES (4, 3, 8, 4, N'XYZ', CAST(N'2025-10-27T17:03:12.4700000' AS DateTime2))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ProductID], [Qty], [Remarks], [CreatedAt]) VALUES (5, 3, 3, 3, N'XYZ', CAST(N'2025-10-27T17:03:18.1333333' AS DateTime2))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ProductID], [Qty], [Remarks], [CreatedAt]) VALUES (6, 4, 5, 1, N'XYZ', CAST(N'2025-10-27T17:03:46.2933333' AS DateTime2))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ProductID], [Qty], [Remarks], [CreatedAt]) VALUES (7, 5, 2, 1, N'XYZ', CAST(N'2025-10-27T17:04:16.0500000' AS DateTime2))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ProductID], [Qty], [Remarks], [CreatedAt]) VALUES (8, 6, 11, 1, N'XYZ', CAST(N'2025-10-27T19:31:34.9833333' AS DateTime2))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ProductID], [Qty], [Remarks], [CreatedAt]) VALUES (9, 6, 10, 1, N'XYZ', CAST(N'2025-10-28T17:26:26.4466667' AS DateTime2))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ProductID], [Qty], [Remarks], [CreatedAt]) VALUES (10, 7, 12, 4, N'XYZ', CAST(N'2025-10-28T17:30:18.1900000' AS DateTime2))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ProductID], [Qty], [Remarks], [CreatedAt]) VALUES (11, 8, 13, 1, N'XYZ', CAST(N'2025-10-28T17:37:02.6133333' AS DateTime2))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ProductID], [Qty], [Remarks], [CreatedAt]) VALUES (12, 9, 13, 1, N'XYZ', CAST(N'2025-10-28T18:30:13.5700000' AS DateTime2))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ProductID], [Qty], [Remarks], [CreatedAt]) VALUES (13, 9, 12, 1, N'XYZ', CAST(N'2025-10-28T18:48:35.7133333' AS DateTime2))
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ProductID], [Qty], [Remarks], [CreatedAt]) VALUES (14, 9, 14, 1, N'XYZ', CAST(N'2025-11-02T14:10:36.0933333' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNo], [OrderDate], [CustomerName], [CustomerMobile], [UserID], [TotalItems], [Remarks], [IsSentWhatsApp], [CreatedAt], [UpdatedAt], [Referance]) VALUES (1, N'ORD271630', CAST(N'2025-10-27T16:40:05.7833333' AS DateTime2), N'Vishal', N'8996364525', 2, 1, NULL, 0, CAST(N'2025-10-27T16:40:05.7833333' AS DateTime2), CAST(N'2025-10-27T16:40:05.7833333' AS DateTime2), N'Hitesh Patil')
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNo], [OrderDate], [CustomerName], [CustomerMobile], [UserID], [TotalItems], [Remarks], [IsSentWhatsApp], [CreatedAt], [UpdatedAt], [Referance]) VALUES (2, N'ORD271756', CAST(N'2025-10-27T17:03:05.3766667' AS DateTime2), N'Vishal', N'8596969636', 4, 2, NULL, 0, CAST(N'2025-10-27T17:03:05.3766667' AS DateTime2), CAST(N'2025-10-27T17:03:05.3766667' AS DateTime2), N'Vivek Jadhav')
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNo], [OrderDate], [CustomerName], [CustomerMobile], [UserID], [TotalItems], [Remarks], [IsSentWhatsApp], [CreatedAt], [UpdatedAt], [Referance]) VALUES (3, N'ORD271760', CAST(N'2025-10-27T17:03:39.4600000' AS DateTime2), N'Vishal', N'8996364525', 2, 2, NULL, 0, CAST(N'2025-10-27T17:03:39.4600000' AS DateTime2), CAST(N'2025-10-27T17:03:39.4600000' AS DateTime2), N'Vivek Jadhav')
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNo], [OrderDate], [CustomerName], [CustomerMobile], [UserID], [TotalItems], [Remarks], [IsSentWhatsApp], [CreatedAt], [UpdatedAt], [Referance]) VALUES (4, N'ORD271745', CAST(N'2025-10-27T17:04:09.8466667' AS DateTime2), N'Vishal', N'8596969636', 2, 1, NULL, 0, CAST(N'2025-10-27T17:04:09.8466667' AS DateTime2), CAST(N'2025-10-27T17:04:09.8466667' AS DateTime2), N'Vinita Patil')
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNo], [OrderDate], [CustomerName], [CustomerMobile], [UserID], [TotalItems], [Remarks], [IsSentWhatsApp], [CreatedAt], [UpdatedAt], [Referance]) VALUES (5, N'ORD271782', CAST(N'2025-10-27T17:04:50.3600000' AS DateTime2), N'Hitesh ', N'7397898344', 2, 1, NULL, 0, CAST(N'2025-10-27T17:04:50.3600000' AS DateTime2), CAST(N'2025-10-27T17:04:50.3600000' AS DateTime2), N'Nandlal Thakare')
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNo], [OrderDate], [CustomerName], [CustomerMobile], [UserID], [TotalItems], [Remarks], [IsSentWhatsApp], [CreatedAt], [UpdatedAt], [Referance]) VALUES (6, N'ORD281716', CAST(N'2025-10-28T17:26:48.5166667' AS DateTime2), N'Nandlal', N'8996364525', 4, 2, NULL, 0, CAST(N'2025-10-28T17:26:48.5166667' AS DateTime2), CAST(N'2025-10-28T17:26:48.5166667' AS DateTime2), N'Vinita Patil')
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNo], [OrderDate], [CustomerName], [CustomerMobile], [UserID], [TotalItems], [Remarks], [IsSentWhatsApp], [CreatedAt], [UpdatedAt], [Referance]) VALUES (7, N'ORD281755', CAST(N'2025-10-28T17:30:41.3766667' AS DateTime2), N'Vishal', N'7397898344', 4, 1, NULL, 0, CAST(N'2025-10-28T17:30:41.3766667' AS DateTime2), CAST(N'2025-10-28T17:30:41.3766667' AS DateTime2), N'Hitesh Patil')
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNo], [OrderDate], [CustomerName], [CustomerMobile], [UserID], [TotalItems], [Remarks], [IsSentWhatsApp], [CreatedAt], [UpdatedAt], [Referance]) VALUES (8, N'ORD281740', CAST(N'2025-10-28T17:37:19.4300000' AS DateTime2), N'Nandlal', N'7397898344', 2, 1, NULL, 0, CAST(N'2025-10-28T17:37:19.4300000' AS DateTime2), CAST(N'2025-10-28T17:37:19.4300000' AS DateTime2), N'Nandlal Thakare')
GO
INSERT [dbo].[Orders] ([OrderID], [OrderNo], [OrderDate], [CustomerName], [CustomerMobile], [UserID], [TotalItems], [Remarks], [IsSentWhatsApp], [CreatedAt], [UpdatedAt], [Referance]) VALUES (9, N'ORD021419', CAST(N'2025-11-02T14:11:06.2833333' AS DateTime2), N'Nandlal', N'8996364525', 2, 3, NULL, 0, CAST(N'2025-11-02T14:11:06.2833333' AS DateTime2), CAST(N'2025-11-02T14:11:06.2833333' AS DateTime2), N'Hitesh Patil')
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductPhotos] ON 
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (1, 1, N'/uploads/05P251026_932946.jpg', 1, CAST(N'2025-10-26T16:06:06.2300000' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (2, 1, N'/uploads/05P251026_031514.jpeg', 0, CAST(N'2025-10-26T16:06:06.2300000' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (3, 1, N'/uploads/05P251026_1b11e3.jpeg', 0, CAST(N'2025-10-26T16:06:06.2300000' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (4, 2, N'/uploads/55P251026_0de59d.jpeg', 1, CAST(N'2025-10-26T16:06:55.9333333' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (5, 2, N'/uploads/55P251026_024b00.jpeg', 0, CAST(N'2025-10-26T16:06:55.9333333' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (6, 3, N'/uploads/09P251026_d0f52a.jpeg', 1, CAST(N'2025-10-26T17:00:10.3233333' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (7, 3, N'/uploads/09P251026_5daeea.jpeg', 0, CAST(N'2025-10-26T17:00:10.3233333' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (8, 4, N'/uploads/38P251026_47c442.jpg', 1, CAST(N'2025-10-26T17:00:38.5333333' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (9, 4, N'/uploads/38P251026_48839e.jpeg', 0, CAST(N'2025-10-26T17:00:38.5333333' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (10, 5, N'/uploads/30P251026_50173c.png', 1, CAST(N'2025-10-26T17:01:30.6566667' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (11, 5, N'/uploads/30P251026_48abdc.png', 0, CAST(N'2025-10-26T17:01:30.6566667' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (12, 6, N'/uploads/14P251026_8ac9d3.jpg', 1, CAST(N'2025-10-26T17:02:14.9866667' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (13, 6, N'/uploads/14P251026_041b5e.jpeg', 0, CAST(N'2025-10-26T17:02:14.9866667' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (14, 7, N'/uploads/42P251026_c75d6a.jpeg', 1, CAST(N'2025-10-26T17:02:42.2866667' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (15, 7, N'/uploads/42P251026_ea0eb3.jpeg', 0, CAST(N'2025-10-26T17:02:42.2866667' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (16, 8, N'/uploads/11P251026_f742eb.jpg', 1, CAST(N'2025-10-26T17:03:11.5900000' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (17, 8, N'/uploads/11P251026_87cf69.png', 0, CAST(N'2025-10-26T17:03:11.5900000' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (18, 8, N'/uploads/11P251026_daa4b4.png', 0, CAST(N'2025-10-26T17:03:11.5900000' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (19, 8, N'/uploads/11P251026_a30a6d.png', 0, CAST(N'2025-10-26T17:03:11.5900000' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (20, 8, N'/uploads/11P251026_ee53a9.png', 0, CAST(N'2025-10-26T17:03:11.5900000' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (21, 8, N'/uploads/11P251026_fdf674.jpeg', 0, CAST(N'2025-10-26T17:03:11.5900000' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (22, 8, N'/uploads/11P251026_6772b0.jpeg', 0, CAST(N'2025-10-26T17:03:11.5900000' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (23, 9, N'/uploads/30P251026_f73f23.png', 1, CAST(N'2025-10-26T17:17:30.4400000' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (24, 9, N'/uploads/30P251026_f474f9.png', 0, CAST(N'2025-10-26T17:17:30.4400000' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (25, 9, N'/uploads/30P251026_ffd3eb.jpeg', 0, CAST(N'2025-10-26T17:17:30.4400000' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (26, 10, N'/uploads/52P251026_a66b1f.jpeg', 1, CAST(N'2025-10-26T17:17:52.6533333' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (27, 10, N'/uploads/52P251026_b983e9.jpeg', 0, CAST(N'2025-10-26T17:17:52.6533333' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (28, 11, N'/uploads/04P251026_d46ed9.jpeg', 1, CAST(N'2025-10-26T17:18:04.4433333' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (31, 13, N'/uploads/15P251028_158991.jpg', 1, CAST(N'2025-10-28T17:03:29.5833333' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (32, 12, N'/uploads/Italian marbal1.jpeg', 1, CAST(N'2025-10-28T17:18:57.2833333' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (33, 12, N'/uploads/Italian marbal.jpeg', 0, CAST(N'2025-10-28T17:18:57.2833333' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (34, 14, N'/uploads/07P251028_3b3f7f.jpg', 1, CAST(N'2025-10-28T19:12:07.8566667' AS DateTime2))
GO
INSERT [dbo].[ProductPhotos] ([PhotoID], [ProductID], [PhotoURL], [IsDefault], [CreatedAt]) VALUES (35, 14, N'/uploads/07P251028_bfba9f.jpeg', 0, CAST(N'2025-10-28T19:12:07.8566667' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[ProductPhotos] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Size], [LotNo], [NoOfPlate], [ProductURL], [IsActive], [CreatedAt], [UpdatedAt], [SqFt]) VALUES (1, N'Italian Marble', N'600x600', N'LOT-10', CAST(20.50 AS Numeric(9, 2)), N'/uploads/05P251026_932946.jpg', 1, CAST(N'2025-10-26T16:06:06.2266667' AS DateTime2), CAST(N'2025-10-26T16:06:06.2266667' AS DateTime2), N'45X63')
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Size], [LotNo], [NoOfPlate], [ProductURL], [IsActive], [CreatedAt], [UpdatedAt], [SqFt]) VALUES (2, N'Italian Marble', N'400x400', N'LOT-5', CAST(20.50 AS Numeric(9, 2)), N'/uploads/55P251026_0de59d.jpeg', 1, CAST(N'2025-10-26T16:06:55.9333333' AS DateTime2), CAST(N'2025-10-26T16:06:55.9333333' AS DateTime2), N'45X63')
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Size], [LotNo], [NoOfPlate], [ProductURL], [IsActive], [CreatedAt], [UpdatedAt], [SqFt]) VALUES (3, N'Italian Marble', N'600x600', N'LOT-10', CAST(10.50 AS Numeric(9, 2)), N'/uploads/09P251026_d0f52a.jpeg', 1, CAST(N'2025-10-26T17:00:10.3233333' AS DateTime2), CAST(N'2025-10-26T17:00:10.3233333' AS DateTime2), N'45X63')
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Size], [LotNo], [NoOfPlate], [ProductURL], [IsActive], [CreatedAt], [UpdatedAt], [SqFt]) VALUES (4, N'Marble', N'400x400', N'LOT-10', CAST(10.50 AS Numeric(9, 2)), N'/uploads/38P251026_47c442.jpg', 1, CAST(N'2025-10-26T17:00:38.5333333' AS DateTime2), CAST(N'2025-10-26T17:00:38.5333333' AS DateTime2), N'45X63')
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Size], [LotNo], [NoOfPlate], [ProductURL], [IsActive], [CreatedAt], [UpdatedAt], [SqFt]) VALUES (5, N'Italian ', N'800x800', N'LOT-10', CAST(20.50 AS Numeric(9, 2)), N'/uploads/30P251026_50173c.png', 1, CAST(N'2025-10-26T17:01:30.6566667' AS DateTime2), CAST(N'2025-10-26T17:01:30.6566667' AS DateTime2), N'45X63')
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Size], [LotNo], [NoOfPlate], [ProductURL], [IsActive], [CreatedAt], [UpdatedAt], [SqFt]) VALUES (6, N'Italian ', N'600x600', N'LOT-5', CAST(10.50 AS Numeric(9, 2)), N'/uploads/14P251026_8ac9d3.jpg', 1, CAST(N'2025-10-26T17:02:14.9866667' AS DateTime2), CAST(N'2025-10-26T17:02:14.9866667' AS DateTime2), N'45X63')
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Size], [LotNo], [NoOfPlate], [ProductURL], [IsActive], [CreatedAt], [UpdatedAt], [SqFt]) VALUES (7, N'Italian Marble', N'400x400', N'LOT-5', CAST(20.50 AS Numeric(9, 2)), N'/uploads/42P251026_c75d6a.jpeg', 1, CAST(N'2025-10-26T17:02:42.2866667' AS DateTime2), CAST(N'2025-10-26T17:02:42.2866667' AS DateTime2), N'45X63')
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Size], [LotNo], [NoOfPlate], [ProductURL], [IsActive], [CreatedAt], [UpdatedAt], [SqFt]) VALUES (8, N'Italian Marble', N'400x400', N'LOT-5', CAST(20.50 AS Numeric(9, 2)), N'/uploads/11P251026_f742eb.jpg', 1, CAST(N'2025-10-26T17:03:11.5900000' AS DateTime2), CAST(N'2025-10-26T17:03:11.5900000' AS DateTime2), N'45X63')
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Size], [LotNo], [NoOfPlate], [ProductURL], [IsActive], [CreatedAt], [UpdatedAt], [SqFt]) VALUES (9, N'Italian Marble', N'400x400', N'LOT-10', CAST(20.50 AS Numeric(9, 2)), N'/uploads/30P251026_f73f23.png', 0, CAST(N'2025-10-26T17:17:30.4400000' AS DateTime2), CAST(N'2025-10-26T17:17:30.4400000' AS DateTime2), N'45X63')
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Size], [LotNo], [NoOfPlate], [ProductURL], [IsActive], [CreatedAt], [UpdatedAt], [SqFt]) VALUES (10, N'Italian ', N'400x400', N'LOT-5', CAST(20.50 AS Numeric(9, 2)), N'/uploads/52P251026_a66b1f.jpeg', 1, CAST(N'2025-10-26T17:17:52.6533333' AS DateTime2), CAST(N'2025-10-26T17:17:52.6533333' AS DateTime2), N'45X63')
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Size], [LotNo], [NoOfPlate], [ProductURL], [IsActive], [CreatedAt], [UpdatedAt], [SqFt]) VALUES (11, N'Italian ', N'400x400', N'LOT-5', CAST(20.50 AS Numeric(9, 2)), N'/uploads/04P251026_d46ed9.jpeg', 1, CAST(N'2025-10-26T17:18:04.4433333' AS DateTime2), CAST(N'2025-10-26T17:18:04.4433333' AS DateTime2), N'45X63')
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Size], [LotNo], [NoOfPlate], [ProductURL], [IsActive], [CreatedAt], [UpdatedAt], [SqFt]) VALUES (12, N'Marble', N'800x800', N'LOT-10', CAST(10.50 AS Numeric(9, 2)), N'/uploads/Italian marbal1.jpeg', 0, CAST(N'2025-10-26T17:18:22.4833333' AS DateTime2), CAST(N'2025-10-28T17:18:57.2800000' AS DateTime2), N'45X63')
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Size], [LotNo], [NoOfPlate], [ProductURL], [IsActive], [CreatedAt], [UpdatedAt], [SqFt]) VALUES (13, N'Italian Marble', N'600x600', N'LOT-5', CAST(20.50 AS Numeric(9, 2)), N'/uploads/15P251028_158991.jpg', 1, CAST(N'2025-10-28T17:03:29.5800000' AS DateTime2), CAST(N'2025-10-28T17:03:29.5800000' AS DateTime2), N'45X63')
GO
INSERT [dbo].[Products] ([ProductID], [Name], [Size], [LotNo], [NoOfPlate], [ProductURL], [IsActive], [CreatedAt], [UpdatedAt], [SqFt]) VALUES (14, N'Italian Marble', N'600x600', N'LOT-10', CAST(20.50 AS Numeric(9, 2)), N'/uploads/07P251028_3b3f7f.jpg', 1, CAST(N'2025-10-28T19:12:07.8566667' AS DateTime2), CAST(N'2025-10-28T19:12:07.8566667' AS DateTime2), N'46X36')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UserID], [Name], [Mobile], [Email], [PasswordHash], [UserType], [IsActive], [CreatedAt], [UpdatedAt]) VALUES (1, N'Admin', N'1234567890', N'admin@test.com', N'123456', N'Admin', 1, CAST(N'2025-09-27T14:05:22.9833333' AS DateTime2), CAST(N'2025-09-27T14:05:22.9833333' AS DateTime2))
GO
INSERT [dbo].[Users] ([UserID], [Name], [Mobile], [Email], [PasswordHash], [UserType], [IsActive], [CreatedAt], [UpdatedAt]) VALUES (2, N'Rajesh', N'8956234578', N'rajesh@gmail.com', N'123456', N'Admin', 0, CAST(N'2025-09-28T16:19:12.9866667' AS DateTime2), CAST(N'2025-09-28T16:19:12.9866667' AS DateTime2))
GO
INSERT [dbo].[Users] ([UserID], [Name], [Mobile], [Email], [PasswordHash], [UserType], [IsActive], [CreatedAt], [UpdatedAt]) VALUES (4, N'Vishal', N'9370885566', N' vishal@gmail.com', N'963258', N'Executive', 1, CAST(N'2025-10-10T11:21:31.8100000' AS DateTime2), CAST(N'2025-10-10T11:21:31.8100000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Orders__C3907C755FE673CE]    Script Date: 12/18/2025 3:36:38 PM ******/
ALTER TABLE [dbo].[Orders] ADD UNIQUE NONCLUSTERED 
(
	[OrderNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__6FAE0782FAAD1B05]    Script Date: 12/18/2025 3:36:38 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Mobile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderItems] ADD  DEFAULT ((1)) FOR [Qty]
GO
ALTER TABLE [dbo].[OrderItems] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [TotalItems]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [IsSentWhatsApp]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[ProductPhotos] ADD  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[ProductPhotos] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((1)) FOR [NoOfPlate]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD CHECK  (([UserType]='Executive' OR [UserType]='Admin'))
GO
/****** Object:  StoredProcedure [dbo].[sp_AddProductWithPhotos]    Script Date: 12/18/2025 3:36:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddProductWithPhotos]
    @Name NVARCHAR(255),
    @Size NVARCHAR(100) = NULL,
    @LotNo NVARCHAR(100) = NULL,
    @NoOfPlate NUMERIC(9,2) = 1,
    @ProductURL NVARCHAR(1000) = NULL,
    @IsActive BIT = 1,
	@SqFt nvarchar(100),
    @PhotoList NVARCHAR(MAX) = NULL, -- JSON list of photo URLs [{ "PhotoURL": "url1", "IsDefault":1 }, ...]
    @NewProductID INT OUTPUT

AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Insert Product
        INSERT INTO Products (Name, Size, LotNo, NoOfPlate, ProductURL, IsActive,SqFt)
        VALUES (@Name, @Size, @LotNo, @NoOfPlate, @ProductURL, @IsActive,@SqFt);

        SET @NewProductID = SCOPE_IDENTITY();

        -- Insert Photos if provided
        IF (@PhotoList IS NOT NULL AND ISJSON(@PhotoList) = 1)
        BEGIN
            INSERT INTO ProductPhotos (ProductID, PhotoURL, IsDefault)
            SELECT 
                @NewProductID,
                JSON_VALUE(value, '$.PhotoURL'),
                ISNULL(JSON_VALUE(value, '$.IsDefault'), 0)
            FROM OPENJSON(@PhotoList);
        END

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_EditProductWithPhotos]    Script Date: 12/18/2025 3:36:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EditProductWithPhotos]
    @ProductID INT,
    @Name NVARCHAR(255),
    @Size NVARCHAR(100) = NULL,
    @LotNo NVARCHAR(100) = NULL,
    @NoOfPlate NUMERIC(9,2) = 1,
    @ProductURL NVARCHAR(1000) = NULL,
	@SqFt nvarchar(100),
    @IsActive BIT = 1,
    @PhotoList NVARCHAR(MAX) = NULL -- JSON list of new photos
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Update Product
        UPDATE Products
        SET 
            Name = @Name,
            Size = @Size,
            LotNo = @LotNo,
            NoOfPlate = @NoOfPlate,
            ProductURL = @ProductURL,
			SqFt=@SqFt ,
            IsActive = @IsActive,
            UpdatedAt = GETDATE()
        WHERE ProductID = @ProductID;

        -- Replace Photos if provided
        IF (@PhotoList IS NOT NULL AND ISJSON(@PhotoList) = 1)
        BEGIN
            DELETE FROM ProductPhotos WHERE ProductID = @ProductID;

            INSERT INTO ProductPhotos (ProductID, PhotoURL, IsDefault)
            SELECT 
                @ProductID,
                JSON_VALUE(value, '$.PhotoURL'),
                ISNULL(JSON_VALUE(value, '$.IsDefault'), 0)
            FROM OPENJSON(@PhotoList);
        END

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END
GO
