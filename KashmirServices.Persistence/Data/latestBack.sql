USE [KashmirServicesDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [uniqueidentifier] NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[Region] [nvarchar](max) NOT NULL,
	[Street] [nvarchar](max) NOT NULL,
	[PostalCode] [int] NOT NULL,
	[AddressLine] [nvarchar](max) NOT NULL,
	[Longitute] [float] NULL,
	[Latitute] [float] NULL,
	[IsDeleted] [bit] NOT NULL,
	[EntityId] [uniqueidentifier] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppFiles]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppFiles](
	[Id] [uniqueidentifier] NOT NULL,
	[Module] [int] NOT NULL,
	[FilePath] [nvarchar](max) NOT NULL,
	[EntityId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_AppFiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppOrders]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppOrders](
	[Id] [uniqueidentifier] NOT NULL,
	[OrderId] [nvarchar](max) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[AppointmentId] [uniqueidentifier] NOT NULL,
	[Receipt] [nvarchar](max) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[IsPartial] [bit] NOT NULL,
	[AmountPaid] [decimal](18, 2) NOT NULL,
	[AmountDue] [decimal](18, 2) NOT NULL,
	[CreatedAt] [int] NOT NULL,
	[Currency] [nvarchar](max) NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_AppOrders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppPayments]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppPayments](
	[Id] [uniqueidentifier] NOT NULL,
	[TransactionId] [nvarchar](max) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Currency] [nvarchar](max) NOT NULL,
	[PaymentMethod] [int] NOT NULL,
	[AppPaymentStatus] [int] NOT NULL,
	[RpOrderId] [nvarchar](max) NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_AppPayments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssignedEngineers]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignedEngineers](
	[Id] [uniqueidentifier] NOT NULL,
	[AssignmentDate] [datetimeoffset](7) NOT NULL,
	[EngineerId] [uniqueidentifier] NOT NULL,
	[CallBookingId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
	[CallStatus] [int] NOT NULL,
	[ExpectedDate] [datetimeoffset](7) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_AssignedEngineers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CallBookings]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CallBookings](
	[Id] [uniqueidentifier] NOT NULL,
	[JobNo] [nvarchar](max) NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[AddressId] [uniqueidentifier] NOT NULL,
	[ServiceTypeId] [uniqueidentifier] NOT NULL,
	[ModelNo] [nvarchar](max) NULL,
	[SerialNo] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[RequestDate] [datetimeoffset](7) NOT NULL,
	[CallBookingStatus] [int] NOT NULL,
	[SatisficationCode] [int] NOT NULL,
	[UnSatisficationCode] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
	[Reminder] [int] NOT NULL,
 CONSTRAINT [PK_CallBookings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
	[ManagerId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetails](
	[Id] [uniqueidentifier] NOT NULL,
	[InvoiceId] [uniqueidentifier] NOT NULL,
	[PartId] [uniqueidentifier] NOT NULL,
	[Discount] [float] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_InvoiceDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[Id] [uniqueidentifier] NOT NULL,
	[InvoiceDate] [datetimeoffset](7) NOT NULL,
	[TotalDistance] [float] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
	[CallBookingId] [uniqueidentifier] NOT NULL,
	[InvoiceNo] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobRoles]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
	[EngineerId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_JobRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parts]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parts](
	[Id] [uniqueidentifier] NOT NULL,
	[BrandId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PartNo] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[PurchasePrice] [float] NOT NULL,
	[SellPrice] [float] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
	[SerialNo] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Parts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceTypes]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceTypes](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Charges] [decimal](18, 2) NOT NULL,
	[FreeServiceDistance] [int] NOT NULL,
	[PerKilometerCharge] [int] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[BrandId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_ServiceTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Salt] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[ConfirmationCode] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[UserRole] [int] NOT NULL,
	[UserStatus] [int] NOT NULL,
	[IsEmailVerified] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visits]    Script Date: 11/14/2023 9:19:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visits](
	[Id] [uniqueidentifier] NOT NULL,
	[VisitDate] [datetimeoffset](7) NOT NULL,
	[TimeIn] [time](7) NOT NULL,
	[TimeOut] [time](7) NOT NULL,
	[AssingedEngineerId] [uniqueidentifier] NOT NULL,
	[TechnicalRemarks] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedOn] [datetimeoffset](7) NULL,
	[TotalDistance] [float] NOT NULL,
 CONSTRAINT [PK_Visits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231026053210_initialmig', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231026063448_category-manager-added', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231026083009_engineerjobrole', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231027172159_new-models-added', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231027180732_brand-Relation-category', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231028044257_entityrelationship-changed', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231028064950_relationship-modfied', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231028083507_callbooking-description', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231028180825_assignedEngineerUpdated', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231029074741_callbookingjobno-identity', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231029125439_billmig', N'7.0.9')
GO
INSERT [dbo].[Addresses] ([Id], [State], [City], [Region], [Street], [PostalCode], [AddressLine], [Longitute], [Latitute], [IsDeleted], [EntityId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'9f03318e-ca2c-41da-4ff0-08dbd78ea042', N'JK', N'Sringar', N'Sringar', N'national highway', 190014, N'Mir mohalla', 2.25, 1.25, 0, N'2d354e4f-22d0-48f9-db09-08dbd787320a', NULL, CAST(N'2023-10-28T08:19:37.7036872+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Addresses] ([Id], [State], [City], [Region], [Street], [PostalCode], [AddressLine], [Longitute], [Latitute], [IsDeleted], [EntityId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'4792c136-0d27-4031-4ff1-08dbd78ea042', N'JK', N'Sringar', N'Sringar', N'Dodh ganga road', 190005, N'Old Barzulla', 2.25, 1.25, 0, N'2d354e4f-22d0-48f9-db09-08dbd787320a', NULL, CAST(N'2023-10-28T08:20:09.4106940+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Addresses] ([Id], [State], [City], [Region], [Street], [PostalCode], [AddressLine], [Longitute], [Latitute], [IsDeleted], [EntityId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'e4e82688-d463-46e8-4ff2-08dbd78ea042', N'JK', N'Sringar', N'Sringar', N'National Highway', 190005, N'Athwajan', 2.25, 1.25, 0, N'94dc4290-ed56-4204-db0a-08dbd787320a', NULL, CAST(N'2023-10-28T08:20:47.8985519+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Addresses] ([Id], [State], [City], [Region], [Street], [PostalCode], [AddressLine], [Longitute], [Latitute], [IsDeleted], [EntityId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'60ffe785-2772-47b8-5c01-08dbe446c297', N'sdfsdf', N'sdfsd', N'sdfsf', N'sdfsdf', 234234, N'sdfsdf', 34.082799188991885, 74.556343655206, 0, N'e569cd9d-47e8-4d69-db0b-08dbd787320a', NULL, CAST(N'2023-11-13T12:47:56.6516188+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Addresses] ([Id], [State], [City], [Region], [Street], [PostalCode], [AddressLine], [Longitute], [Latitute], [IsDeleted], [EntityId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'9211635a-58ae-474f-8c88-08dbe5167557', N'Jammu and Kashmir', N'Srinagar', N'Kashmir', N'Baghat', 190005, N'Barzulla', 34.085216127171861, 74.55754617511424, 0, N'1f815d80-b081-4d5b-a9a8-08dbe5159bc8', NULL, CAST(N'2023-11-14T13:34:42.3751107+00:00' AS DateTimeOffset), NULL, NULL)
GO
INSERT [dbo].[AppFiles] ([Id], [Module], [FilePath], [EntityId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'fd5b8ce9-3c52-41a0-8181-08ca9caa2981', 2, N'Files\Images\eddbf195-e7ec-4024-b5ca-cbfc04410bb3ac1.jpg', N'a54fb4f0-85ec-4e2f-89c4-59abb3fee0b2', NULL, CAST(N'2023-11-08T17:22:10.0797252+05:30' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[AppFiles] ([Id], [Module], [FilePath], [EntityId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'ef348f64-5674-44a0-8cba-56ead2059ab3', 2, N'Files\Images\bd2caee9-cebf-4f61-b120-61319d18621dtv1.png', N'190bf7c9-3262-4b19-81e1-ce0da2632307', NULL, CAST(N'2023-10-28T13:00:25.8569297+05:30' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[AppFiles] ([Id], [Module], [FilePath], [EntityId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'5cf3e527-d854-4c16-b54b-5c54dceaa31b', 2, N'Files\Images\6cec3f73-925a-441c-b94f-fa2250b75b4dac1.jpg', N'cd05271d-f979-49fd-a5e4-02f59da99504', NULL, CAST(N'2023-10-28T13:04:21.5163928+05:30' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[AppFiles] ([Id], [Module], [FilePath], [EntityId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'c036a692-e4ee-48b1-9135-5d80eb7dd75b', 2, N'Files\Images\45e86b9a-af64-4547-8e0a-51bd8c2d0235feidge.jpeg', N'853effb6-15d7-442c-b8ed-14cc6db18c53', NULL, CAST(N'2023-10-28T13:04:06.1947781+05:30' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[AppFiles] ([Id], [Module], [FilePath], [EntityId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'6009c0e5-ea09-49fc-b367-6dfa86b92f68', 2, N'Files\Images\1d27c06d-8a6a-4cae-8bee-84c36e4db90bmusicsystem.jpg', N'3e6f975f-f8a3-47a6-831e-b37d04f8800d', NULL, CAST(N'2023-10-28T13:01:38.0929134+05:30' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[AppFiles] ([Id], [Module], [FilePath], [EntityId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'06c9a1db-ec92-4c1a-a54d-bb88716407db', 2, N'Files\Images\5aebc265-4d0f-4e69-ba0a-4cb92cbc1a40washingmachine.jpeg', N'44cc5679-4bd0-4931-96b5-30638f9e7ac0', NULL, CAST(N'2023-10-28T13:03:24.5257988+05:30' AS DateTimeOffset), NULL, NULL)
GO
INSERT [dbo].[AssignedEngineers] ([Id], [AssignmentDate], [EngineerId], [CallBookingId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CallStatus], [ExpectedDate], [Remarks]) VALUES (N'1cf8a759-f7ab-4f2f-94bf-08dbd7e47008', CAST(N'2023-10-29T00:03:52.5810435+05:30' AS DateTimeOffset), N'5d60c0cc-0eb9-4ecb-acde-0de7d1344d70', N'e7ade2a5-1b81-4ca0-3cb9-08dbd78f8a8e', NULL, CAST(N'2023-10-28T18:33:52.5810496+00:00' AS DateTimeOffset), NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[AssignedEngineers] ([Id], [AssignmentDate], [EngineerId], [CallBookingId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CallStatus], [ExpectedDate], [Remarks]) VALUES (N'6a788d8e-95d1-4314-3295-08dbd7f16de4', CAST(N'2023-10-29T01:36:53.3386123+05:30' AS DateTimeOffset), N'5d60c0cc-0eb9-4ecb-acde-0de7d1344d70', N'5214ba41-9dc1-4935-dcf7-08dbd7906992', NULL, CAST(N'2023-10-28T20:06:53.3386170+00:00' AS DateTimeOffset), NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[AssignedEngineers] ([Id], [AssignmentDate], [EngineerId], [CallBookingId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CallStatus], [ExpectedDate], [Remarks]) VALUES (N'0f1acb03-6570-43ba-0410-08dbe1b100f1', CAST(N'2023-11-10T11:20:54.3950897+05:30' AS DateTimeOffset), N'5d60c0cc-0eb9-4ecb-acde-0de7d1344d70', N'2b7541db-950f-41af-dcf6-08dbd7906992', N'137b947d-66f3-44be-aa99-c8cde43d6f43', CAST(N'2023-11-10T05:50:54.3950940+00:00' AS DateTimeOffset), NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[AssignedEngineers] ([Id], [AssignmentDate], [EngineerId], [CallBookingId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CallStatus], [ExpectedDate], [Remarks]) VALUES (N'8d557579-11d7-45d3-5989-08dbe516f033', CAST(N'2023-11-14T19:08:08.4974081+05:30' AS DateTimeOffset), N'5d60c0cc-0eb9-4ecb-acde-0de7d1344d70', N'2881733a-5592-4ea1-d200-08dbe5168487', N'137b947d-66f3-44be-aa99-c8cde43d6f43', CAST(N'2023-11-14T13:38:08.4974142+00:00' AS DateTimeOffset), NULL, NULL, 2, CAST(N'2023-11-17T00:00:00.0000000+05:30' AS DateTimeOffset), N'due weather condition i am not able to come to you the date i specified')
GO
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CategoryId]) VALUES (N'0303b4d6-75fb-4301-9173-08dbd788f80c', N'Voltas', N'Where there is a will there is a way', 0, NULL, CAST(N'2023-10-28T07:39:08.0136464+00:00' AS DateTimeOffset), NULL, NULL, N'cd05271d-f979-49fd-a5e4-02f59da99504')
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CategoryId]) VALUES (N'5c1e03fc-4d23-43f0-9174-08dbd788f80c', N'Blue Star', N'Where there is a will there is a way', 0, NULL, CAST(N'2023-10-28T07:39:55.8686008+00:00' AS DateTimeOffset), NULL, NULL, N'cd05271d-f979-49fd-a5e4-02f59da99504')
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CategoryId]) VALUES (N'53d043a6-12cd-4407-9175-08dbd788f80c', N'Samsung', N'Where there is a will there is a way', 0, NULL, CAST(N'2023-10-28T07:40:34.6257837+00:00' AS DateTimeOffset), NULL, NULL, N'853effb6-15d7-442c-b8ed-14cc6db18c53')
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CategoryId]) VALUES (N'668f2106-e83a-4f35-9176-08dbd788f80c', N'Whirlpool', N'Where there is a will there is a way', 0, NULL, CAST(N'2023-10-28T07:40:44.8893625+00:00' AS DateTimeOffset), NULL, NULL, N'853effb6-15d7-442c-b8ed-14cc6db18c53')
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CategoryId]) VALUES (N'd40a9ff7-fb00-472f-9177-08dbd788f80c', N'LG', N'Where there is a will there is a way', 0, NULL, CAST(N'2023-10-28T07:41:01.9068241+00:00' AS DateTimeOffset), NULL, NULL, N'44cc5679-4bd0-4931-96b5-30638f9e7ac0')
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CategoryId]) VALUES (N'fa522cb3-b23c-4d34-9178-08dbd788f80c', N'Huawei', N'Where there is a will there is a way', 0, NULL, CAST(N'2023-10-28T07:41:47.4794677+00:00' AS DateTimeOffset), NULL, NULL, N'44cc5679-4bd0-4931-96b5-30638f9e7ac0')
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CategoryId]) VALUES (N'f4c286fa-bee6-4051-9179-08dbd788f80c', N'Sony', N'Where there is a will there is a way', 0, NULL, CAST(N'2023-10-28T07:42:07.8604163+00:00' AS DateTimeOffset), NULL, NULL, N'3e6f975f-f8a3-47a6-831e-b37d04f8800d')
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CategoryId]) VALUES (N'8c809f1a-6ac8-41c7-c5a5-08dbd78a0461', N'LG', N'Where there is a will there is a way', 0, NULL, CAST(N'2023-10-28T07:46:38.1682016+00:00' AS DateTimeOffset), NULL, NULL, N'3e6f975f-f8a3-47a6-831e-b37d04f8800d')
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CategoryId]) VALUES (N'fed67a5e-dcd0-47c6-c5a6-08dbd78a0461', N'LG', N'Where there is a will there is a way', 0, NULL, CAST(N'2023-10-28T07:48:27.5257870+00:00' AS DateTimeOffset), NULL, NULL, N'190bf7c9-3262-4b19-81e1-ce0da2632307')
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CategoryId]) VALUES (N'209cadfc-1a02-4406-c5a7-08dbd78a0461', N'Samsung', N'Where there is a will there is a way', 0, NULL, CAST(N'2023-10-28T07:48:38.8459839+00:00' AS DateTimeOffset), NULL, NULL, N'190bf7c9-3262-4b19-81e1-ce0da2632307')
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CategoryId]) VALUES (N'151d33f3-63cb-4839-c5a8-08dbd78a0461', N'Sony', N'Where there is a will there is a way', 0, NULL, CAST(N'2023-10-28T07:48:49.1166931+00:00' AS DateTimeOffset), NULL, NULL, N'190bf7c9-3262-4b19-81e1-ce0da2632307')
INSERT [dbo].[Brands] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [CategoryId]) VALUES (N'9c403708-74cb-4a02-b385-08dbe0513323', N'Exide', N'sdfsdf', 0, N'764cbe0e-9b2e-4d95-af49-01b45a0fca5b', CAST(N'2023-11-08T11:52:35.7678936+00:00' AS DateTimeOffset), NULL, NULL, N'a54fb4f0-85ec-4e2f-89c4-59abb3fee0b2')
GO
INSERT [dbo].[CallBookings] ([Id], [JobNo], [CustomerId], [AddressId], [ServiceTypeId], [ModelNo], [SerialNo], [Description], [RequestDate], [CallBookingStatus], [SatisficationCode], [UnSatisficationCode], [Remarks], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Reminder]) VALUES (N'e7ade2a5-1b81-4ca0-3cb9-08dbd78f8a8e', N'1003', N'2d354e4f-22d0-48f9-db09-08dbd787320a', N'9f03318e-ca2c-41da-4ff0-08dbd78ea042', N'4bea6f5d-922b-470c-6bb8-08dbd78b59eb', N'Model-123', N'ser1235', N'Only cold is working', CAST(N'2023-10-28T13:56:09.0862597+05:30' AS DateTimeOffset), 5, 0, 0, N'', NULL, CAST(N'2023-10-28T08:26:09.0839846+00:00' AS DateTimeOffset), NULL, NULL, 2)
INSERT [dbo].[CallBookings] ([Id], [JobNo], [CustomerId], [AddressId], [ServiceTypeId], [ModelNo], [SerialNo], [Description], [RequestDate], [CallBookingStatus], [SatisficationCode], [UnSatisficationCode], [Remarks], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Reminder]) VALUES (N'be1d453d-8b09-4257-3cba-08dbd78f8a8e', N'1000', N'2d354e4f-22d0-48f9-db09-08dbd787320a', N'9f03318e-ca2c-41da-4ff0-08dbd78ea042', N'3feb3b69-b47f-4040-9102-08dbd78dcc25', N'Model-321', N'ser321', N'Is not working properly', CAST(N'2023-10-28T13:58:55.0850008+05:30' AS DateTimeOffset), 1, 0, 0, N'', NULL, CAST(N'2023-10-28T08:28:55.0848839+00:00' AS DateTimeOffset), NULL, NULL, 0)
INSERT [dbo].[CallBookings] ([Id], [JobNo], [CustomerId], [AddressId], [ServiceTypeId], [ModelNo], [SerialNo], [Description], [RequestDate], [CallBookingStatus], [SatisficationCode], [UnSatisficationCode], [Remarks], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Reminder]) VALUES (N'2b7541db-950f-41af-dcf6-08dbd7906992', N'1002', N'94dc4290-ed56-4204-db0a-08dbd787320a', N'e4e82688-d463-46e8-4ff2-08dbd78ea042', N'36cebf18-9067-4037-6bbd-08dbd78b59eb', N'Model-999', N'serial-888', N'Not working', CAST(N'2023-10-28T14:02:23.1789843+05:30' AS DateTimeOffset), 5, 0, 0, N'', NULL, CAST(N'2023-10-28T08:32:23.1766808+00:00' AS DateTimeOffset), NULL, NULL, 1)
INSERT [dbo].[CallBookings] ([Id], [JobNo], [CustomerId], [AddressId], [ServiceTypeId], [ModelNo], [SerialNo], [Description], [RequestDate], [CallBookingStatus], [SatisficationCode], [UnSatisficationCode], [Remarks], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Reminder]) VALUES (N'5214ba41-9dc1-4935-dcf7-08dbd7906992', N'1001', N'94dc4290-ed56-4204-db0a-08dbd787320a', N'e4e82688-d463-46e8-4ff2-08dbd78ea042', N'43b00b89-e5f6-41c1-90ff-08dbd78dcc25', N'Model-999', N'serial-888', N'Installation', CAST(N'2023-10-28T14:03:00.6553127+05:30' AS DateTimeOffset), 5, 0, 0, N'We are happy to inform you that we can provide you the service now', NULL, CAST(N'2023-10-28T08:33:00.6550686+00:00' AS DateTimeOffset), NULL, NULL, 0)
INSERT [dbo].[CallBookings] ([Id], [JobNo], [CustomerId], [AddressId], [ServiceTypeId], [ModelNo], [SerialNo], [Description], [RequestDate], [CallBookingStatus], [SatisficationCode], [UnSatisficationCode], [Remarks], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Reminder]) VALUES (N'e80e0f2c-2107-44eb-ba61-08dbe446cd7e', N'1004', N'e569cd9d-47e8-4d69-db0b-08dbd787320a', N'60ffe785-2772-47b8-5c01-08dbe446c297', N'4bea6f5d-922b-470c-6bb8-08dbd78b59eb', N'eeee', N'dddd', N'ddd', CAST(N'2023-11-13T18:18:14.9091698+05:30' AS DateTimeOffset), 1, 0, 0, N'', N'e569cd9d-47e8-4d69-db0b-08dbd787320a', CAST(N'2023-11-13T12:48:14.9085444+00:00' AS DateTimeOffset), NULL, NULL, 0)
INSERT [dbo].[CallBookings] ([Id], [JobNo], [CustomerId], [AddressId], [ServiceTypeId], [ModelNo], [SerialNo], [Description], [RequestDate], [CallBookingStatus], [SatisficationCode], [UnSatisficationCode], [Remarks], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Reminder]) VALUES (N'2881733a-5592-4ea1-d200-08dbe5168487', N'1005', N'1f815d80-b081-4d5b-a9a8-08dbe5159bc8', N'9211635a-58ae-474f-8c88-08dbe5167557', N'4bea6f5d-922b-470c-6bb8-08dbd78b59eb', N'112233', N'44555666', N'cooling is not working', CAST(N'2023-11-14T19:05:07.8224048+05:30' AS DateTimeOffset), 4, 0, 0, N'', N'1f815d80-b081-4d5b-a9a8-08dbe5159bc8', CAST(N'2023-11-14T13:35:07.8217693+00:00' AS DateTimeOffset), NULL, NULL, 0)
GO
INSERT [dbo].[Categories] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [ManagerId]) VALUES (N'cd05271d-f979-49fd-a5e4-02f59da99504', N'AC', N'What ever God does is done for our best', 0, NULL, CAST(N'2023-10-28T07:37:40.7896132+00:00' AS DateTimeOffset), NULL, CAST(N'2023-10-28T13:07:40.7896360+05:30' AS DateTimeOffset), N'137b947d-66f3-44be-aa99-c8cde43d6f43')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [ManagerId]) VALUES (N'853effb6-15d7-442c-b8ed-14cc6db18c53', N'Refrigerator', N'A quick brown fox jumps over the lazy dog', 0, NULL, CAST(N'2023-10-28T07:34:06.1837425+00:00' AS DateTimeOffset), NULL, NULL, N'137b947d-66f3-44be-aa99-c8cde43d6f43')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [ManagerId]) VALUES (N'44cc5679-4bd0-4931-96b5-30638f9e7ac0', N'Washing Machine', N'A quick brown fox jumps over the lazy dog', 0, NULL, CAST(N'2023-10-28T07:33:24.5207370+00:00' AS DateTimeOffset), NULL, NULL, N'137b947d-66f3-44be-aa99-c8cde43d6f43')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [ManagerId]) VALUES (N'a54fb4f0-85ec-4e2f-89c4-59abb3fee0b2', N'Inverter', N'sdfsdf', 0, NULL, CAST(N'2023-11-08T11:52:10.0235285+00:00' AS DateTimeOffset), NULL, NULL, N'd2ec0d02-6181-43e3-bb59-78ea1c7a2c5b')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [ManagerId]) VALUES (N'3e6f975f-f8a3-47a6-831e-b37d04f8800d', N'Music System', N'A quick brown fox jumps over the lazy dog', 0, NULL, CAST(N'2023-10-28T07:31:38.0864957+00:00' AS DateTimeOffset), NULL, NULL, N'd2ec0d02-6181-43e3-bb59-78ea1c7a2c5b')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [ManagerId]) VALUES (N'190bf7c9-3262-4b19-81e1-ce0da2632307', N'TV', N'A quick brown fox jumps over the lazy dog', 0, NULL, CAST(N'2023-10-28T07:30:25.8005508+00:00' AS DateTimeOffset), NULL, NULL, N'd2ec0d02-6181-43e3-bb59-78ea1c7a2c5b')
GO
INSERT [dbo].[JobRoles] ([Id], [CategoryId], [EngineerId], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'5bde19b3-ad59-4403-7d1f-08dbd7be0512', N'cd05271d-f979-49fd-a5e4-02f59da99504', N'5d60c0cc-0eb9-4ecb-acde-0de7d1344d70', 0, NULL, CAST(N'2023-10-28T13:58:52.5433376+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[JobRoles] ([Id], [CategoryId], [EngineerId], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'dab7483a-e973-499e-7d20-08dbd7be0512', N'190bf7c9-3262-4b19-81e1-ce0da2632307', N'5d60c0cc-0eb9-4ecb-acde-0de7d1344d70', 0, NULL, CAST(N'2023-10-28T13:59:29.4180482+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[JobRoles] ([Id], [CategoryId], [EngineerId], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'23479b72-6596-4c69-7d21-08dbd7be0512', N'853effb6-15d7-442c-b8ed-14cc6db18c53', N'e56ef7d3-ce38-427d-a8cd-f517833e3447', 0, NULL, CAST(N'2023-10-28T14:00:07.5490278+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[JobRoles] ([Id], [CategoryId], [EngineerId], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'a42a1133-ea2f-4859-7d22-08dbd7be0512', N'3e6f975f-f8a3-47a6-831e-b37d04f8800d', N'e56ef7d3-ce38-427d-a8cd-f517833e3447', 0, NULL, CAST(N'2023-10-28T14:00:32.5299985+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[JobRoles] ([Id], [CategoryId], [EngineerId], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'353b6b29-1f8f-4e75-7d23-08dbd7be0512', N'853effb6-15d7-442c-b8ed-14cc6db18c53', N'6c72b060-2da2-4a7e-8bd9-5efa51103c51', 0, NULL, CAST(N'2023-10-28T14:01:42.4640691+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[JobRoles] ([Id], [CategoryId], [EngineerId], [IsDeleted], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'c1f1cda6-3bd1-49e0-7d24-08dbd7be0512', N'44cc5679-4bd0-4931-96b5-30638f9e7ac0', N'6c72b060-2da2-4a7e-8bd9-5efa51103c51', 0, NULL, CAST(N'2023-10-28T14:01:55.8293184+00:00' AS DateTimeOffset), NULL, NULL)
GO
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'4bea6f5d-922b-470c-6bb8-08dbd78b59eb', N'Repair', N'We Provide best repair service', CAST(2000.00 AS Decimal(18, 2)), 5, 20, 1, N'0303b4d6-75fb-4301-9173-08dbd788f80c', NULL, CAST(N'2023-10-28T07:56:10.1740040+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'74f3aa87-c2ec-48c7-6bb9-08dbd78b59eb', N'Installation', N'We Provide best repair service', CAST(1500.00 AS Decimal(18, 2)), 5, 20, 1, N'0303b4d6-75fb-4301-9173-08dbd788f80c', NULL, CAST(N'2023-10-28T07:56:58.2330415+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'653471fc-ab97-4ed8-6bba-08dbd78b59eb', N'Installation', N'We Provide best repair service', CAST(1500.00 AS Decimal(18, 2)), 5, 20, 1, N'5c1e03fc-4d23-43f0-9174-08dbd788f80c', NULL, CAST(N'2023-10-28T07:57:27.0661215+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'42a9c3b8-0500-42d6-6bbb-08dbd78b59eb', N'Repair', N'We Provide best repair service', CAST(2500.00 AS Decimal(18, 2)), 5, 20, 1, N'5c1e03fc-4d23-43f0-9174-08dbd788f80c', NULL, CAST(N'2023-10-28T07:57:37.1081630+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'7372c3de-b366-4325-6bbc-08dbd78b59eb', N'Repair', N'We Provide best repair service', CAST(1500.00 AS Decimal(18, 2)), 5, 20, 1, N'53d043a6-12cd-4407-9175-08dbd788f80c', NULL, CAST(N'2023-10-28T07:59:46.2138887+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'36cebf18-9067-4037-6bbd-08dbd78b59eb', N'Repair', N'We Provide best repair service', CAST(1500.00 AS Decimal(18, 2)), 5, 20, 1, N'668f2106-e83a-4f35-9176-08dbd788f80c', NULL, CAST(N'2023-10-28T07:59:59.5238341+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'44955d2a-0822-4f52-6bbe-08dbd78b59eb', N'Repair', N'We Provide best repair service', CAST(1500.00 AS Decimal(18, 2)), 5, 20, 1, N'd40a9ff7-fb00-472f-9177-08dbd788f80c', NULL, CAST(N'2023-10-28T08:00:20.4802431+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'70bc6a29-7f48-4a77-6bbf-08dbd78b59eb', N'Repair', N'We Provide best repair service', CAST(1500.00 AS Decimal(18, 2)), 5, 20, 1, N'fa522cb3-b23c-4d34-9178-08dbd788f80c', NULL, CAST(N'2023-10-28T08:00:57.5207274+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'e3652792-c875-44cb-6bc0-08dbd78b59eb', N'Repair', N'We Provide best repair service', CAST(500.00 AS Decimal(18, 2)), 5, 20, 1, N'f4c286fa-bee6-4051-9179-08dbd788f80c', NULL, CAST(N'2023-10-28T08:01:21.7429686+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'3b23dca9-136a-4091-6bc1-08dbd78b59eb', N'Repair', N'We Provide best repair service', CAST(500.00 AS Decimal(18, 2)), 5, 20, 1, N'8c809f1a-6ac8-41c7-c5a5-08dbd78a0461', NULL, CAST(N'2023-10-28T08:01:40.5018428+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'43b00b89-e5f6-41c1-90ff-08dbd78dcc25', N'Instalation', N'What Ever God does is done for our best', CAST(1000.00 AS Decimal(18, 2)), 5, 10, 1, N'fed67a5e-dcd0-47c6-c5a6-08dbd78a0461', NULL, CAST(N'2023-10-28T08:13:41.7898233+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'1f2c4e38-372d-4fbd-9100-08dbd78dcc25', N'Instalation', N'What Ever God does is done for our best', CAST(1000.00 AS Decimal(18, 2)), 5, 10, 1, N'209cadfc-1a02-4406-c5a7-08dbd78a0461', NULL, CAST(N'2023-10-28T08:14:08.1612684+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'6babd98e-14d1-41ef-9101-08dbd78dcc25', N'Repair', N'What Ever God does is done for our best', CAST(1000.00 AS Decimal(18, 2)), 5, 10, 1, N'209cadfc-1a02-4406-c5a7-08dbd78a0461', NULL, CAST(N'2023-10-28T08:14:14.1601840+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'3feb3b69-b47f-4040-9102-08dbd78dcc25', N'Repair', N'What Ever God does is done for our best', CAST(1200.00 AS Decimal(18, 2)), 5, 10, 1, N'151d33f3-63cb-4839-c5a8-08dbd78a0461', NULL, CAST(N'2023-10-28T08:14:36.2974724+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[ServiceTypes] ([Id], [Name], [Description], [Charges], [FreeServiceDistance], [PerKilometerCharge], [IsAvailable], [BrandId], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'b16d1595-2a7e-40d3-9103-08dbd78dcc25', N'Installation', N'What Ever God does is done for our best', CAST(2000.00 AS Decimal(18, 2)), 5, 10, 1, N'151d33f3-63cb-4839-c5a8-08dbd78a0461', NULL, CAST(N'2023-10-28T08:14:55.8799962+00:00' AS DateTimeOffset), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'764cbe0e-9b2e-4d95-af49-01b45a0fca5b', N'admin', N'admin', N'$2a$11$TYYBxfFaSET3Oizd0CXEleNVtkdE7FEE.p60NpoAT13WT38X2OP5q', N'$2a$11$TYYBxfFaSET3Oizd0CXEle', N'samiaullah1@gmail.com', N'8825084050', N'', 1, 1, 1, 1, N'f5ea5b45-4a16-4734-a03e-f226ed7799bc', CAST(N'2023-10-29T18:24:39.2567648+05:30' AS DateTimeOffset), N'0ae573f0-e772-47b6-a414-41786de9f2e8', CAST(N'2023-10-29T18:24:39.2567687+05:30' AS DateTimeOffset))
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'2d354e4f-22d0-48f9-db09-08dbd787320a', N'Irfan Mir', N'irfan', N'$2a$11$Tx5ZGRAr/WRJF9VeMrLwBOeb/pXNOx91ntTXQgHiPjqnfk5pqRkuW', N'$2a$11$Tx5ZGRAr/WRJF9VeMrLwBO', N'samiaullah1+7@gmail.com', N'9419807090', N'$2a$11$p9H9Brd5mZtPjTqDqdlCcO', 1, 4, 1, 1, NULL, CAST(N'2023-10-28T07:26:26.0749806+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'94dc4290-ed56-4204-db0a-08dbd787320a', N'Abid Rather', N'abid', N'$2a$11$P3XB7RZTPXlY7klJtsnRUO2gh9gJKG60YqE3MflqBLqagcyxp4/Fa', N'$2a$11$P3XB7RZTPXlY7klJtsnRUO', N'samiaullah1+8@gmail.com', N'8825087090', N'$2a$11$kmHJ8lU3ezSZd8dJi9PA/u', 1, 4, 1, 1, NULL, CAST(N'2023-10-28T07:26:54.1951348+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'e569cd9d-47e8-4d69-db0b-08dbd787320a', N'Mehran', N'mehran', N'$2a$11$rAnPKCBEorcqYsq8Zje9YeK2minbe2Wc7cRmWdHavz0Mp046GqcL.', N'$2a$11$rAnPKCBEorcqYsq8Zje9Ye', N'samiaullah1+9@gmail.com', N'8825087097', N'$2a$11$ItYXvw2m5TZTKHE3e2V37u', 1, 4, 1, 1, NULL, CAST(N'2023-10-28T07:27:18.0318594+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'd7832806-4883-477e-a9a6-08dbe5159bc8', N'Faisal Mushtaq', N'faisal', N'$2a$11$VanYOKbHnlVy02Ba.1r4EehBxNMWCrBh4bIblQJAsZxIhnFBpWrk6', N'$2a$11$VanYOKbHnlVy02Ba.1r4Ee', N'rizwandar33+1@gmail.com', N'9697956788', N'$2a$11$koKlyyUY7oeyUOgqoOFhFe', 1, 4, 1, 0, NULL, CAST(N'2023-11-14T13:28:37.1113975+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'babd232c-137e-4498-a9a7-08dbe5159bc8', N'Adil', N'adil', N'$2a$11$dLLOT8dZla4f8ZLwD1fTauAPRD8sul.bLFUXuv.DkZCL8aON3UlwO', N'$2a$11$dLLOT8dZla4f8ZLwD1fTau', N'samiaullah1+33@gmail.com', N'778866555', N'$2a$11$BRNJdev3JVOtKFqxosoJl.', 1, 4, 1, 0, NULL, CAST(N'2023-11-14T13:30:17.7549147+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'1f815d80-b081-4d5b-a9a8-08dbe5159bc8', N'musaib', N'musaib', N'$2a$11$L029AgKMMHCfPxoFrVafBeVwm.H6Q53X2foiJq8LnBIPOeRzVAGUu', N'$2a$11$L029AgKMMHCfPxoFrVafBe', N'logichubss+44@gmail.com', N'88877777', N'', 1, 4, 1, 1, NULL, CAST(N'2023-11-14T13:32:36.4011252+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'5d60c0cc-0eb9-4ecb-acde-0de7d1344d70', N'Rizwan', N'samiaullah14', N'$2a$11$XUbHZytaX6C53rbwyJIibu5yLibjaa0pdq/Zir7HIs4pDNbtckKge', N'$2a$11$XUbHZytaX6C53rbwyJIibu', N'samiaullah1+4@gmail.com', N'9419001122', N'$2a$11$p5Z3zAZwdgIFDh.SmcvPjO', 0, 3, 1, 1, NULL, CAST(N'2023-10-28T07:22:07.0636803+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'fff73f6c-44ec-41c8-9536-161359cd16f6', N'rizwan1', N'samiaullah116', N'$2a$11$t1Q1/9owOD9k2LwyrM7YpOB/ERE0a5RcY4pFSDOpsz8VBknUXCcem', N'$2a$11$t1Q1/9owOD9k2LwyrM7YpO', N'samiaullah1+16@gmail.com', N'8828054050', N'$2a$11$Y2GVX9.0UvbnFvN9iGbE.e', 0, 3, 1, 1, N'764cbe0e-9b2e-4d95-af49-01b45a0fca5b', CAST(N'2023-11-13T09:42:15.0657399+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'6c72b060-2da2-4a7e-8bd9-5efa51103c51', N'Adil', N'samiaullah15', N'$2a$11$vOIOqGaA8OKlFG9rXD5VC.vHEE.0yoYWewLCt.J6RnqZEkZkZBnOS', N'$2a$11$vOIOqGaA8OKlFG9rXD5VC.', N'samiaullah1+5@gmail.com', N'9622504060', N'$2a$11$3vnrbOFCUY8pFfiP4vBZ8.', 0, 3, 1, 1, NULL, CAST(N'2023-10-28T07:24:31.8727232+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'd2ec0d02-6181-43e3-bb59-78ea1c7a2c5b', N'Sami Ulla', N'samiaullah11', N'$2a$11$NJLFprwPybbUY/q0bZZsquzYqf7.YrJh21YMYXnn1BhxloeeHbF2u', N'$2a$11$NJLFprwPybbUY/q0bZZsqu', N'samiaullah1+1@gmail.com', N'8825084051', N'$2a$11$AcusDd/.019w54OF54N2D.', 0, 2, 1, 1, NULL, CAST(N'2023-10-28T07:20:20.2438484+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'45480e1b-3a85-4c1a-8b2a-a9c338cf7d70', N'Rizwan', N'samiaullah155', N'$2a$11$TqMXePzU47Z5WyBUhCIvae0hgwHu8EIN.ZbxAyfxVX82aM7Zw.tLK', N'$2a$11$TqMXePzU47Z5WyBUhCIvae', N'samiaullah1+55@gmail.com', N'98797987', N'$2a$11$4CIqzgZpJnO6SbLKy2DmAO', 0, 2, 1, 1, NULL, CAST(N'2023-11-13T09:11:50.7013235+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'137b947d-66f3-44be-aa99-c8cde43d6f43', N'Sarfaraz Ahmad', N'samiaullah12', N'$2a$11$eTm7v58rwnwMsFnxWL0A3.lBQmPwF6kXuK5iR52dsm43nO8LWJuna', N'$2a$11$eTm7v58rwnwMsFnxWL0A3.', N'samiaullah1+2@gmail.com', N'9622909090', N'$2a$11$Wdp/yYrem6iPZkN9wZck/u', 0, 2, 1, 1, NULL, CAST(N'2023-10-28T07:21:05.0526838+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'f48621a4-80a8-4754-88c5-c98d3ac2b9b3', N'Rizwan Ahmad', N'samiaullah156', N'$2a$11$o4BXIlznuMhEtoKc8AHpOuNApnlbhiMEhbbg8qqDWb6AMMxwERlDe', N'$2a$11$o4BXIlznuMhEtoKc8AHpOu', N'samiaullah1+56@gmail.com', N'123456789', N'$2a$11$i/PMPJ35CxKEhXRL0XdItu', 0, 2, 1, 1, NULL, CAST(N'2023-11-13T09:17:04.7232756+00:00' AS DateTimeOffset), NULL, NULL)
INSERT [dbo].[Users] ([Id], [FullName], [Username], [Password], [Salt], [Email], [PhoneNumber], [ConfirmationCode], [Gender], [UserRole], [UserStatus], [IsEmailVerified], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (N'e56ef7d3-ce38-427d-a8cd-f517833e3447', N'Faisal Mushtaq', N'samiaullah13', N'$2a$11$n3o5Tyi5HXfxk7qAB2xhl.FNTq6Nlx./mUQgN4j.uJ8PQhVtDQKK2', N'$2a$11$n3o5Tyi5HXfxk7qAB2xhl.', N'samiaullah1+3@gmail.com', N'8825102030', N'$2a$11$.IX7TXnrWtab9QvMtU.9Zu', 0, 3, 1, 1, NULL, CAST(N'2023-10-28T07:21:44.4239313+00:00' AS DateTimeOffset), NULL, NULL)
GO
INSERT [dbo].[Visits] ([Id], [VisitDate], [TimeIn], [TimeOut], [AssingedEngineerId], [TechnicalRemarks], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [TotalDistance]) VALUES (N'afa4b28f-a1a2-4e80-551c-08dbe51ca7f6', CAST(N'0001-01-01T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'10:15:00' AS Time), CAST(N'11:00:00' AS Time), N'8d557579-11d7-45d3-5989-08dbe516f033', N'work done', NULL, CAST(N'2023-11-14T14:19:04.2493216+00:00' AS DateTimeOffset), NULL, NULL, 10)
INSERT [dbo].[Visits] ([Id], [VisitDate], [TimeIn], [TimeOut], [AssingedEngineerId], [TechnicalRemarks], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [TotalDistance]) VALUES (N'fb7013f4-0cd4-4368-2bb8-08dbe521e3d2', CAST(N'0001-01-01T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'10:10:00' AS Time), CAST(N'14:00:00' AS Time), N'8d557579-11d7-45d3-5989-08dbe516f033', N'jkljdjkljlakjlkjkj', NULL, CAST(N'2023-11-14T14:56:32.1600001+00:00' AS DateTimeOffset), NULL, NULL, 10)
GO
ALTER TABLE [dbo].[AssignedEngineers] ADD  DEFAULT ((0)) FOR [CallStatus]
GO
ALTER TABLE [dbo].[Brands] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [CategoryId]
GO
ALTER TABLE [dbo].[CallBookings] ADD  DEFAULT ((0)) FOR [Reminder]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ManagerId]
GO
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [CallBookingId]
GO
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT (N'') FOR [InvoiceNo]
GO
ALTER TABLE [dbo].[Parts] ADD  DEFAULT (N'') FOR [SerialNo]
GO
ALTER TABLE [dbo].[Visits] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [TotalDistance]
GO
ALTER TABLE [dbo].[AppPayments]  WITH CHECK ADD  CONSTRAINT [FK_AppPayments_AppOrders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[AppOrders] ([Id])
GO
ALTER TABLE [dbo].[AppPayments] CHECK CONSTRAINT [FK_AppPayments_AppOrders_OrderId]
GO
ALTER TABLE [dbo].[AssignedEngineers]  WITH CHECK ADD  CONSTRAINT [FK_AssignedEngineers_CallBookings_CallBookingId] FOREIGN KEY([CallBookingId])
REFERENCES [dbo].[CallBookings] ([Id])
GO
ALTER TABLE [dbo].[AssignedEngineers] CHECK CONSTRAINT [FK_AssignedEngineers_CallBookings_CallBookingId]
GO
ALTER TABLE [dbo].[AssignedEngineers]  WITH CHECK ADD  CONSTRAINT [FK_AssignedEngineers_Users_EngineerId] FOREIGN KEY([EngineerId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[AssignedEngineers] CHECK CONSTRAINT [FK_AssignedEngineers_Users_EngineerId]
GO
ALTER TABLE [dbo].[Brands]  WITH CHECK ADD  CONSTRAINT [FK_Brands_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Brands] CHECK CONSTRAINT [FK_Brands_Categories_CategoryId]
GO
ALTER TABLE [dbo].[CallBookings]  WITH CHECK ADD  CONSTRAINT [FK_CallBookings_Addresses_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Addresses] ([Id])
GO
ALTER TABLE [dbo].[CallBookings] CHECK CONSTRAINT [FK_CallBookings_Addresses_AddressId]
GO
ALTER TABLE [dbo].[CallBookings]  WITH CHECK ADD  CONSTRAINT [FK_CallBookings_ServiceTypes_ServiceTypeId] FOREIGN KEY([ServiceTypeId])
REFERENCES [dbo].[ServiceTypes] ([Id])
GO
ALTER TABLE [dbo].[CallBookings] CHECK CONSTRAINT [FK_CallBookings_ServiceTypes_ServiceTypeId]
GO
ALTER TABLE [dbo].[CallBookings]  WITH CHECK ADD  CONSTRAINT [FK_CallBookings_Users_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[CallBookings] CHECK CONSTRAINT [FK_CallBookings_Users_CustomerId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Users_ManagerId] FOREIGN KEY([ManagerId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Users_ManagerId]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Invoices_InvoiceId] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoices] ([Id])
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Invoices_InvoiceId]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Parts_PartId] FOREIGN KEY([PartId])
REFERENCES [dbo].[Parts] ([Id])
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Parts_PartId]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_CallBookings_CallBookingId] FOREIGN KEY([CallBookingId])
REFERENCES [dbo].[CallBookings] ([Id])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_CallBookings_CallBookingId]
GO
ALTER TABLE [dbo].[JobRoles]  WITH CHECK ADD  CONSTRAINT [FK_JobRoles_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[JobRoles] CHECK CONSTRAINT [FK_JobRoles_Categories_CategoryId]
GO
ALTER TABLE [dbo].[JobRoles]  WITH CHECK ADD  CONSTRAINT [FK_JobRoles_Users_EngineerId] FOREIGN KEY([EngineerId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[JobRoles] CHECK CONSTRAINT [FK_JobRoles_Users_EngineerId]
GO
ALTER TABLE [dbo].[Parts]  WITH CHECK ADD  CONSTRAINT [FK_Parts_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Parts] CHECK CONSTRAINT [FK_Parts_Brands_BrandId]
GO
ALTER TABLE [dbo].[ServiceTypes]  WITH CHECK ADD  CONSTRAINT [FK_ServiceTypes_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[ServiceTypes] CHECK CONSTRAINT [FK_ServiceTypes_Brands_BrandId]
GO
ALTER TABLE [dbo].[Visits]  WITH CHECK ADD  CONSTRAINT [FK_Visits_AssignedEngineers_AssingedEngineerId] FOREIGN KEY([AssingedEngineerId])
REFERENCES [dbo].[AssignedEngineers] ([Id])
GO
ALTER TABLE [dbo].[Visits] CHECK CONSTRAINT [FK_Visits_AssignedEngineers_AssingedEngineerId]
GO
