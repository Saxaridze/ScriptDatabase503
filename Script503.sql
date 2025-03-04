USE [503]
GO
/****** Object:  Table [dbo].[Computers]    Script Date: 18.07.2024 20:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Computers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Processor] [varchar](100) NULL,
	[RAM] [varchar](50) NULL,
	[Motherboard] [varchar](100) NULL,
	[HDD] [varchar](100) NULL,
	[GraphicsCard] [varchar](100) NULL,
	[NetworkAdapters] [varchar](200) NULL,
	[Monitor] [varchar](100) NULL,
 CONSTRAINT [PK_Computers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 18.07.2024 20:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ComputerID] [int] NULL,
	[NetworkEquipmentID] [int] NULL,
	[PeripheralDeviceID] [int] NULL,
	[EquipmentTypeID] [int] NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentType]    Script Date: 18.07.2024 20:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeEquip] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EquipmentType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 18.07.2024 20:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventType] [varchar](50) NULL,
	[EventDate] [date] NULL,
	[EquipmentID] [int] NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaintenanceSchedule]    Script Date: 18.07.2024 20:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaintenanceSchedule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentID] [int] NULL,
	[ScheduledDate] [date] NULL,
	[Description] [text] NULL,
	[PerformedBy] [int] NULL,
	[Сheck] [bit] NULL,
 CONSTRAINT [PK_MaintenanceSchedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NetworkEquipment]    Script Date: 18.07.2024 20:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetworkEquipment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Ports] [varchar](100) NULL,
	[Features] [text] NULL,
	[NetworkTypeID] [int] NULL,
 CONSTRAINT [PK_NetworkEquipment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NetworkType]    Script Date: 18.07.2024 20:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetworkType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeNetWork] [varchar](100) NULL,
 CONSTRAINT [PK_NetworkType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeripheralDevices]    Script Date: 18.07.2024 20:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeripheralDevices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_PeripheralDevices] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 18.07.2024 20:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Software]    Script Date: 18.07.2024 20:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Software](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Version] [varchar](50) NULL,
	[LicenseKey] [varchar](100) NULL,
	[InstalledOn] [date] NULL,
	[ComputerID] [int] NULL,
 CONSTRAINT [PK_Software] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 18.07.2024 20:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](200) NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Computers] ON 

INSERT [dbo].[Computers] ([ID], [Processor], [RAM], [Motherboard], [HDD], [GraphicsCard], [NetworkAdapters], [Monitor]) VALUES (1, N'Intel i3-4460', N'4 GB', N'Gigabyte H81M – 32PV', N'Seagate 1000 GB', N'NVIDIA GeForce GT610', N'Realtek PCIe GbE Family Controller', N'D-Link DGE-528T Gigabit Ethernet')
SET IDENTITY_INSERT [dbo].[Computers] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (1, 1, NULL, NULL, 1)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (2, NULL, 1, NULL, 2)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (3, NULL, 2, NULL, 2)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (4, NULL, 3, NULL, 2)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (5, NULL, 4, NULL, 2)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (6, NULL, NULL, 1, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (7, NULL, NULL, 2, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (8, NULL, NULL, 3, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (9, NULL, NULL, 4, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (10, NULL, NULL, 5, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (11, NULL, NULL, 6, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (12, NULL, NULL, 7, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (13, NULL, NULL, 8, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (14, NULL, NULL, 9, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (15, NULL, NULL, 10, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (16, NULL, NULL, 11, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (17, NULL, NULL, 12, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (18, NULL, NULL, 13, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (19, NULL, NULL, 14, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (20, NULL, NULL, 15, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (21, NULL, NULL, 16, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (22, NULL, NULL, 17, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (23, NULL, NULL, 18, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (24, NULL, NULL, 19, 3)
INSERT [dbo].[Equipment] ([ID], [ComputerID], [NetworkEquipmentID], [PeripheralDeviceID], [EquipmentTypeID]) VALUES (25, NULL, NULL, 20, 3)
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[EquipmentType] ON 

INSERT [dbo].[EquipmentType] ([ID], [TypeEquip]) VALUES (1, N'Computer')
INSERT [dbo].[EquipmentType] ([ID], [TypeEquip]) VALUES (2, N'NetworkEquipment')
INSERT [dbo].[EquipmentType] ([ID], [TypeEquip]) VALUES (3, N'PeripheralDevice')
SET IDENTITY_INSERT [dbo].[EquipmentType] OFF
GO
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([ID], [EventType], [EventDate], [EquipmentID], [Description]) VALUES (1, N'Установка ПО', CAST(N'2023-05-10' AS Date), 1, N'Установлен Windows 10 Pro на компьютер
')
INSERT [dbo].[Events] ([ID], [EventType], [EventDate], [EquipmentID], [Description]) VALUES (2, N'Замена оборудования', CAST(N'2023-06-15' AS Date), 1, N'Заменен жесткий диск на Seagate 2000 GB
')
INSERT [dbo].[Events] ([ID], [EventType], [EventDate], [EquipmentID], [Description]) VALUES (3, N'Перезагрузка', CAST(N'2023-06-20' AS Date), 1, N'Произведена перезагрузка компьютера
')
INSERT [dbo].[Events] ([ID], [EventType], [EventDate], [EquipmentID], [Description]) VALUES (4, N'Установка обновления', CAST(N'2023-07-05' AS Date), 1, N'Установлены обновления для Microsoft Office
')
INSERT [dbo].[Events] ([ID], [EventType], [EventDate], [EquipmentID], [Description]) VALUES (5, N'Установка ПО', CAST(N'2023-05-12' AS Date), 2, N'Установлено обновление прошивки для Cisco 800
')
INSERT [dbo].[Events] ([ID], [EventType], [EventDate], [EquipmentID], [Description]) VALUES (6, N'Замена оборудования', CAST(N'2023-07-01' AS Date), 3, N'Заменен DFL-260E на новую модель DFL-280E
')
INSERT [dbo].[Events] ([ID], [EventType], [EventDate], [EquipmentID], [Description]) VALUES (7, N'Перезагрузка', CAST(N'2023-07-10' AS Date), 2, N'Произведена перезагрузка Cisco 800
')
INSERT [dbo].[Events] ([ID], [EventType], [EventDate], [EquipmentID], [Description]) VALUES (8, N'Обновление ПО', CAST(N'2023-08-05' AS Date), 3, N'Обновлено программное обеспечение на ES-1024D
')
INSERT [dbo].[Events] ([ID], [EventType], [EventDate], [EquipmentID], [Description]) VALUES (9, N'Перемещение	', CAST(N'2023-08-15' AS Date), 4, N'Перемещение принтера HP LaserJet Pro в другой офис
')
INSERT [dbo].[Events] ([ID], [EventType], [EventDate], [EquipmentID], [Description]) VALUES (10, N'Установка ПО', CAST(N'2023-05-20' AS Date), 5, N'Установлен драйвер для сканера Canon CanoScan LiDE
')
INSERT [dbo].[Events] ([ID], [EventType], [EventDate], [EquipmentID], [Description]) VALUES (11, N'Удаление ПО', CAST(N'2023-06-01' AS Date), 1, N'Удалено устаревшее ПО с компьютера
')
INSERT [dbo].[Events] ([ID], [EventType], [EventDate], [EquipmentID], [Description]) VALUES (12, N'Обновление драйвера	', CAST(N'2023-06-25' AS Date), 5, N'Обновлен драйвер для Canon CanoScan LiDE
')
SET IDENTITY_INSERT [dbo].[Events] OFF
GO
SET IDENTITY_INSERT [dbo].[MaintenanceSchedule] ON 

INSERT [dbo].[MaintenanceSchedule] ([ID], [EquipmentID], [ScheduledDate], [Description], [PerformedBy], [Сheck]) VALUES (1, 1, CAST(N'2024-07-01' AS Date), N'Проверка работы жесткого диска и процессора	', 2, 1)
INSERT [dbo].[MaintenanceSchedule] ([ID], [EquipmentID], [ScheduledDate], [Description], [PerformedBy], [Сheck]) VALUES (2, 2, CAST(N'2024-07-10' AS Date), N'Профилактическая чистка и обновление прошивки	', 3, 0)
INSERT [dbo].[MaintenanceSchedule] ([ID], [EquipmentID], [ScheduledDate], [Description], [PerformedBy], [Сheck]) VALUES (3, 3, CAST(N'2024-08-05' AS Date), N'Проверка состояния портов и сетевых соединений	', 1, 1)
INSERT [dbo].[MaintenanceSchedule] ([ID], [EquipmentID], [ScheduledDate], [Description], [PerformedBy], [Сheck]) VALUES (4, 4, CAST(N'2024-07-15' AS Date), N'Замена сетевого кабеля и настройка брандмауэра	', 2, 1)
INSERT [dbo].[MaintenanceSchedule] ([ID], [EquipmentID], [ScheduledDate], [Description], [PerformedBy], [Сheck]) VALUES (5, 5, CAST(N'2024-06-30' AS Date), N'Проверка механизмов печати и замена тонера	', 3, 1)
INSERT [dbo].[MaintenanceSchedule] ([ID], [EquipmentID], [ScheduledDate], [Description], [PerformedBy], [Сheck]) VALUES (6, 1, CAST(N'2024-07-20' AS Date), N'Оптимизация работы операционной системы	', 1, 1)
INSERT [dbo].[MaintenanceSchedule] ([ID], [EquipmentID], [ScheduledDate], [Description], [PerformedBy], [Сheck]) VALUES (7, 2, CAST(N'2024-08-10' AS Date), N'Замена батареи и проверка работоспособности роутера	', 2, 0)
INSERT [dbo].[MaintenanceSchedule] ([ID], [EquipmentID], [ScheduledDate], [Description], [PerformedBy], [Сheck]) VALUES (8, 3, CAST(N'2024-08-15' AS Date), N'Проверка наличия обновлений и устранение уязвимостей	', 3, 0)
INSERT [dbo].[MaintenanceSchedule] ([ID], [EquipmentID], [ScheduledDate], [Description], [PerformedBy], [Сheck]) VALUES (9, 4, CAST(N'2024-07-25' AS Date), N'Проверка настройки фильтрации трафика и VPN	', 1, 0)
INSERT [dbo].[MaintenanceSchedule] ([ID], [EquipmentID], [ScheduledDate], [Description], [PerformedBy], [Сheck]) VALUES (10, 5, CAST(N'2024-08-01' AS Date), N'Профилактическая очистка и калибровка сканера	', 2, 0)
SET IDENTITY_INSERT [dbo].[MaintenanceSchedule] OFF
GO
SET IDENTITY_INSERT [dbo].[NetworkEquipment] ON 

INSERT [dbo].[NetworkEquipment] ([ID], [Name], [Ports], [Features], [NetworkTypeID]) VALUES (1, N'DES-3028EOL	', N'24x10/100 Mbps, 2x1000BASE-T, 2x1000BASE-T/SFP', N'Managed Layer 2
', 2)
INSERT [dbo].[NetworkEquipment] ([ID], [Name], [Ports], [Features], [NetworkTypeID]) VALUES (2, N'Cisco 800	', N'Varies by model	', N'Cisco IOS, Remote office support
', 1)
INSERT [dbo].[NetworkEquipment] ([ID], [Name], [Ports], [Features], [NetworkTypeID]) VALUES (3, N'ES-1024D	', N'24x10/100Base-TX	', N'Plug-and-play
', 2)
INSERT [dbo].[NetworkEquipment] ([ID], [Name], [Ports], [Features], [NetworkTypeID]) VALUES (4, N'DFL-260E	', NULL, N'Network traffic control
', 3)
SET IDENTITY_INSERT [dbo].[NetworkEquipment] OFF
GO
SET IDENTITY_INSERT [dbo].[NetworkType] ON 

INSERT [dbo].[NetworkType] ([ID], [TypeNetWork]) VALUES (1, N'Router')
INSERT [dbo].[NetworkType] ([ID], [TypeNetWork]) VALUES (2, N'Switch')
INSERT [dbo].[NetworkType] ([ID], [TypeNetWork]) VALUES (3, N'Firewall')
SET IDENTITY_INSERT [dbo].[NetworkType] OFF
GO
SET IDENTITY_INSERT [dbo].[PeripheralDevices] ON 

INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (1, N'Monitor', N'Viewsonic VA2246a-LED, 21.5 inch, LED
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (2, N'Keyboard', N'Mechanical keyboard, RGB backlit, USB
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (3, N'Mouse	', N'Optical mouse, 1600 DPI, USB
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (4, N'Printer	', N'HP LaserJet Pro, Wireless, Duplex printing
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (5, N'Scanner', N'Canon CanoScan LiDE, USB, High resolution
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (6, N'Webcam', N'Logitech C920, Full HD, USB
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (7, N'Speakers', N'Logitech Z313, 2.1 Speaker System, 25W
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (8, N'Microphone', N'Blue Yeti, USB, Condenser
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (9, N'External HDD	', N'WD My Passport, 1TB, USB 3.0
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (10, N'USB Hub	', N'Anker 4-Port USB 3.0 Hub
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (11, N'Drawing Tablet	', N'Wacom Intuos, USB, Medium
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (12, N'Docking Station	', N'Dell D3100, USB 3.0, Triple Display
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (13, N'Network Adapter	', N'TP-Link Archer T2U, AC600, USB
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (14, N'Card Reader	', N'Transcend TS-RDF5K, USB 3.0, Multi-format
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (15, N'Projector', N'Epson VS250, SVGA, 3200 lumens
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (16, N'Smartphone Dock	', N'Belkin ChargeSync, USB-C, Fast Charging
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (17, N'UPS', N'APC Back-UPS, 600VA, 7 Outlets
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (18, N'VR Headset	', N'Oculus Rift S, PC-Powered, VR Gaming
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (19, N'Headphones', N'Sony WH-1000XM4, Wireless, Noise Cancelling
')
INSERT [dbo].[PeripheralDevices] ([ID], [Name], [Description]) VALUES (20, N'Thermal Printer	', N'Brother QL-1100, Wide Format, USB
')
SET IDENTITY_INSERT [dbo].[PeripheralDevices] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([ID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Roles] ([ID], [RoleName]) VALUES (2, N'Преподователь')
INSERT [dbo].[Roles] ([ID], [RoleName]) VALUES (3, N'Лаборант')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Software] ON 

INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (1, N'Windows 7 Professional x64', NULL, NULL, CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (2, N'Microsoft Office', N'2016', NULL, CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (3, N'MS Word', N'2016', N'', CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (4, N'MS Excel	', N'2016', NULL, CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (5, N'MS PowerPoint	', N'2016', NULL, CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (6, N'MS Access	', N'2016', NULL, CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (7, N'Yandex Browser	', N'22.5.4', NULL, CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (8, N'Google Chrome	', N'102.0.5005.61/63	', NULL, CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (9, N'7-Zip	', N'22.00	', NULL, CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (10, N'Foxit PDF Reader	', N'11.2.1.53537	', NULL, CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (11, N'Kaspersky Internet Security	', N'21.3.10.39	', NULL, CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (12, N'Autodesk AutoCAD	', N'2020	', NULL, CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (13, N'Mathcad	', N'15 M045	', NULL, CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (14, N'Adobe Photoshop	', N'2018	', NULL, CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (15, N'Arduino IDE	', N'1.8.19	', NULL, CAST(N'2023-05-15' AS Date), 1)
INSERT [dbo].[Software] ([ID], [Name], [Version], [LicenseKey], [InstalledOn], [ComputerID]) VALUES (16, N'Kleopatra', NULL, NULL, CAST(N'2023-05-15' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Software] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Username], [Password], [RoleID]) VALUES (1, N'admin', N'$2b$12$khzMauY8WomCMoFpXw6j7.yFVWqNrCji5QIgNRpZKf2P6v7AJo.L.', 1)
INSERT [dbo].[Users] ([ID], [Username], [Password], [RoleID]) VALUES (2, N'teacher', N'$2b$12$6jx2d8P4bZkE/MzUjsq2SeHGRF/5UuRRzqBwvO9kS3FWq5tZ/q2rm', 2)
INSERT [dbo].[Users] ([ID], [Username], [Password], [RoleID]) VALUES (3, N'user1', N'$2b$12$g7dUipDzXgN3oygU7EV0MOo8j3cvhh0H6V4msYq7DGVgFjVbGdUmG', 3)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Computers] FOREIGN KEY([ComputerID])
REFERENCES [dbo].[Computers] ([ID])
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Computers]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_EquipmentType] FOREIGN KEY([EquipmentTypeID])
REFERENCES [dbo].[EquipmentType] ([ID])
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_EquipmentType]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_NetworkEquipment] FOREIGN KEY([NetworkEquipmentID])
REFERENCES [dbo].[NetworkEquipment] ([ID])
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_NetworkEquipment]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_PeripheralDevices] FOREIGN KEY([PeripheralDeviceID])
REFERENCES [dbo].[PeripheralDevices] ([ID])
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_PeripheralDevices]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Equipment] FOREIGN KEY([EquipmentID])
REFERENCES [dbo].[Equipment] ([ID])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Equipment]
GO
ALTER TABLE [dbo].[MaintenanceSchedule]  WITH CHECK ADD  CONSTRAINT [FK_MaintenanceSchedule_Equipment] FOREIGN KEY([EquipmentID])
REFERENCES [dbo].[Equipment] ([ID])
GO
ALTER TABLE [dbo].[MaintenanceSchedule] CHECK CONSTRAINT [FK_MaintenanceSchedule_Equipment]
GO
ALTER TABLE [dbo].[MaintenanceSchedule]  WITH CHECK ADD  CONSTRAINT [FK_MaintenanceSchedule_Users] FOREIGN KEY([PerformedBy])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[MaintenanceSchedule] CHECK CONSTRAINT [FK_MaintenanceSchedule_Users]
GO
ALTER TABLE [dbo].[NetworkEquipment]  WITH CHECK ADD  CONSTRAINT [FK_NetworkEquipment_NetworkType] FOREIGN KEY([NetworkTypeID])
REFERENCES [dbo].[NetworkType] ([ID])
GO
ALTER TABLE [dbo].[NetworkEquipment] CHECK CONSTRAINT [FK_NetworkEquipment_NetworkType]
GO
ALTER TABLE [dbo].[Software]  WITH CHECK ADD  CONSTRAINT [FK_Software_Computers] FOREIGN KEY([ComputerID])
REFERENCES [dbo].[Computers] ([ID])
GO
ALTER TABLE [dbo].[Software] CHECK CONSTRAINT [FK_Software_Computers]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
