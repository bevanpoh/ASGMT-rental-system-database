USE [Video_Rental_DB]
GO
ALTER TABLE [dbo].[video_camera] DROP CONSTRAINT [FK_videoCamera_itemID_items]
GO
ALTER TABLE [dbo].[vcr] DROP CONSTRAINT [FK_vcr_itemID_items]
GO
ALTER TABLE [dbo].[store_item_catalogue] DROP CONSTRAINT [FK_storeItemCatalogue_storeId_stores]
GO
ALTER TABLE [dbo].[store_item_catalogue] DROP CONSTRAINT [FK_storeItemCatalogue_ItemId_movies]
GO
ALTER TABLE [dbo].[reservations] DROP CONSTRAINT [FK_reservations_storeId_stores]
GO
ALTER TABLE [dbo].[reservations] DROP CONSTRAINT [FK_reservations_customerId_customers]
GO
ALTER TABLE [dbo].[reservation_items] DROP CONSTRAINT [FK_reservationItems_reservationId_reservations]
GO
ALTER TABLE [dbo].[reservation_items] DROP CONSTRAINT [FK_reservationItems_movieId_reservations]
GO
ALTER TABLE [dbo].[rentals] DROP CONSTRAINT [FK_rentals_storeId_stores]
GO
ALTER TABLE [dbo].[rentals] DROP CONSTRAINT [FK_rentals_customerId_customers]
GO
ALTER TABLE [dbo].[rental_items] DROP CONSTRAINT [FK_rentalItems_rentalId_rentals]
GO
ALTER TABLE [dbo].[rental_items] DROP CONSTRAINT [FK_rentalItems_movieId_rentals]
GO
ALTER TABLE [dbo].[movies] DROP CONSTRAINT [FK_movies_itemID_items]
GO
ALTER TABLE [dbo].[items] DROP CONSTRAINT [FK_items_lateChargeCd_lateCharges]
GO
ALTER TABLE [dbo].[items] DROP CONSTRAINT [FK_items_itemTypeCd_itemTypes]
GO
ALTER TABLE [dbo].[employees] DROP CONSTRAINT [FK_employees_storeId_stores]
GO
ALTER TABLE [dbo].[employees] DROP CONSTRAINT [FK_employees_payCd_payTypes]
GO
ALTER TABLE [dbo].[employees] DROP CONSTRAINT [FK_employees_authCd_authRoles]
GO
ALTER TABLE [dbo].[auth_permissions] DROP CONSTRAINT [FK_authPermissions_authCd_authRoles]
GO
ALTER TABLE [dbo].[reservations] DROP CONSTRAINT [DF__reservati__creat__6383C8BA]
GO
ALTER TABLE [dbo].[rentals] DROP CONSTRAINT [DF__rentals__created__5AEE82B9]
GO
/****** Object:  Index [UQ__customer__B43B145FDAA239A9]    Script Date: 5/6/2022 3:05:12 PM ******/
ALTER TABLE [dbo].[customers] DROP CONSTRAINT [UQ__customer__B43B145FDAA239A9]
GO
/****** Object:  Table [dbo].[video_camera]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[video_camera]') AND type in (N'U'))
DROP TABLE [dbo].[video_camera]
GO
/****** Object:  Table [dbo].[vcr]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vcr]') AND type in (N'U'))
DROP TABLE [dbo].[vcr]
GO
/****** Object:  Table [dbo].[stores]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stores]') AND type in (N'U'))
DROP TABLE [dbo].[stores]
GO
/****** Object:  Table [dbo].[store_item_catalogue]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[store_item_catalogue]') AND type in (N'U'))
DROP TABLE [dbo].[store_item_catalogue]
GO
/****** Object:  Table [dbo].[reservations]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reservations]') AND type in (N'U'))
DROP TABLE [dbo].[reservations]
GO
/****** Object:  Table [dbo].[reservation_items]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reservation_items]') AND type in (N'U'))
DROP TABLE [dbo].[reservation_items]
GO
/****** Object:  Table [dbo].[pay_types]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pay_types]') AND type in (N'U'))
DROP TABLE [dbo].[pay_types]
GO
/****** Object:  Table [dbo].[movies]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[movies]') AND type in (N'U'))
DROP TABLE [dbo].[movies]
GO
/****** Object:  Table [dbo].[item_types]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[item_types]') AND type in (N'U'))
DROP TABLE [dbo].[item_types]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[employees]') AND type in (N'U'))
DROP TABLE [dbo].[employees]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customers]') AND type in (N'U'))
DROP TABLE [dbo].[customers]
GO
/****** Object:  Table [dbo].[auth_roles]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[auth_roles]') AND type in (N'U'))
DROP TABLE [dbo].[auth_roles]
GO
/****** Object:  Table [dbo].[auth_permissions]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[auth_permissions]') AND type in (N'U'))
DROP TABLE [dbo].[auth_permissions]
GO
/****** Object:  View [dbo].[rental_item_fees_view]    Script Date: 5/6/2022 3:05:12 PM ******/
DROP VIEW [dbo].[rental_item_fees_view]
GO
/****** Object:  Table [dbo].[rental_items]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rental_items]') AND type in (N'U'))
DROP TABLE [dbo].[rental_items]
GO
/****** Object:  Table [dbo].[rentals]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rentals]') AND type in (N'U'))
DROP TABLE [dbo].[rentals]
GO
/****** Object:  Table [dbo].[items]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[items]') AND type in (N'U'))
DROP TABLE [dbo].[items]
GO
/****** Object:  Table [dbo].[late_charges]    Script Date: 5/6/2022 3:05:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[late_charges]') AND type in (N'U'))
DROP TABLE [dbo].[late_charges]
GO
USE [master]
GO
USE [master]
GO
EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'Video_Rental_DB'
GO
use [master];
GO
USE [master]
GO
ALTER DATABASE [Video_Rental_DB] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
USE [master]
GO
/****** Object:  Database [Video_Rental_DB]    Script Date: 5/6/2022 3:05:12 PM ******/
DROP DATABASE [Video_Rental_DB]
GO
/****** Object:  Database [Video_Rental_DB]    Script Date: 5/6/2022 3:05:12 PM ******/
CREATE DATABASE [Video_Rental_DB]
 CONTAINMENT = NONE
 ON  PRIMARY
( NAME = N'Video_Rental_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Video_Rental_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON
( NAME = N'Video_Rental_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Video_Rental_DB_log.ldf' , SIZE = 139264KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Video_Rental_DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Video_Rental_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Video_Rental_DB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Video_Rental_DB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Video_Rental_DB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Video_Rental_DB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Video_Rental_DB] SET ARITHABORT OFF
GO
ALTER DATABASE [Video_Rental_DB] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Video_Rental_DB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Video_Rental_DB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Video_Rental_DB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Video_Rental_DB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Video_Rental_DB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Video_Rental_DB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Video_Rental_DB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Video_Rental_DB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Video_Rental_DB] SET  ENABLE_BROKER
GO
ALTER DATABASE [Video_Rental_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Video_Rental_DB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Video_Rental_DB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Video_Rental_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Video_Rental_DB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Video_Rental_DB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Video_Rental_DB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Video_Rental_DB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Video_Rental_DB] SET  MULTI_USER
GO
ALTER DATABASE [Video_Rental_DB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Video_Rental_DB] SET DB_CHAINING OFF
GO
ALTER DATABASE [Video_Rental_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
GO
ALTER DATABASE [Video_Rental_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS
GO
ALTER DATABASE [Video_Rental_DB] SET DELAYED_DURABILITY = DISABLED
GO
ALTER DATABASE [Video_Rental_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF
GO
ALTER DATABASE [Video_Rental_DB] SET QUERY_STORE = OFF
GO
USE [Video_Rental_DB]
GO
/****** Object:  Table [dbo].[late_charges]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[late_charges](
	[late_charge_cd] [varchar](5) NOT NULL,
	[late_charge_type] [varchar](20) NOT NULL,
	[late_charge_per_day] [decimal](13, 4) NULL,
PRIMARY KEY CLUSTERED
(
	[late_charge_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[items]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[items](
	[item_id] [int] IDENTITY(1,1) NOT NULL,
	[item_type_cd] [varchar](5) NOT NULL,
	[charge_per_day] [decimal](13, 4) NOT NULL,
	[late_charge_cd] [varchar](5) NOT NULL,
	[image] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rentals]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rentals](
	[rental_id] [int] IDENTITY(1,1) NOT NULL,
	[store_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[created_date] [date] NOT NULL,
	[due_date] [date] NOT NULL,
	[return_date] [date] NULL,
PRIMARY KEY CLUSTERED
(
	[rental_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rental_items]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rental_items](
	[rental_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[rental_id] ASC,
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[rental_item_fees_view]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[rental_item_fees_view]
AS
    SELECT
        r.*,
        r_i.item_id,
        item_type_cd,
        CASE WHEN item_type_cd IN ('VdCam', 'VCR') THEN 'Equipment'
            WHEN item_type_cd IN ('Mov') THEN 'Movie'
            ELSE 'Other'
            END AS item_category,
        charge_per_day,
        late_charge_per_day,
        DATEDIFF(day, created_date, due_date) rent_days,
        DATEDIFF(day, created_date, return_date) rented_days,
        DATEDIFF(day, due_date, return_date) overdue_days,
        CASE WHEN return_date > due_date THEN DATEDIFF(day, due_date, return_date)*late_charge_per_day
			ELSE 0
			END AS overdue_fee,
        CASE WHEN return_date > due_date THEN DATEDIFF(day, created_date, due_date)*charge_per_day
            ELSE DATEDIFF(day, created_date, return_date)*charge_per_day
            END AS rental_fee
    FROM rentals r
        INNER JOIN rental_items r_i ON r.rental_id = r_i.rental_id
        INNER JOIN items i ON r_i.item_id = i.item_id
        INNER JOIN late_charges l ON i.late_charge_cd = l.late_charge_cd
    WHERE return_date IS NOT NULL;

GO
/****** Object:  Table [dbo].[auth_permissions]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_permissions](
	[auth_cd] [varchar](5) NOT NULL,
	[table_name] [varchar](50) NOT NULL,
	[has_read] [bit] NOT NULL,
	[has_create] [bit] NOT NULL,
	[has_update] [bit] NOT NULL,
	[has_delete] [bit] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[auth_cd] ASC,
	[table_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_roles]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_roles](
	[auth_cd] [varchar](5) NOT NULL,
	[auth_title] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[auth_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[phone] [varchar](15) NOT NULL,
	[drivers_license] [varchar](255) NOT NULL,
	[card_number] [varchar](20) NOT NULL,
	[card_type] [varchar](20) NOT NULL,
	[street] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[state] [varchar](20) NOT NULL,
	[zip_code] [char](5) NOT NULL,
	[country] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[street] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[state] [varchar](20) NOT NULL,
	[zip_code] [char](5) NOT NULL,
	[country] [varchar](50) NOT NULL,
	[auth_cd] [varchar](5) NOT NULL,
	[pay_cd] [varchar](5) NOT NULL,
	[store_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item_types]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item_types](
	[item_type_cd] [varchar](5) NOT NULL,
	[item_type] [varchar](50) NULL,
PRIMARY KEY CLUSTERED
(
	[item_type_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movies]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movies](
	[item_id] [int] NOT NULL,
	[movie_name] [varchar](100) NOT NULL,
	[director] [varchar](50) NOT NULL,
	[producer] [varchar](50) NOT NULL,
	[actor1] [varchar](50) NOT NULL,
	[actor2] [varchar](50) NOT NULL,
	[genre] [varchar](20) NOT NULL,
	[movie_format] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pay_types]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pay_types](
	[pay_cd] [varchar](5) NOT NULL,
	[pay_title] [varchar](50) NOT NULL,
	[pay_rate] [decimal](13, 4) NULL,
PRIMARY KEY CLUSTERED
(
	[pay_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation_items]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation_items](
	[reservation_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[available_date] [date] NULL,
	[completion_date] [date] NULL,
PRIMARY KEY CLUSTERED
(
	[reservation_id] ASC,
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservations]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservations](
	[reservation_id] [int] IDENTITY(1,1) NOT NULL,
	[store_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[created_date] [date] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[reservation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[store_item_catalogue]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[store_item_catalogue](
	[store_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[qty_in_stock] [int] NOT NULL,
	[qty_assigned] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[store_id] ASC,
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stores]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stores](
	[store_id] [int] IDENTITY(1,1) NOT NULL,
	[location] [varchar](20) NOT NULL,
	[street] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[state] [varchar](20) NOT NULL,
	[zip_code] [char](5) NOT NULL,
	[country] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[store_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vcr]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vcr](
	[item_id] [int] NOT NULL,
	[brand] [varchar](20) NOT NULL,
	[model] [varchar](50) NOT NULL,
	[purchased_date] [date] NOT NULL,
	[vcr_type] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[video_camera]    Script Date: 5/6/2022 3:05:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[video_camera](
	[item_id] [int] NOT NULL,
	[brand] [varchar](20) NOT NULL,
	[model] [varchar](50) NOT NULL,
	[purchased_date] [date] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
