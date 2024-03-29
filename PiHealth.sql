USE [db_a7e791_pisystems]
GO
ALTER TABLE [dbo].[VitalsReport] DROP CONSTRAINT [FK_VitalsReport_Patient_PatientID]
GO
ALTER TABLE [dbo].[VitalsReport] DROP CONSTRAINT [FK_VitalsReport_Appointment_AppointmentID]
GO
ALTER TABLE [dbo].[UserToken] DROP CONSTRAINT [FK_UserToken_AppUser_UserId]
GO
ALTER TABLE [dbo].[TemplatePrescription] DROP CONSTRAINT [FK_TemplatePrescription_TemplateMaster_TemplateMasterId]
GO
ALTER TABLE [dbo].[Prescription] DROP CONSTRAINT [FK_Prescription_PatientProfile_PatientProfileId]
GO
ALTER TABLE [dbo].[PatientTest] DROP CONSTRAINT [FK_PatientTest_TestMaster_TestMasterId]
GO
ALTER TABLE [dbo].[PatientTest] DROP CONSTRAINT [FK_PatientTest_PatientProfile_PatientProfileId]
GO
ALTER TABLE [dbo].[PatientProfile] DROP CONSTRAINT [FK_PatientProfile_TemplateMaster_TemplateMasterId]
GO
ALTER TABLE [dbo].[PatientProfile] DROP CONSTRAINT [FK_PatientProfile_Patient_PatientId]
GO
ALTER TABLE [dbo].[PatientProfile] DROP CONSTRAINT [FK_PatientProfile_Appointment_AppointmentId]
GO
ALTER TABLE [dbo].[PatientFiles] DROP CONSTRAINT [FK_PatientFiles_Patient_PatientID]
GO
ALTER TABLE [dbo].[PatientFiles] DROP CONSTRAINT [FK_PatientFiles_Appointment_AppointmentID]
GO
ALTER TABLE [dbo].[PatientDiagnosis] DROP CONSTRAINT [FK_PatientDiagnosis_PatientProfile_PatientProfileId]
GO
ALTER TABLE [dbo].[PatientDiagnosis] DROP CONSTRAINT [FK_PatientDiagnosis_DiagnosisMaster_DiagnosisMasterId]
GO
ALTER TABLE [dbo].[Patient] DROP CONSTRAINT [FK_Patient_DoctorMaster_DoctorMasterId]
GO
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT [FK_Appointment_Patient_PatientId]
GO
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT [FK_Appointment_AppUser_AppUserId]
GO
ALTER TABLE [dbo].[AccessRoleFunction] DROP CONSTRAINT [FK_AccessRoleFunction_AccessFunction_FunctionID]
GO
ALTER TABLE [dbo].[AccessFunction] DROP CONSTRAINT [FK_AccessFunction_AccessModule_ModuleID]
GO
ALTER TABLE [dbo].[DoctorMaster] DROP CONSTRAINT [DF__DoctorMas__PinCo__71D1E811]
GO
/****** Object:  Index [IX_VitalsReport_PatientID]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_VitalsReport_PatientID] ON [dbo].[VitalsReport]
GO
/****** Object:  Index [IX_VitalsReport_AppointmentID]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_VitalsReport_AppointmentID] ON [dbo].[VitalsReport]
GO
/****** Object:  Index [IX_UserToken_UserId]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_UserToken_UserId] ON [dbo].[UserToken]
GO
/****** Object:  Index [IX_TemplatePrescription_TemplateMasterId]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_TemplatePrescription_TemplateMasterId] ON [dbo].[TemplatePrescription]
GO
/****** Object:  Index [IX_Prescription_PatientProfileId]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_Prescription_PatientProfileId] ON [dbo].[Prescription]
GO
/****** Object:  Index [IX_PatientTest_TestMasterId]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_PatientTest_TestMasterId] ON [dbo].[PatientTest]
GO
/****** Object:  Index [IX_PatientTest_PatientProfileId]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_PatientTest_PatientProfileId] ON [dbo].[PatientTest]
GO
/****** Object:  Index [IX_PatientProfile_TemplateMasterId]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_PatientProfile_TemplateMasterId] ON [dbo].[PatientProfile]
GO
/****** Object:  Index [IX_PatientProfile_PatientId]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_PatientProfile_PatientId] ON [dbo].[PatientProfile]
GO
/****** Object:  Index [IX_PatientProfile_AppointmentId]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_PatientProfile_AppointmentId] ON [dbo].[PatientProfile]
GO
/****** Object:  Index [IX_PatientFiles_PatientID]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_PatientFiles_PatientID] ON [dbo].[PatientFiles]
GO
/****** Object:  Index [IX_PatientFiles_AppointmentID]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_PatientFiles_AppointmentID] ON [dbo].[PatientFiles]
GO
/****** Object:  Index [IX_PatientDiagnosis_PatientProfileId]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_PatientDiagnosis_PatientProfileId] ON [dbo].[PatientDiagnosis]
GO
/****** Object:  Index [IX_PatientDiagnosis_DiagnosisMasterId]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_PatientDiagnosis_DiagnosisMasterId] ON [dbo].[PatientDiagnosis]
GO
/****** Object:  Index [IX_Patient_DoctorMasterId]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_Patient_DoctorMasterId] ON [dbo].[Patient]
GO
/****** Object:  Index [IX_Appointment_PatientId]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_Appointment_PatientId] ON [dbo].[Appointment]
GO
/****** Object:  Index [IX_Appointment_AppUserId]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_Appointment_AppUserId] ON [dbo].[Appointment]
GO
/****** Object:  Index [IX_AccessRoleFunction_FunctionID]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_AccessRoleFunction_FunctionID] ON [dbo].[AccessRoleFunction]
GO
/****** Object:  Index [IX_AccessFunction_ModuleID]    Script Date: 02/18/2022 10:48:48 ******/
DROP INDEX [IX_AccessFunction_ModuleID] ON [dbo].[AccessFunction]
GO
/****** Object:  Table [dbo].[VitalsReport]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VitalsReport]') AND type in (N'U'))
DROP TABLE [dbo].[VitalsReport]
GO
/****** Object:  Table [dbo].[UserToken]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserToken]') AND type in (N'U'))
DROP TABLE [dbo].[UserToken]
GO
/****** Object:  Table [dbo].[TestMaster]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TestMaster]') AND type in (N'U'))
DROP TABLE [dbo].[TestMaster]
GO
/****** Object:  Table [dbo].[TemplatePrescription]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TemplatePrescription]') AND type in (N'U'))
DROP TABLE [dbo].[TemplatePrescription]
GO
/****** Object:  Table [dbo].[TemplateMaster]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TemplateMaster]') AND type in (N'U'))
DROP TABLE [dbo].[TemplateMaster]
GO
/****** Object:  Table [dbo].[PrescriptionMaster]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PrescriptionMaster]') AND type in (N'U'))
DROP TABLE [dbo].[PrescriptionMaster]
GO
/****** Object:  Table [dbo].[Prescription]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Prescription]') AND type in (N'U'))
DROP TABLE [dbo].[Prescription]
GO
/****** Object:  Table [dbo].[PatientTest]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PatientTest]') AND type in (N'U'))
DROP TABLE [dbo].[PatientTest]
GO
/****** Object:  Table [dbo].[PatientProfile]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PatientProfile]') AND type in (N'U'))
DROP TABLE [dbo].[PatientProfile]
GO
/****** Object:  Table [dbo].[PatientFiles]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PatientFiles]') AND type in (N'U'))
DROP TABLE [dbo].[PatientFiles]
GO
/****** Object:  Table [dbo].[PatientDiagnosis]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PatientDiagnosis]') AND type in (N'U'))
DROP TABLE [dbo].[PatientDiagnosis]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Patient]') AND type in (N'U'))
DROP TABLE [dbo].[Patient]
GO
/****** Object:  Table [dbo].[DoctorMaster]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DoctorMaster]') AND type in (N'U'))
DROP TABLE [dbo].[DoctorMaster]
GO
/****** Object:  Table [dbo].[DiagnosisMaster]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DiagnosisMaster]') AND type in (N'U'))
DROP TABLE [dbo].[DiagnosisMaster]
GO
/****** Object:  Table [dbo].[DepartmentMaster]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DepartmentMaster]') AND type in (N'U'))
DROP TABLE [dbo].[DepartmentMaster]
GO
/****** Object:  Table [dbo].[AuditLog]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AuditLog]') AND type in (N'U'))
DROP TABLE [dbo].[AuditLog]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppUser]') AND type in (N'U'))
DROP TABLE [dbo].[AppUser]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Appointment]') AND type in (N'U'))
DROP TABLE [dbo].[Appointment]
GO
/****** Object:  Table [dbo].[AccessRoleFunction]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessRoleFunction]') AND type in (N'U'))
DROP TABLE [dbo].[AccessRoleFunction]
GO
/****** Object:  Table [dbo].[AccessModule]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessModule]') AND type in (N'U'))
DROP TABLE [dbo].[AccessModule]
GO
/****** Object:  Table [dbo].[AccessFunction]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessFunction]') AND type in (N'U'))
DROP TABLE [dbo].[AccessFunction]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02/18/2022 10:48:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
USE [master]
GO
/****** Object:  Database [db_a7e791_pisystems]    Script Date: 02/18/2022 10:48:48 ******/
DROP DATABASE [db_a7e791_pisystems]
GO
/****** Object:  Database [db_a7e791_pisystems]    Script Date: 02/18/2022 10:48:48 ******/
CREATE DATABASE [db_a7e791_pisystems]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_a7e791_pisystems', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_a7e791_pisystems.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_a7e791_pisystems_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_a7e791_pisystems_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db_a7e791_pisystems] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_a7e791_pisystems].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_a7e791_pisystems] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_a7e791_pisystems] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_a7e791_pisystems] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_a7e791_pisystems] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_a7e791_pisystems] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [db_a7e791_pisystems] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET RECOVERY FULL 
GO
ALTER DATABASE [db_a7e791_pisystems] SET  MULTI_USER 
GO
ALTER DATABASE [db_a7e791_pisystems] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_a7e791_pisystems] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_a7e791_pisystems] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_a7e791_pisystems] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_a7e791_pisystems] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_a7e791_pisystems', N'ON'
GO
ALTER DATABASE [db_a7e791_pisystems] SET QUERY_STORE = OFF
GO
USE [db_a7e791_pisystems]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02/18/2022 10:48:49 ******/
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
/****** Object:  Table [dbo].[AccessFunction]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessFunction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FuctionCode] [nvarchar](10) NOT NULL,
	[ModuleID] [bigint] NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_AccessFunction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessModule]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessModule](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ModuleCode] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_AccessModule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessRoleFunction]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessRoleFunction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](100) NOT NULL,
	[FunctionID] [bigint] NOT NULL,
 CONSTRAINT [PK_AccessRoleFunction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientId] [bigint] NULL,
	[AppUserId] [bigint] NULL,
	[Description] [nvarchar](max) NULL,
	[VisitType] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[DayOrNight] [nvarchar](max) NULL,
	[TimeOfAppintment] [nvarchar](max) NULL,
	[AppointmentDateTime] [datetime2](7) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [bigint] NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUser](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](35) NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[UserType] [nvarchar](20) NOT NULL,
	[Gender] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[SerialNumber] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[LastLoggedIn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_AppUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditLog]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](50) NULL,
	[Controller] [nvarchar](50) NOT NULL,
	[Action] [nvarchar](50) NOT NULL,
	[Time] [datetime2](7) NOT NULL,
	[IP] [nvarchar](50) NULL,
	[UserAgent] [nvarchar](200) NULL,
	[Value1] [nvarchar](max) NULL,
	[Value2] [nvarchar](max) NULL,
 CONSTRAINT [PK_AuditLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepartmentMaster]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentMaster](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [bigint] NULL,
 CONSTRAINT [PK_DepartmentMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiagnosisMaster]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiagnosisMaster](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_DiagnosisMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorMaster]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorMaster](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Qualification] [nvarchar](max) NULL,
	[ClinicName] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[Department] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[TelNo] [nvarchar](max) NULL,
	[PhoneNo1] [nvarchar](max) NULL,
	[PhoneNo2] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Percentage] [float] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[PinCode] [bigint] NOT NULL,
 CONSTRAINT [PK_DoctorMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientName] [nvarchar](max) NOT NULL,
	[Initial] [nvarchar](max) NULL,
	[HrNo] [nvarchar](max) NULL,
	[AttendarName] [nvarchar](max) NULL,
	[PatientGender] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[MobileNumber] [nvarchar](max) NULL,
	[DOB] [datetime2](7) NULL,
	[Age] [real] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[DoctorMasterId] [bigint] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[UlID] [nvarchar](max) NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientDiagnosis]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientDiagnosis](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientProfileId] [bigint] NOT NULL,
	[DiagnosisMasterId] [bigint] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_PatientDiagnosis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientFiles]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientFiles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AppointmentID] [bigint] NULL,
	[PatientID] [bigint] NULL,
	[FilePath] [nvarchar](max) NULL,
	[FileName] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [bigint] NULL,
 CONSTRAINT [PK_PatientFiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientProfile]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientProfile](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientId] [bigint] NOT NULL,
	[DoctorId] [bigint] NOT NULL,
	[TemplateMasterId] [bigint] NULL,
	[AppointmentId] [bigint] NOT NULL,
	[Compliants] [nvarchar](max) NULL,
	[Examination] [nvarchar](max) NULL,
	[Impression] [nvarchar](max) NULL,
	[Advice] [nvarchar](max) NULL,
	[Plan] [nvarchar](max) NULL,
	[FollowUp] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_PatientProfile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientTest]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientTest](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientProfileId] [bigint] NOT NULL,
	[TestMasterId] [bigint] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_PatientTest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prescription]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prescription](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientProfileId] [bigint] NOT NULL,
	[MedicinName] [nvarchar](max) NULL,
	[GenericName] [nvarchar](max) NULL,
	[Strength] [nvarchar](max) NULL,
	[BeforeFood] [bit] NOT NULL,
	[Morning] [bit] NOT NULL,
	[Noon] [bit] NOT NULL,
	[Night] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[NoOfDays] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Prescription] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrescriptionMaster]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrescriptionMaster](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GenericName] [nvarchar](max) NULL,
	[CategoryName] [nvarchar](max) NULL,
	[Strength] [nvarchar](max) NULL,
	[Units] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[MedicineName] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_PrescriptionMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateMaster]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateMaster](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Compliants] [nvarchar](max) NULL,
	[Examination] [nvarchar](max) NULL,
	[Impression] [nvarchar](max) NULL,
	[Advice] [nvarchar](max) NULL,
	[Plan] [nvarchar](max) NULL,
	[FollowUp] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_TemplateMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplatePrescription]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplatePrescription](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TemplateMasterId] [bigint] NOT NULL,
	[Strength] [nvarchar](max) NULL,
	[BeforeFood] [bit] NOT NULL,
	[Morning] [bit] NOT NULL,
	[Noon] [bit] NOT NULL,
	[Night] [bit] NOT NULL,
	[NoOfDays] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[MedicineName] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_TemplatePrescription] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestMaster]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestMaster](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Department] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_TestMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserToken]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserToken](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccessTokenHash] [nvarchar](max) NULL,
	[IDAccessTokenExpiresDateTime] [datetimeoffset](7) NOT NULL,
	[RefreshTokenIdHash] [nvarchar](max) NULL,
	[RefreshTokenExpiresDateTime] [datetimeoffset](7) NOT NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_UserToken] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VitalsReport]    Script Date: 02/18/2022 10:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VitalsReport](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AppointmentID] [bigint] NULL,
	[PatientID] [bigint] NULL,
	[Height] [float] NOT NULL,
	[Weight] [float] NOT NULL,
	[BloodPresure] [nvarchar](max) NULL,
	[BP] [float] NOT NULL,
	[Pulse] [float] NOT NULL,
	[Temprature] [float] NOT NULL,
	[SpO2] [float] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [bigint] NULL,
 CONSTRAINT [PK_VitalsReport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220207072901_Initail', N'3.1.22')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220215113339_Pincode added to Doctor table', N'3.1.22')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220216053419_PrescriptionMaster column changes', N'3.1.22')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220216063623_DiagonsisMaster table Update', N'3.1.22')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220216164323_Change in TemplatePrescription', N'3.1.22')
GO
SET IDENTITY_INSERT [dbo].[Appointment] ON 

INSERT [dbo].[Appointment] ([Id], [PatientId], [AppUserId], [Description], [VisitType], [IsActive], [DayOrNight], [TimeOfAppintment], [AppointmentDateTime], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, 1, 2, NULL, N'New', 0, NULL, NULL, CAST(N'2022-02-16T13:37:00.0000000' AS DateTime2), CAST(N'2022-02-16T11:37:05.4060445' AS DateTime2), 1, NULL, NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [AppUserId], [Description], [VisitType], [IsActive], [DayOrNight], [TimeOfAppintment], [AppointmentDateTime], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, 1, 2, N'Fever', N'Follow Up', 1, NULL, NULL, CAST(N'2022-02-17T16:38:00.0000000' AS DateTime2), CAST(N'2022-02-16T18:15:44.8097422' AS DateTime2), 1, NULL, NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [AppUserId], [Description], [VisitType], [IsActive], [DayOrNight], [TimeOfAppintment], [AppointmentDateTime], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, 1, 2, NULL, N'Follow Up', 0, NULL, NULL, CAST(N'2022-02-16T21:31:32.0000000' AS DateTime2), CAST(N'2022-02-16T21:31:36.1607464' AS DateTime2), 1, NULL, NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [AppUserId], [Description], [VisitType], [IsActive], [DayOrNight], [TimeOfAppintment], [AppointmentDateTime], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, 1, 2, NULL, N'Follow Up', 1, NULL, NULL, CAST(N'2022-02-18T08:27:12.0000000' AS DateTime2), CAST(N'2022-02-17T09:37:50.7888945' AS DateTime2), 1, NULL, NULL)
INSERT [dbo].[Appointment] ([Id], [PatientId], [AppUserId], [Description], [VisitType], [IsActive], [DayOrNight], [TimeOfAppintment], [AppointmentDateTime], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, 2, 6, NULL, N'New', 0, NULL, NULL, CAST(N'2022-02-18T08:27:03.0000000' AS DateTime2), CAST(N'2022-02-17T09:47:57.1282700' AS DateTime2), 1, CAST(N'2022-02-18T10:15:01.2795124' AS DateTime2), 2)
SET IDENTITY_INSERT [dbo].[Appointment] OFF
GO
SET IDENTITY_INSERT [dbo].[AppUser] ON 

INSERT [dbo].[AppUser] ([ID], [Username], [Password], [Name], [Email], [PhoneNo], [UserType], [Gender], [Address], [IsActive], [SerialNumber], [CreatedDate], [LastLoggedIn]) VALUES (1, N'Admin', N'jZae727K08KaOmKSgOaGzww/XVqGr/PKEgIMkjrcbJI=', N'Admin', N'admin@pisystems.com', N'', N'Admin', N'Male', N'', 1, N'1', NULL, CAST(N'2022-02-18T04:37:38.8044066+00:00' AS DateTimeOffset))
INSERT [dbo].[AppUser] ([ID], [Username], [Password], [Name], [Email], [PhoneNo], [UserType], [Gender], [Address], [IsActive], [SerialNumber], [CreatedDate], [LastLoggedIn]) VALUES (2, N'Admin', N'jZae727K08KaOmKSgOaGzww/XVqGr/PKEgIMkjrcbJI=', N'Doctor', N'doctor@pisystems.com', N'', N'Doctor', N'Male', N'', 1, N'2', NULL, CAST(N'2022-02-18T04:44:55.2020205+00:00' AS DateTimeOffset))
INSERT [dbo].[AppUser] ([ID], [Username], [Password], [Name], [Email], [PhoneNo], [UserType], [Gender], [Address], [IsActive], [SerialNumber], [CreatedDate], [LastLoggedIn]) VALUES (5, N'admin2', N'jZae727K08KaOmKSgOaGzww/XVqGr/PKEgIMkjrcbJI=', N'admin2', N'admin2efesfdsfdsf@pisystem.com', N'9677010957', N'Admin', N'Male', N'No. 223, nichampalam, senni kadu thottam, perundurai tk', 1, N'00000000-0000-0000-0000-000000000000', CAST(N'2022-02-16T15:38:39.5171529' AS DateTime2), NULL)
INSERT [dbo].[AppUser] ([ID], [Username], [Password], [Name], [Email], [PhoneNo], [UserType], [Gender], [Address], [IsActive], [SerialNumber], [CreatedDate], [LastLoggedIn]) VALUES (6, N'doctor1', N'jZae727K08KaOmKSgOaGzww/XVqGr/PKEgIMkjrcbJI=', N'doctor1', N'doctor1@pisystem.com', NULL, N'Doctor', N'Male', NULL, 1, N'00000000-0000-0000-0000-000000000000', CAST(N'2022-02-17T04:09:07.9433271' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[AppUser] OFF
GO
SET IDENTITY_INSERT [dbo].[AuditLog] ON 

INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (1, N'1', N'Account', N'Login', CAST(N'2022-02-16T06:04:31.9588975' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Email-admin@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (2, N'2', N'Account', N'Login', CAST(N'2022-02-16T06:05:33.7372610' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Email-doctor@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (3, N'1', N'Account', N'Login', CAST(N'2022-02-16T06:05:46.2756516' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Email-admin@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (4, N'1', N'DoctorMaster', N'Create', CAST(N'2022-02-16T06:06:24.0232198' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (5, N'1', N'PatientMaster', N'Create', CAST(N'2022-02-16T06:06:43.4213880' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (6, N'1', N'Appointment', N'Create', CAST(N'2022-02-16T06:07:05.4380841' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (7, N'2', N'Account', N'Login', CAST(N'2022-02-16T06:07:20.8982523' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Email-doctor@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (8, N'2', N'Account', N'Login', CAST(N'2022-02-16T11:15:32.0482672' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Email-doctor@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (9, N'1', N'Account', N'Login', CAST(N'2022-02-16T12:45:12.9340059' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Email-admin@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (10, N'1', N'Appointment', N'Create', CAST(N'2022-02-16T12:45:44.8261493' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (11, N'2', N'Account', N'Login', CAST(N'2022-02-16T12:45:58.2133155' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Email-doctor@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (12, N'1', N'Account', N'Login', CAST(N'2022-02-16T13:21:56.7055477' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Email-admin@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (13, N'1', N'Account', N'Login', CAST(N'2022-02-16T15:37:47.8832162' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Email-admin@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (14, N'1', N'User', N'Create', CAST(N'2022-02-16T15:38:39.5448358' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', N'Create')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (15, N'1', N'User', N'Update', CAST(N'2022-02-16T15:40:25.9615522' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', N'Update')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (16, N'1', N'Appointment', N'Create', CAST(N'2022-02-16T16:01:36.4110835' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (17, N'2', N'Account', N'Login', CAST(N'2022-02-16T16:01:45.2242630' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Email-doctor@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (18, N'2', N'TemplateMaster', N'Create', CAST(N'2022-02-16T16:03:19.5080254' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (19, N'2', N'PatientProfile', N'Update', CAST(N'2022-02-16T16:04:09.7547081' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (20, N'2', N'PatientProfile', N'Update', CAST(N'2022-02-16T16:04:34.1702624' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (21, N'2', N'PatientProfile', N'Update', CAST(N'2022-02-16T16:06:09.4075047' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (22, N'2', N'PatientProfile', N'Update', CAST(N'2022-02-16T16:06:16.6806475' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (23, N'2', N'PatientProfile', N'Update', CAST(N'2022-02-16T16:11:10.7796974' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (24, N'2', N'TemplateMaster', N'Create', CAST(N'2022-02-16T16:20:48.9093780' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (25, N'2', N'TemplateMaster', N'Update', CAST(N'2022-02-16T16:27:07.1262031' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (26, N'2', N'TemplateMaster', N'Update', CAST(N'2022-02-16T16:29:13.3998445' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (27, N'2', N'TemplateMaster', N'Update', CAST(N'2022-02-16T16:37:39.7221150' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (28, N'2', N'TemplateMaster', N'Update', CAST(N'2022-02-16T16:45:33.1500382' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (29, N'1', N'Account', N'Login', CAST(N'2022-02-17T04:04:54.3343869' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Email-admin@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (30, N'2', N'Account', N'Login', CAST(N'2022-02-17T04:05:35.6882238' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Email-doctor@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (31, N'2', N'TemplateMaster', N'Create', CAST(N'2022-02-17T04:07:09.0767721' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (32, N'1', N'Account', N'Login', CAST(N'2022-02-17T04:07:26.6007570' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Email-admin@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (33, N'1', N'Appointment', N'Create', CAST(N'2022-02-17T04:07:50.8415236' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (34, N'1', N'Appointment', N'Update', CAST(N'2022-02-17T04:08:11.8147162' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (35, N'1', N'User', N'Create', CAST(N'2022-02-17T04:09:07.9619013' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', N'Create')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (36, N'1', N'PatientMaster', N'Create', CAST(N'2022-02-17T04:10:00.5527824' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (37, N'1', N'User', N'Update', CAST(N'2022-02-17T04:14:33.6456977' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', N'Update')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (38, N'1', N'User', N'Update', CAST(N'2022-02-17T04:15:18.0100653' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', N'Update')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (39, N'1', N'Appointment', N'Create', CAST(N'2022-02-17T04:17:57.1968629' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (40, N'2', N'Account', N'Login', CAST(N'2022-02-17T04:18:14.8086580' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Email-doctor@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (41, N'1', N'Account', N'Login', CAST(N'2022-02-18T02:55:19.6000278' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Email-admin@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (42, N'2', N'Account', N'Login', CAST(N'2022-02-18T02:55:33.3377021' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Email-doctor@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (43, N'1', N'Account', N'Login', CAST(N'2022-02-18T02:55:57.1799151' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Email-admin@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (44, N'1', N'Appointment', N'Update', CAST(N'2022-02-18T02:57:11.2543472' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (45, N'1', N'Appointment', N'Update', CAST(N'2022-02-18T02:57:21.4238810' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (46, N'2', N'Account', N'Login', CAST(N'2022-02-18T02:57:38.9060594' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Email-doctor@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (47, N'2', N'PatientProfile', N'Update', CAST(N'2022-02-18T03:01:40.3038114' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (48, N'2', N'PatientProfile', N'Update', CAST(N'2022-02-18T03:59:22.5682682' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (49, N'2', N'PatientProfile', N'Update', CAST(N'2022-02-18T04:00:01.7244925' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (50, N'1', N'Account', N'Login', CAST(N'2022-02-18T04:33:36.2330411' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Email-admin@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (51, N'1', N'PatientMaster', N'Create', CAST(N'2022-02-18T04:34:09.3312785' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (52, N'1', N'DoctorMaster', N'Create', CAST(N'2022-02-18T04:38:25.6351498' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (53, N'1', N'PatientMaster', N'Update', CAST(N'2022-02-18T04:38:58.6290946' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (54, N'2', N'Account', N'Login', CAST(N'2022-02-18T04:39:32.5167914' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Email-doctor@pisystems.com', N'Success')
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (55, N'2', N'TemplateMaster', N'Create', CAST(N'2022-02-18T04:41:01.1963071' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (56, N'2', N'TemplateMaster', N'Update', CAST(N'2022-02-18T04:43:41.1633686' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (57, N'2', N'PatientProfile', N'Update', CAST(N'2022-02-18T04:44:55.6132964' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
INSERT [dbo].[AuditLog] ([Id], [UserID], [Controller], [Action], [Time], [IP], [UserAgent], [Value1], [Value2]) VALUES (58, N'2', N'PatientProfile', N'Update', CAST(N'2022-02-18T04:45:01.4168713' AS DateTime2), N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', N'Success', NULL)
SET IDENTITY_INSERT [dbo].[AuditLog] OFF
GO
SET IDENTITY_INSERT [dbo].[DiagnosisMaster] ON 

INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (210, N'Hypothyroidism', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (211, N'CAD', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (212, N'CVA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (213, N'Hypertension', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (214, N'Urinary Tract Infection', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (215, N'Pain Abdomen', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (216, N'Renal Stone Disease', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (217, N'CKD', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (218, N'Prostate Cancer', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (219, N'Tuberculosis', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (220, N'PARKINSON', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (221, N'seizure disorder', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (222, N'NON FUNCTIONING KIDNEY', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (223, N'HYDROURETERONEPHROSIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (224, N'URETERIC STRICTURE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (225, N'PELVIURETERIC JUNCTION OBSTRUCTION', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (226, N'VESICOURETERIC JUNCTION OBSTRUCTION', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (227, N'Renal Cancer', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (228, N'Diabetes Mellitus', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (229, N'penile skin lesions', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (230, N'Bladder Outflow Obstruction', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (231, N'Benign Prostatic Hyperplasia', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (232, N'Lipoma', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (233, N'Testicualr cancer', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (234, N'Testicualr Tumour', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (235, N'RENAL TUMOUR', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (236, N'HIGH PRESSURE CHRONIC RETENTION', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (237, N'URINARY RETENTION', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (238, N'CKD', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (239, N'LUTS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (240, N'BLADDER TUMOUR', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (241, N'BLADDER CANCER', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (242, N'CHRONIC PELVIC PAIN SYNDROME', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (243, N'EPIDYDIMOORCHITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (244, N'Hydrocele', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (245, N'ELEVATED PSA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (246, N'CHRONIC PROSTATITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (247, N'Open simple Prosatetcomy', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (248, N'Penile Cancer', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (249, N'Scrotal Lump', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (250, N'Perineal Fistula', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (251, N'Hematuria', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (252, N'Upper Tract TCC', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (253, N'STRICTURE URETHRA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (254, N'PYOCELE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (255, N'NON HODGKINS LYMPHOMA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (256, N'ERECTILE DYSFUNCTION', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (257, N'POLIO', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (258, N'FEVER', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (259, N'Aneurysm', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (260, N'PHIMOSIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (261, N'LIVER TRANSPLANT RECIPIENT', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (262, N'HEPATITIS B', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (263, N'HEMOSPERMIA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (264, N'PENILE FRACTURE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (265, N'DETRUSOR UNDERACTIVITY', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (266, N'DEPRESSION', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (267, N'HERNIA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (268, N'CHRONIC LIVER DISEASE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (269, N'URACHAL TUMOUR', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (270, N'URACHAL CANCER', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (271, N'LOIN PAIN', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (272, N'VIT D3 DEFICIENCY', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (273, N'PRIMARY INFERTILITY', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (274, N'SEBACEOUS CYST', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (275, N'NOCTURNAL ENURESIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (276, N'INTERSITIAL CYSTITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (277, N'INCONTINENCE STRESS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (278, N'INCONTINENCE (URGE)', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (279, N'INCONTINENCE ( MIXED )', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (280, N'PCOS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (281, N'NEUROGENIC BLADDER', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (282, N'RENAL CYST', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (283, N'PARATHYROID ADENOMA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (284, N'OBSTRUCTIVE SLEEP APNOEA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (285, N'COPD', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (286, N'ASYMPTOMATIC BACTERIURIA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (287, N'CHOLELITHIASIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (288, N'CHOLECYSTITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (289, N'ADRENAL TUMOUR', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (290, N'Varicocele', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (291, N'HYDRONEPHROSIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (292, N'UNDESCENDED TESTES', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (293, N'PEYRONIE DISEASE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (294, N'SCROTAL PAIN', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (295, N'BLADDER NECK STENOSIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (296, N'NEUROGENIC BLADDER', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (297, N'Vesico Ureteric Reflux', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (298, N'Recurrent UTI', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (299, N'Vulviovaginal Candidiasis', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (300, N'Recurrent Vulvovaginal candidiasis', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (301, N'Atrophic vaginitis', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (302, N'Urethral stenosis', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (303, N'Lichen sclerosus', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (304, N'Vulval dermatoses', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (305, N'Abnormal Uterine bleed', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (306, N'Postmenopausal bleed', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (307, N'Fibroids', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (308, N'Fibroid polyp', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
GO
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (309, N'Endocervical polyp', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (310, N'Pregnancy', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (311, N'Miscarriage', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (312, N'Recurrent pregnancy loss', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (313, N'Prev Caesarean', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (314, N'Prev Caesarean', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (315, N'Voiding dysfunction', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (316, N'Bladder pain syndrome', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (317, N'Haematuria', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (318, N'GU TB', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (319, N'Pelvic floor dysfunction', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (320, N'CHYLURIA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (321, N'BLADDER STONES', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (322, N'Menopause', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (323, N'Perimenopausal symptoms', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (324, N'Postmenopausal bleed', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (325, N'Cervical ectropion', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (326, N'Ovarian cyst', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (327, N'Ovarian mass', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (328, N'Womens health check', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (329, N'Premenstrual syndrome', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (330, N'Weight gain', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (331, N'Obesity', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (332, N'Diabetes', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (333, N'Hypertension', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (334, N'Asthma/COPD', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (335, N'Voiding Dysfunction', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (336, N'Prolapse', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (337, N'Anterior compartment prolapse', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (338, N'Apical Prolpase', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (339, N'Poterior compartment prolapse', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (340, N'Mastalgia', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (341, N'Fecal incontinence', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (342, N'Vulvo vaginal atrophy', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (343, N'Lichen sclerosus', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (344, N'CHORDEE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (345, N'UROLITHIASIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (346, N'LEFT UPPER URETERIC CALCULUS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (347, N'LEFT MID URETERIC CALCULUS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (348, N'LEFT LOWER URETERIC CALCULUS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (349, N'LEFT VUJ CALCULUS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (350, N'LEFT PUJ CALCULUS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (351, N'LEFT RENAL CALCULUS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (352, N'LEFT STAGHORN CALCULUS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (353, N'CALYCEAL DIVERTICULUM', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (354, N'HORSE SHOE KIDNEY', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (355, N'RIGHT UPPER URETERIC CALCULUS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (356, N'RIGHT MID URETERIC CALCULUS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (357, N'RIGHT LOWER URETERIC CALCULUS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (358, N'RIGHT VUJ CALCULUS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (359, N'RIGHT PUJ CALCULUS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (360, N'RIGHT RENAL CALCULUS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (361, N'RIGHT EPIDIDYMITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (362, N'LEFT EPIDIDYMITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (363, N'EPIDIDYMAL CYST', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (364, N'HYDROCELE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (365, N'EPIDIDYMO-ORCHITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (366, N'SEBACEOUS CYST SCROTUM', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (367, N'BALANOPOSTHITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (368, N'BALANITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (369, N'FRENULAR TEAR', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (370, N'VARICOCELE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (371, N'SECONDARY INFERTILITY', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (372, N'ACUTE PROSTATITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (373, N'BLADDER GROWTH', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (374, N'HEMATURIA FOR EVALUATION', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (375, N'OVERACTIVE BLADDER', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (376, N'COMPLICATED UTI', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (377, N'LUTS / PROSTATOMEGALY', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (378, N'RETENTION OF URINE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (379, N'BILATERAL URETERIC CALCULUS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (380, N'METASTATIC CARCINOMA PROSTATE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (381, N'VESICO VAGINAL FISTULA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (382, N'AZOOSPERMIA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (383, N'OLIGOASTEHNOSPERMIA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (384, N'PREMATURE EJACULATION', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (385, N'TORSION TESTIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (386, N'URETHRITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (387, N'RIGHT PYELONEPHRITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (388, N'LEFT PYELONEPHRITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (389, N'RENAL ABSCESS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (390, N'MICROSCOPIC HEMATURIA FOR EVALUATION', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (391, N'RENAL TRAUMA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (392, N'RIGHT PUJ OBSTRUCTION', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (393, N'LEFT PUJ STRICTURE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (394, N'MEATAL STRICTURE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (395, N'RENAL PAPILLARY NECROSIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (396, N'ORCHALGIA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (397, N'PENILE FRACTURE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (398, N'PARAPHIMOSIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (399, N'SEBACEOUS CYST SCROTUM', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (400, N'ANGIOKERATOMA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (401, N'UTI - CYSTITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (402, N'UTI- PYELONEPHRITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (403, N'EMPHYSEMATOUS PYELONEPHRITIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (404, N'RENAL ABSCESS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (405, N'BXO', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (406, N'ASTHENOSPERMIA', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (407, N'UNCONSUMMATED MARRIAGE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (408, N'PRIAPISM', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
GO
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (409, N'DISORDERS OF EJACULATION', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (410, N'VAULT PROLPASE', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (411, N'CA CERVIX', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (412, N'OBSTRUCTIVE UROPATHY', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (413, N'ACUTE KIDNEY INJURY', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (414, N'EPIDIDIDYMITS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (415, N'LEFT URETERIC COLIC', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (416, N'RIGHT URETERIC COLIC', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (417, N'RECURRENT UTI', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
INSERT [dbo].[DiagnosisMaster] ([Id], [Name], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (418, N'RENAL PAPILLARY NECROSIS', NULL, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[DiagnosisMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[DoctorMaster] ON 

INSERT [dbo].[DoctorMaster] ([Id], [Name], [Qualification], [ClinicName], [Notes], [Gender], [Department], [Address], [TelNo], [PhoneNo1], [PhoneNo2], [Email], [IsDeleted], [Percentage], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [PinCode]) VALUES (1, N'ErodeGH', NULL, N'Vijayakumar', NULL, NULL, NULL, NULL, NULL, N'9677010957', NULL, N'fsdsdfs@gmail.com', 0, 0, CAST(N'2022-02-16T11:36:23.6590816' AS DateTime2), NULL, 1, NULL, 0)
INSERT [dbo].[DoctorMaster] ([Id], [Name], [Qualification], [ClinicName], [Notes], [Gender], [Department], [Address], [TelNo], [PhoneNo1], [PhoneNo2], [Email], [IsDeleted], [Percentage], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [PinCode]) VALUES (2, N'ErodeKMCH', NULL, N'Vijay', NULL, NULL, NULL, NULL, NULL, N'9687454554', NULL, NULL, 0, 0, CAST(N'2022-02-18T10:08:25.5748277' AS DateTime2), NULL, 1, NULL, 0)
SET IDENTITY_INSERT [dbo].[DoctorMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Patient] ON 

INSERT [dbo].[Patient] ([Id], [PatientName], [Initial], [HrNo], [AttendarName], [PatientGender], [Gender], [IsDeleted], [MobileNumber], [DOB], [Age], [Address], [DoctorMasterId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [UlID]) VALUES (1, N'Malarmannan2', N'Mr. ', N'HRNO-0000001', NULL, N'Male', 0, 0, N'9677010957', NULL, 36, N'No. 223, nichampalam, senni kadu thottam, perundurai tk', 1, CAST(N'2022-02-16T11:36:43.3797178' AS DateTime2), NULL, 1, NULL, N'123456')
INSERT [dbo].[Patient] ([Id], [PatientName], [Initial], [HrNo], [AttendarName], [PatientGender], [Gender], [IsDeleted], [MobileNumber], [DOB], [Age], [Address], [DoctorMasterId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [UlID]) VALUES (2, N'Kavin', N'Mr. ', N'HRNO-0000002', NULL, N'Male', 0, 0, N'9312456987', NULL, 26, N'No. 223, nichampalam, senni kadu thottam, perundurai tk', 1, CAST(N'2022-02-17T09:39:56.9190150' AS DateTime2), NULL, 1, NULL, N'4454')
INSERT [dbo].[Patient] ([Id], [PatientName], [Initial], [HrNo], [AttendarName], [PatientGender], [Gender], [IsDeleted], [MobileNumber], [DOB], [Age], [Address], [DoctorMasterId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [UlID]) VALUES (3, N'Malarmannan', N'Mr. ', N'HRNO-0000003', NULL, N'Male', 0, 0, N'9677010957', NULL, 26, N'No. 223, nichampalam, senni kadu thottam, perundurai tk', 1, CAST(N'2022-02-18T10:04:09.2675855' AS DateTime2), NULL, 1, NULL, N'45688')
SET IDENTITY_INSERT [dbo].[Patient] OFF
GO
SET IDENTITY_INSERT [dbo].[PatientDiagnosis] ON 

INSERT [dbo].[PatientDiagnosis] ([Id], [PatientProfileId], [DiagnosisMasterId], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (10, 3, 210, N'ssad', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[PatientDiagnosis] ([Id], [PatientProfileId], [DiagnosisMasterId], [Description], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (11, 3, 214, N'sdasd', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[PatientDiagnosis] OFF
GO
SET IDENTITY_INSERT [dbo].[PatientProfile] ON 

INSERT [dbo].[PatientProfile] ([Id], [PatientId], [DoctorId], [TemplateMasterId], [AppointmentId], [Compliants], [Examination], [Impression], [Advice], [Plan], [FollowUp], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (1, 1, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, CAST(N'2022-02-16T17:28:18.0401086' AS DateTime2), NULL, 2, NULL)
INSERT [dbo].[PatientProfile] ([Id], [PatientId], [DoctorId], [TemplateMasterId], [AppointmentId], [Compliants], [Examination], [Impression], [Advice], [Plan], [FollowUp], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (2, 1, 0, 1, 3, N'Lung Infection', N'XRay', N'50%', N'Rest', N'', N'', 0, CAST(N'2022-02-16T21:34:02.6353185' AS DateTime2), CAST(N'2022-02-16T21:41:10.3611893' AS DateTime2), 2, 2)
INSERT [dbo].[PatientProfile] ([Id], [PatientId], [DoctorId], [TemplateMasterId], [AppointmentId], [Compliants], [Examination], [Impression], [Advice], [Plan], [FollowUp], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (3, 2, 0, 1, 5, N'Lung Infection', N'XRay, Blood Test', N'50%', N'Rest', N'Take test everyday', N'Regular X-Ray', 0, CAST(N'2022-02-18T08:29:00.7740831' AS DateTime2), CAST(N'2022-02-18T10:15:01.2596868' AS DateTime2), 2, 2)
INSERT [dbo].[PatientProfile] ([Id], [PatientId], [DoctorId], [TemplateMasterId], [AppointmentId], [Compliants], [Examination], [Impression], [Advice], [Plan], [FollowUp], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (4, 1, 0, 1, 4, N'Lung Infection', N'XRay', N'50%', N'Rest', N'', N'', 0, CAST(N'2022-02-18T08:30:55.4877033' AS DateTime2), CAST(N'2022-02-18T08:31:40.2130161' AS DateTime2), 2, 2)
SET IDENTITY_INSERT [dbo].[PatientProfile] OFF
GO
SET IDENTITY_INSERT [dbo].[PatientTest] ON 

INSERT [dbo].[PatientTest] ([Id], [PatientProfileId], [TestMasterId], [Remarks], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (8, 3, 2, N'zcxzxcxzc', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL)
INSERT [dbo].[PatientTest] ([Id], [PatientProfileId], [TestMasterId], [Remarks], [IsDeleted], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy]) VALUES (9, 3, 23, N'tewweewr', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[PatientTest] OFF
GO
SET IDENTITY_INSERT [dbo].[Prescription] ON 

INSERT [dbo].[Prescription] ([Id], [PatientProfileId], [MedicinName], [GenericName], [Strength], [BeforeFood], [Morning], [Noon], [Night], [Description], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted]) VALUES (1, 1, NULL, N'Ibuprofen & Paracetamol', N'400/325', 1, 0, 0, 0, NULL, 3, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Prescription] ([Id], [PatientProfileId], [MedicinName], [GenericName], [Strength], [BeforeFood], [Morning], [Noon], [Night], [Description], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted]) VALUES (2, 1, NULL, N'FLAVOXATE', N'200', 1, 1, 0, 0, NULL, 5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0)
INSERT [dbo].[Prescription] ([Id], [PatientProfileId], [MedicinName], [GenericName], [Strength], [BeforeFood], [Morning], [Noon], [Night], [Description], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted]) VALUES (13, 2, NULL, NULL, N'0.5mg', 1, 0, 0, 0, N'After food', 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 1)
INSERT [dbo].[Prescription] ([Id], [PatientProfileId], [MedicinName], [GenericName], [Strength], [BeforeFood], [Morning], [Noon], [Night], [Description], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted]) VALUES (14, 2, NULL, N'Metronidazole', N'200', 1, 0, 0, 0, NULL, 5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0)
INSERT [dbo].[Prescription] ([Id], [PatientProfileId], [MedicinName], [GenericName], [Strength], [BeforeFood], [Morning], [Noon], [Night], [Description], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted]) VALUES (17, 4, NULL, NULL, N'0.5mg', 1, 0, 0, 0, NULL, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0)
INSERT [dbo].[Prescription] ([Id], [PatientProfileId], [MedicinName], [GenericName], [Strength], [BeforeFood], [Morning], [Noon], [Night], [Description], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted]) VALUES (23, 3, NULL, NULL, N'0.5mg', 1, 0, 0, 0, NULL, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0)
INSERT [dbo].[Prescription] ([Id], [PatientProfileId], [MedicinName], [GenericName], [Strength], [BeforeFood], [Morning], [Noon], [Night], [Description], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted]) VALUES (24, 3, NULL, NULL, N'50', 0, 0, 0, 0, NULL, 5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0)
SET IDENTITY_INSERT [dbo].[Prescription] OFF
GO
SET IDENTITY_INSERT [dbo].[PrescriptionMaster] ON 

INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (2, N'SALBUTAMOL', N'INHALER', NULL, N'nos', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ASTHALIN', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (3, N'Prebiotic and probiotic', N'CAP', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BIFILAC', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (4, N'BUDESONIDE NEBULISER SUSPENSION', N'INH', N'0.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BUDECORT', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (5, N'Bicalutamide', N'TAB', N'50', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CALUTIDE', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (6, N'Clotrimazole', N'CREAM', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CANDID', N'External use only')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (7, N'Trypsin - chymotrypsin', N'TAB', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CHYMORAL FORTE', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (8, N'TRYPSIN-CHYMTRYPSIN', N'TAB', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CHYMORAL FORTE DS', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (9, N'TAMSULOSIN HYDROCHLORIDE + DUTASTERIDE', N'CAP', N'0.4', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CONTIFLO - D', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (10, NULL, N'SYR', NULL, N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CREMAFFIN', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (11, N'DROSPIRENENONE +ETHINYL ESTRADIOL', N'TAB', N'30', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DRONIS', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (12, N'LACTULOSE', N'SYR', N'100', N'ml', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DUPHALAC', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (13, N'SACCHAROMYCES BOULARDII', N'CAP', N'250', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ECONORM', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (14, N'LEVOTHYROXINE', N'TAB', N'25', N'mcg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ELTROXIN', N'Empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (15, N'ESTRIOL', N'CREAM', N'15', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'EVALON', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (16, N'Metronidazole', N'TAB', N'200', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FLAGYL', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (17, N'GENTAMYCIN', N'INJ', N'20', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'GENTICYN', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (18, N'SITAGLIPTIN + METFORMIN', N'TAB', N'50/500', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'JANUMET', N'30 mins before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (19, N'Vitamin C', N'TAB', N'500', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LIMCEE', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (20, N'FERROUS FUMARATE & FOLIC ACID', N'CAPTABS', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LIVOGEN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (21, N'Ferrous fumerate, Folic acid & Zinc Sulphate', N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LIVOGEN-Z', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (22, N'LIDOCAINE', N'JELLY', N'30', N'gm', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LOX JELLY', N'External use only')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (23, N'Chlorzoxazone, Diclofenac, Paracetamol', N'TAB', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MYOSPAZ FORTE', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (24, N'Nitrofurantoin', N'CAP', N'100', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NIFTRAN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (25, N'Pantoprazole', N'INJ', N'40', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PAN', N'30 mins before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (26, NULL, N'CAP', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'RENERVE PLUS', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (27, N'Chlorpheniramine Maleate, Paracetamol, Phenylephrine', N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SINAREST', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (28, N'Cefixime', N'TAB', N'200', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TAXIM O', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (29, N'THYROXINE SODIUM', N'TAB', N'12.5', N'MCG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'THYRONORM', N'Empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (30, N'Tibolome', N'TAB', N'2.5', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TIBOFEM', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (31, N'TRANEXAMIC ACID & MEFENAMIC ACID', N'TAB', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TRAPIC MF', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (32, N'Amitryptiline hydrochloride', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TRYPTOMER', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (33, N'Tamsulosin', N'CAP', N'0.2', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'URIMAX', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (34, N'Tamsulosin & Dutasteride', N'TAB', N'0.4 / 0.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'URIMAX D', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (35, N'Flavoxate hydrochloride', N'TAB', N'200', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'URISPAS', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (36, N'DICLOPHENAC SODIUM', N'SPRAY', N'SMALL', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VOLINI', N'External use only')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (37, N'ALBENDAZOLE', N'TAB', N'400', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZENTEL', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (38, N'Ranitidine', N'TAB', N'75', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZINETAC', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (39, N'Acyclovir', N'TAB', N'400', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZOVIRAX', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (40, N'CABERGOLINE', N'TAB', N'0.25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CABGOLIN', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (41, N'Aspirin', N'TAB', N'75', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ECOSPRIN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (42, N'UBIDECARENONE & l-CARNITINE', N'TAB', N'30/500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'UBICAR', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (43, NULL, N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FOLVITE MB', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (44, N'Bethanechol', N'TAB', N'25', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'URIVOID', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (45, N'METHYLCOBALAMIN, PYRIDOXINE', N'TAB', N'500', N'MCG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MCBM 69', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (46, N'ITRACONOZOLE', N'CAP', N'200', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CANDIFORCE', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (47, N'PREGABALIN, METHYLCOBALAMIN', N'TAB', N'75/750', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PEVESCA PLUS', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (48, N'Nitrofurantoin', N'TAB', N'50', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NIFTAS', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (49, N'Prednisolone', N'TAB', N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'WYSOLONE', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (50, N'BETHENACOL', N'TAB', N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'UROTONE', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (51, N'CONJUGATED ESTROGEN VAGINAL', N'CREAM', N'14', N'G', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PREMARIN CREAM', N'at bedtime')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (52, N'MONTELUKAST SODIUM', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MONTEK LC', N'at bedtime')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (53, N'FOSFOMYCIN TROMETAMOL', N'POWDER', N'3', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ICUFOS', N'at bedtime')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (54, N'METRONIDAZOLE', N'TAB', N'400', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FLAGYL', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (55, N'ZOLPIDEM', N'TAB', N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZOLFRESH', N'30 mins before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (56, NULL, N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SKINFAY', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (57, NULL, N'INJ', N'10', N'UNITS', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TRESIBA', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (58, N'FRUSEMIDE', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LASIX', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (59, N'ATORVASTATIN', N'TAB', N'20', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ATORVA', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (60, N'MOXINIDINE', N'TAB', N'0.2', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MOXOVAS', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (61, N'BISOPROLOL', N'TAB', N'2.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CONCOR', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (62, N'CLINIDIPINE', N'TAB', N'20', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CILACAR', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (63, NULL, N'TAB', N'90', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BRILINTA', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (64, N'DEGARELIX', N'INJ', N'240', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DEGAPRIDE', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (65, N'DEGARELIX', N'INJ', N'240', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DEGATIDE', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (66, N'DEGARELIX', N'INJ', N'240', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FIRMAGON', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (67, N'DICLOFENAC', N'TAB', N'50', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VOVERON', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (68, N'Dicyclomine & Mefenamic Acid', N'TAB', N'10 / 250', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MEFTAL SPAS', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (69, N'Azithromycin', N'TAB', N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AZITHRAL', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (70, N'UBIQUINOL, L METHYL FOLATE, D3', N'POWDER', N'4', N'G', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'COQFEM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (71, N'UBIDECARENONE', N'CAP', N'300', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'KQ300', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (72, N'Tamsulosin & Dutasteride', N'TAB', N'0.4 / 0.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'URONEX D', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (73, NULL, NULL, N'600mg', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Fentin', N'tonight and sunday night')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (74, N'NORETHISTERONE ACETATE', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CRINA NCR', N'after food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (75, N'DIENOGEST', N'TAB', N'2', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VISANNE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (76, N'THYROXINE SODIUM', N'TAB', N'150', N'MCG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'THYRONORM', N'empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (77, N'CLOTRIMAZOLE', N'PESSARY', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Candid pessary', N'insert vaginally')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (78, NULL, NULL, N'600 mg', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Fenti', N'one tonight vaginally and then one on thursday night')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (79, N'Tamsulosin & dutasteride', N'TAB', N'0.4 / 0.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DUTAS T', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (80, N'MIRABEGRON', N'TAB', N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VESIBETA', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (81, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Anovit', N'daily night')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (82, N'OCTINOXATE, KOJIC ACID', N'GEL', N'15', N'G', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'KOJIVIT', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (83, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Baim plus', N'bedtime')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (84, NULL, NULL, NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TRIMEST DHA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (85, N'TAMSULOSIN + SILOFENOCIN', N'CAP', N'0.4/5MG', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DUOFLO', N'ONLY AT NIGHT')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (86, N'MIFEPRISTONE', N'CAP', N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MIFEONE', N'after dinner')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (87, N'DICLOFENAC SODIUM SUPPOSITORIES', N'RECTAL', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'JONAC', N'External use only')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (88, N'FERROUS ASCORBATE+ FOLIC ACID', N'TAB', N'100/1.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Orofer XT', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (89, N'DIENOGEST', N'TAB', N'2', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CIPGEST', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (90, N'ZOLEDRONIC ACID', N'Inj', N'4', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZOLASTA', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (91, N'LACTOBACILLUS', N'CAP', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PROVIDAC', N'after food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (92, N'ABIRATERONE', N'TAB', N'1', N'g', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ABIRATAS ( INTAS)', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (93, N'ABIRATERONE', N'TAB', N'250', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZELGOR', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (94, N'ABIRATERONE', N'TAB', N'250', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'XBIRA', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (95, N'TADALAFIL', NULL, N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TADALAFLO', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (96, N'TAMSULOSIN', N'TAB', N'0.4', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'URONEX', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (97, N'MULTIVITAMINS', N'CAP', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NUROKIND GOLD RF', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (98, N'ESTRADIOL VELERATE', N'TAB', N'2', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PROGYNOVA', N'after dinner')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (99, N'LULICONAZOLE', N'CREAM', N'10', N'G', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LULIBET', N'twice daily')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (100, NULL, NULL, N'200', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZOCON', N'weekly once')
GO
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (101, N'CLOMIFENE CITRATE', N'TAB', N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CLOME', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (102, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Co Q', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (103, N'D Mannose & Cranberry Extract', N'TAB', N'600 / 300', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CRANPAC D', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (104, N'PROGESTERONE', N'TAB', N'300', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SUSTEN SR', N'after dinner')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (105, N'NITROFURANTOIN', N'TAB', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NIFTAS', N'after food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (106, N'MEDROXPROGESTERONE', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MEPERATE', N'D5 and D25')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (107, N'LIPOSOMAL IRON, VIT C', NULL, N'30', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SOFTERON GOLD', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (108, N'CALCIUM AND VIT D3', N'TAB', N'1', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SUPRACAL XT', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (109, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Liofen xl 20mg', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (110, N'Desmopressin', N'TAB', N'0.1', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MINIRIN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (111, N'TRIMETHOPRIM SULPHAMETHOXAZOLE', N'TAB', N'960', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BACTRIM DS', N'after food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (112, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Methico-OD', N'sublingual')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (113, N'TRIPTORELIN', N'POWDER', N'11.25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PAMORELIN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (114, N'CALCIUM AND VIT D3', N'TAB', N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SUPRACAL', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (115, NULL, NULL, N'150 mg', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZOCON', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (116, N'LEVO-CARNITINE,CO ENZYME', N'TAB', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'COMPLETE TD', N'after dinner')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (117, N'ESCITALOPRAM OXALATE + CLONAZEPEM', N'TAB', N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NEXITO PLUS', N'after dinner')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (118, N'ERTAPENEM', N'INJ', N'1', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'INVANZ', N'1V once a day')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (119, N'FOSFOMYCIN', N'POWDER', N'1 sachet', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FOSIROL', N'in 1 glass water')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (120, N'VIT D3 ORAL SOLUTION', N'SOLUTION', N'60000', N'IU', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DEPURA', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (121, N'SOLIFENACIN', N'TAB', N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SOLITEN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (122, NULL, N'TAB', N'400', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TEGRETOL', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (123, N'DROSPIRENENONE +ETHINYL ESTRADIOL', N'TAB', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'YASMIN', N'after dinner')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (124, NULL, NULL, N'0.25mg', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'RESTYL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (125, NULL, NULL, N'0-0-1', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'L Montus', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (126, NULL, NULL, N'0-0-1', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Fluconazole', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (127, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'RARICAP', N'after food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (128, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Navakesh', N'after food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (129, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Navakesh', N'after hood')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (130, N'MUPIROCIN', N'OINTMENT', N'5', N'G', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MUPIMET', N'twice daily')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (131, N'PRIMOSE OIL', N'CAP', N'1000', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PRIMOSA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (132, N'Tamsulosin', N'TAB', N'0.4', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CONTIFLO ICON', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (133, NULL, NULL, N'100mg', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Ubiphene', N'D2 to D6')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (134, NULL, NULL, N'500', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Amoxycillin', N'after food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (135, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Movicol', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (136, N'MIRABEGRON', N'TAB', N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MIRAGO', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (137, N'ASPIRIN', NULL, N'150', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ECOSPRIN', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (138, NULL, N'CREAM', N'80', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CETAPHIL MOIST', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (139, N'DROSPIRENENONE', N'TAB', N'20', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'YAZ', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (140, N'MED', N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Testing', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (141, N'Test', N'TAB', N'10', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'wqert', N'Testing')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (142, NULL, N'TAB', N'400', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Zenflox', N'After Food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (143, N'NORTRIPYLINE & PREGABALIN', N'TAB', N'400', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NORTRYPTOMER -P', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (144, N'Tamsulosin', N'CAP', N'0.4', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'URIMAX', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (145, N'MIRABEGRON', N'TAB', N'50', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VESIBETA', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (146, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PENTASURE', N'day and night')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (147, N'pre probiotic', N'CAP', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BIFILAC HP', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (148, N'DICLOPHENAC SODIUM', N'SPRAY', N'BIG', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VOLINI', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (149, N'PENTOSAN POLYSULFATE', N'CAP', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CYSTOPEN', N'2 hrs after food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (150, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'visna gel', N'local vaginal appln')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (151, N'FERRIC CARBOXYMALTOSE', N'inj', N'1000', N'MG/ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'OROFER FCM', N'in 250 ml ns iv over 15 min')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (152, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Vaxiflu', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (153, N'SOLIFENACIN', N'TAB', N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SOLIACT', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (154, N'CO ENZYME', NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PROGENIX', N'after food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (155, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Looz syrup', N'daily night 10 ml')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (156, N'TROSPIUM CHLORIDE', N'CAP', N'60', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TROFAME XR', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (157, NULL, NULL, N'500', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Gluformi', N'after food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (158, N'NORETHISTERONE ACETATE', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NORMONAL CR', N'after food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (159, N'CEPHALEXIN', N'CAP', N'250', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PHEXIN', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (160, NULL, NULL, N'400mg', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ACIVIR', N'after food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (161, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'zovirax cream', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (162, NULL, N'TAB', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ESTRO G', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (163, N'D Mannose & Cranberry Extract', N'TAB', N'600 / 300', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CRANMAN D', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (164, NULL, NULL, N'10mg', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T.Registerone', N'after dinner')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (165, N'AMOXYCILLIN AND POT CLAVULANATE', N'TAB', N'625', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AUGMENTIN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (166, N'CEFOPERAZONE & SULBACTAM', N'Inj', N'1.5', N'G', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MAGNEX FORTE', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (167, N'TADALAFIL', N'TAB', N'5MG', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MILDFIL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (168, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Sanjeevi oil', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (169, N'WHEATGERM OIL', N'PESSARY', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'F HEAL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (170, N'LETROZOLE', N'TAB', N'2.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LETROZ', N'after dinner')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (171, N'UBIDECARENONE', N'CAP', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'KQ 100', N'1-0-1')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (172, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Multivit in RL', N'IV over 20 mins')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (173, N'Ciprofloxacin', N'TAB', N'250', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CIPLOX', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (174, N'Ciprofloxacin', N'TAB', N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CIPLOX', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (175, N'TAMSULOSIN HYDROCHLORIDE + DUTASTERIDE', N'CAP', N'0.2', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CONTIFLO - D', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (176, N'LEVOTHYROXINE', N'TAB', N'50', N'mcg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ELTROXIN', N'Empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (177, N'LEVOTHYROXINE', N'TAB', N'75', N'mcg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ELTROXIN', N'Empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (178, N'LEVOTHYROXINE', N'TAB', N'100', N'mcg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ELTROXIN', N'Empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (179, N'LEVOTHYROXINE', N'TAB', N'125', N'mcg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ELTROXIN', N'Empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (180, N'GENTAMYCIN', N'INJ', N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'GENTICYN', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (181, N'GENTAMYCIN', N'INJ', N'80', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'GENTICYN', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (182, N'METFORMIN HYDROCHLORIDE', N'TAB', N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'GLUFORMIN XL', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (183, N'METFORMIN HYDROCHLORIDE', N'TAB', N'1000', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'GLUFORMIN XL', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (184, N'SITAGLIPTIN + METFORMIN', N'TAB', N'50/1000', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'JANUMET', N'30 mins before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (185, N'DOMPERIDONE SUSTAINED RELEASE', N'CAP', N'20', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NEXPRO RD', N'30 mins before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (186, N'Pantoprazole', N'TAB', N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PAN', N'30 mins before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (187, N'Cefixime', N'TAB', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TAXIM O', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (188, N'THYROXINE SODIUM', N'TAB', N'25', N'MCG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'THYRONORM', N'Empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (189, N'THYROXINE SODIUM', N'TAB', N'50', N'MCG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'THYRONORM', N'Empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (190, N'THYROXINE SODIUM', N'TAB', N'62.5', N'MCG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'THYRONORM', N'Empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (191, N'THYROXINE SODIUM', N'TAB', N'75', N'MCG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'THYRONORM', N'Empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (192, N'THYROXINE SODIUM', N'TAB', N'88', N'MCG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'THYRONORM', N'Empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (193, N'THYROXINE SODIUM', N'TAB', N'100', N'MCG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'THYRONORM', N'Empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (194, N'THYROXINE SODIUM', N'TAB', N'125', N'MCG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'THYRONORM', N'Empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (195, N'AMITRIPTYLINE HYDROCHLORIDE', N'TAB', N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TRYPTOMER', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (196, N'AMITRIPTYLINE HYDROCHLORIDE', N'TAB', N'75', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TRYPTOMER', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (197, N'RANITIDINE', N'TAB', N'150', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZINETAC', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (198, N'RANITIDINE', N'TAB', N'300', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZINETAC', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (199, NULL, N'TAB', N'200', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZOVIRAX ??', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (200, NULL, N'TAB', N'400', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZOVIRAX ??', N'After food')
GO
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (201, NULL, N'TAB', N'800', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZOVIRAX ??', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (202, N'CABERGOLINE', N'TAB', N'0.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CABGOLIN', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (203, N'CABERGOLINE', N'TAB', N'1.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CABGOLIN', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (204, N'Prednisolone', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'WYSOLONE', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (205, N'FRUSEMIDE', N'TAB', N'20', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LASIX', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (206, N'FRUSEMIDE', N'TAB', N'30', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LASIX', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (207, N'FRUSEMIDE', N'TAB', N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LASIX', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (208, N'MOXINIDINE', N'TAB', N'0.3', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MOXOVAS', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (209, N'MOXINIDINE', N'TAB', N'0.4', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MOXOVAS', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (210, N'BISOPROLOL', N'TAB', N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CONCOR', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (211, N'DEGARELIX', N'INJ', N'80', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DEGAPRIDE', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (212, N'DEGARELIX', N'INJ', N'80', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DEGATIDE', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (213, N'DEGARELIX', N'INJ', N'80', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FIRMAGON', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (214, N'CLOMIFENE CITRATE', N'TAB', N'50', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CLOME', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (215, N'SOLIFENACIN', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SOLITEN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (216, N'Tamsulosin', N'TAB', N'0.2', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CONTIFLO ICON', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (217, N'MIRABEGRON', N'TAB', N'50', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MIRAGO', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (218, N'SOLIFENACIN', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SOLIACT', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (219, N'CEPHALEXIN', N'CAP', N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PHEXIN', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (220, N'CEFTRIAXONE', N'INJ', N'2', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MONOCEF', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (221, N'PREGABALIN', N'CAP', N'75', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LYRICA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (222, N'CLOTRIMAZOLE', N'POWDER', N'100', N'G', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ABZORB', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (223, N'TERBUTALINE', N'SYP', N'120', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ASCORIL SYP', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (224, N'ATORVASTATIN', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ATORVA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (225, N'Hydroxyzine', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ATARAX', N'With Food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (226, N'MIRABEGRON', N'TAB', N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AVOMIRA', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (227, N'AMIKACIN SULPHATE', N'INJ', N'250', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AMICIN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (228, N'PHENITAMINE MALEATE', N'INJ', N'22.75', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AVIL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (229, N'PHENITAMINE MALEATE', N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AVIL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (230, N'MIRABEGRON', N'TAB', N'50', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AVOMIRA', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (231, N'Azithromycin', N'TAB', N'250', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AZITHRAL', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (232, N'Paracetamol', N'INJ', N'1000', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ANEMOL', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (233, N'BUPIVACAINE', N'INJ', N'20', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ANAWIN 0.25', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (234, N'BUPIVACAINE', N'INJ', N'20', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ANAWIN 0.5', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (235, N'MULTIVITAMINS', N'CAP', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'A TO Z', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (236, N'BACLOFEN', N'TAB', N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BACFEN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (237, N'B COMPLEX', N'CAP', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BECOSULES', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (238, N'POVIONE-IODINE', N'OINTMENT', N'15', N'G', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BETADINE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (239, N'NBETHANECHOL CHLORIDE', N'TAB', N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BETHEREN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (240, N'CURCUMIN', N'TAB', N'250', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BIO AV CURCUMIN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (241, N'COENZYME', N'TAB', N'600', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BIO-AV COQ10', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (242, N'HYOSEINE BUTYROMIDE', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BUSCOGAST', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (243, N'SOLIFENACIN SUCCINATE', N'TAB', N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BISPEC', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (244, N'SOLIFENACIN SUCCINATE', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BISPEC', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (245, N'TRIMETHOPRIM', N'TAB', N'200', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BACSTOL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (246, N'BACLOFEN', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BACLOF', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (247, N'TRIMETHOPRIM SULPHAMETHOXAZOLE', N'TAB', N'960', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'COTRIMOXAZOLE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (248, N'DICYCLOMINE HYDROCHLORIDE', N'INJ', N'2', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CYCLOPAM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (249, N'Desmopressin', N'TAB', N'0.2', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MINIRIN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (250, N'CETRIZINE HYDROCHLORIDE', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CETZINE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (251, N'CEFOPERAZONE & SULBACTAM', N'POWDER', N'1.5', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CEFSABACT', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (252, N'Beclometasone & Clotrimazole', N'CREAM', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CANDID -B', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (253, N'DIAQZEPEM', N'INJ', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CALMPOSE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (254, N'CLINDAMYCIN, CLOTRIMAZOLE', N'CAP', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CLINGEN FORTE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (255, N'CLINIDIPINE', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CILACAR', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (256, N'CLOMIFENE CITRATE', N'TAB', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CLOME', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (257, N'HYDROCORTISONE SODIUM SUCCINATE', N'INJ', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CORT -S', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (258, N'CLOTRIMAZOLE AND CLINDAMYCIN', N'SUPPOSITORIES', N'200', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CANSOFT -CL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (259, N'NORETHISTERONE ACETATE', N'TAB', N'15', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CRINA NCR', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (260, N'DOXYCYCLINE INJ', N'INJ', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DIFIDOX', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (261, N'DEGARELIX', N'INJ', N'240', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DEGAREL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (262, N'DEGARELIX', N'INJ', N'80', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DEGAREL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (263, N'DEGARELIX', N'INJ', N'240', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DEGHOR', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (264, N'DEGARELIX', N'INJ', N'80', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DEGHOR', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (265, N'ETOFYLLINE AND THEOPHYLLINE', N'INJ', N'2', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DERIPHYLLIN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (266, N'Drotaverine', N'TAB', N'80', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DROTIN DS', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (267, N'Drotaverine', N'INJ', N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DROTIN', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (268, N'PARACETOMOL', N'TAB', N'650', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DOLO 650', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (269, N'DESLORATADINE', N'TAB', N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DAZIT', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (270, N'DOMPERIDONE', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DOMSTAL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (271, N'DICLOFENAC DIETHYLAMINE', N'GEL', N'30', N'G', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'D-FAST GEL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (272, N'DEXAMETHASONE', N'TAB', N'0.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DEXONAQ', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (273, N'DEXAMETHASONE', N'INJ', N'4', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DEXONA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (274, N'UROFOLLOTROPIN', N'INJ', N'75', N'IU', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'EEMA-FSH', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (275, N'CHORIONIC GONADOTROPHIN', N'INJ', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'EEMA HP-10000', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (276, N'CHORIONIC GONADOTROPHIN', N'INJ', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'EEMA HP-7500', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (277, N'ADRENALINE', N'INJ', N'1.8', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'EPITRATE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (278, N'VITAMIN E', N'CAP', N'400', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'EVION', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (279, N'VITAMIN E', N'CAP', N'200', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'EVION', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (280, N'ONDANSETRON', N'TAB', N'4', N'MG/ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'EMESET', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (281, N'ONDANSETRON', N'INJ', N'2', N'MG/ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'EMESET', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (282, N'TRITICUM VULGARE EXTRACT +PHENOXYETHANOL', N'CREAM', N'32', N'G', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'F HEAL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (283, N'FLAVOXATE', N'TAB', N'200', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FLAVOCIP', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (284, N'PENTOSAN POLYSULFATE', N'TAB', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FOR -IC', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (285, N'ETHINYLOESTRADIOL AND DIENOGEST', N'TAB', N'30', N'MCG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FREEDASE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (286, N'MIFEPRISTONE', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FIBROEASE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (287, N'MIFEPRISTONE', N'TAB', N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FIBROEASE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (288, N'HUMAN PAPILLOMAVIRUS', N'INJ', NULL, N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'GARDASIL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (289, N'PROBIOTIC', N'CAP', N'2 BILLION', N'IU', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'GUT - RENEW', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (290, N'HEPARIN', NULL, N'10', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'HEPLOCK', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (291, N'HEPARIN', NULL, N'20', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'HEPLOCK', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (292, N'ETHINYL ESTRADIOL', N'TAB', N'0.0035', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'GINETTE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (293, N'HEPARIN', N'INJ', N'25000', N'IU', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'HEPAGLAN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (294, N'MAGNESIUM BISGLYCINATE', N'TAB', N'360', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'KRAMPOFF', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (295, N'CINTAPRIDE', N'TAB', N'1', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'KINPRIDE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (296, N'ASPERAGUS', N'TAB', N'200', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LACTARE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (297, N'LEVOSALBUTAMOL INHALATION SOLUTION', N'INH', N'0.63', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LEVOLIN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (298, N'LABETALOL', N'TAB', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LABEBET', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (299, N'FRUSEMIDE INJ', N'INJ', N'2', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LASIX', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (300, N'LOSARTAN', N'TAB', N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LOSAR', NULL)
GO
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (301, N'LOSARTAN', N'TAB', N'50', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LOSAR', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (302, N'LIDOCAINE HYDROCHLORIDE + ADRENALINE', N'INJ', N'30', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LOX 2% ADRENALINE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (303, N'LIDOOCAINE HYDROCHLORIDE', N'INJ', N'30', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LOX 2%', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (304, N'LIGNOCAINE HYDROCHLORIDE', N'INJ', N'20', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LIDFAST', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (305, N'CEFOPERAZONE & SULBACTAM', NULL, N'3', N'G', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MAGNEX FORTE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (306, N'AMINO ACIDS VITAMINS', N'SACHET', N'5', N'G', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MAXOZA L', N'With Food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (307, N'METHYLCOBALAMIN,ALPHA LIPOIC ACID', N'CAP', N'750', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MATILDA AF', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (308, N'MEBEVERINE HYDROCHLORIDE', N'CAP', N'200', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MEBIZ SR', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (309, N'CEFTRIAXONE', N'INJ', N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MONOCEF', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (310, N'MIRABEGRON+ SOLIFENACIN', N'TAB', N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MIRAGO S', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (311, N'MIRABEGRON+ SOLIFENACIN', N'TAB', N'50', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MIRAGO S', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (312, N'MIDAZOLAM', N'INJ', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MEZOLAM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (313, N'METRONIDAZOLE', N'INJ', N'5', N'MG/ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'METROGYL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (314, N'METHYLCOBALAMIN, BENFOTIAMINE', N'TAB', N'1500', N'MCG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NUHENZ', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (315, N'NIFEDIPINE', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NICARDIA RETARD', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (316, N'NIFEDIPINE', N'TAB', N'20', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NICARDIA RETARD', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (317, N'MECOBALAMIN', N'TAB', N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NEUROKIND', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (318, N'DOXYLAMINE SUCCINATE', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NAVINA -JR', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (319, N'FERRIC CARBOXYMALTOSE', N'inj', N'500', N'MG/ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'OROFER FCM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (320, N'Ofloxacin', N'TAB', N'200', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'OFLOX', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (321, N'OFLOXACIN AND TINIDAZOLE', NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'OFLOX -TZ', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (322, N'CLOMIFENE,ACETYLCYSTEINE', N'CAP', N'100/600', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'OVAA SHIELD -DS', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (323, N'BCG FOR IMMUNOTHERAPY', N'INJ', N'40', N'MG/ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ONCO -BCG', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (324, N'LIGNOCAINE AND PRILOCAINE', N'CREAM', N'5', N'G', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PRILOX', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (325, N'METOCLOPRAMIDE HYDROCHLORIDE', N'INJ', N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PERINORM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (326, N'TRANEXAMIC ACID & MEFENAMIC ACID', N'TAB', N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PAUSE -MF', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (327, N'DOXYCYCLINE + LACTOBACILLUS', N'CAP', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PEPDOX', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (328, N'PROMETHAZINE HYDROCHLORIDE', N'INJ', N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PHENERGAN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (329, N'THIAMMINE HYDROCHLORIDE', NULL, N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'POLYBION', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (330, N'PRIMOSE OIL', N'CAP', N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PRIMOSA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (331, N'ELEMENTAL CHROMIUM,D3,B12', N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PERFECTIL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (332, N'RANITIDINE', N'TAB', N'150', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'RANTAC 150', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (333, N'CYCLOBENZAPRINE HYDROCHLORIDE', N'TAB', N'15', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SKELEBENZ', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (334, N'ESOMEPRAZOLE', N'TAB', N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SOMPRAZ 40', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (335, N'CO-TRIMOXAZOLE', N'TAB', N'960', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SEPTRAN DS', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (336, N'SODIUM BICARBONATE', N'INJ', N'25', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SODAC', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (337, N'ORLISTAT', N'CAP', N'120', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SIBBIDEX -OR', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (338, N'VIT D3', N'TAB', N'1250', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SHELCAL-XT', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (339, N'VIT D3', N'TAB', N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SHELCAL-500', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (340, N'Tadalafil', N'TAB', N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TADAFLO', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (341, N'UBIQUINOL ACTATE, L-CARNITINE', N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TRAZER M FORTE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (342, N'TAMSULOSIN', N'TAB', N'0.4', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TASULIN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (343, N'PRE- PROBIOTIC', N'CAP', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TOTALIS', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (344, N'TRANEXAMIC ACID', N'INJ', N'100', N'MG/ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TRAPIC', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (345, N'Oxybutynin', N'TAB', N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TROPAN', N'Empty stomach')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (346, N'Tranexamic acid', N'TAB', N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TRAPIC', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (347, N'NITROFURANTOIN', N'CAP', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'URIFAST', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (348, N'Flavoxate Hydrochloride', N'TAB', N'200', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'URIKIND', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (349, N'PROBIOTICS LYSATUM', N'CAP', N'6', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'UTIVAX', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (350, N'DICLOPHENAC SODIUM', N'GEL', N'75', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VOLINI', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (351, N'BETAHISTINE', NULL, N'24', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VERTIN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (352, N'TAMSULOSIN HYDROCHLORIDE', NULL, N'0.4', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VELTAM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (353, N'B COMPLEX WITH IRON', N'CAP', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BECOSULES WOMEN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (354, N'Levocetirizine & Montelukast', N'TAB', N'44839', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'XYZAL -M', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (355, N'MISPPROSTOL', N'TAB', N'200', N'MCG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZITOTEC', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (356, N'Ofloxacin', N'TAB', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZANOCIN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (357, N'GOSERELIN ACETATE', N'INJ', N'10.8', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZOLADEX LA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (358, NULL, NULL, NULL, N'1X10', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'STERLISED GAUZE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (359, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SILICON RUSCH FOLLY', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (360, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'UNISOFT UNDERPADS', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (361, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DISPOVAN 5 ML SYRINGE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (362, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DISPOVAN 10 ML SYRINGE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (363, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DISPOVAN 20ML SYRINGE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (364, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DISPOVAN 2ML SYRINGE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (365, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ROMSONS FEEDY FG10', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (366, NULL, NULL, N'100', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NS ACULIFE SODIUM CHLORIDE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (367, NULL, NULL, N'500', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NS ACULIFE SODIUM CHLORIDE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (368, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NULIFE STERILE GLOVES', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (369, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MOPPING PAD', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (370, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ROMSONS LEG BAG', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (371, NULL, NULL, N'5', N'LIT', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DE MINERALISED WATER', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (372, NULL, NULL, N'1', N'LIT', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CIDEX', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (373, NULL, NULL, N'2', N'LIT', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CIDEX', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (374, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BEDSHEET', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (375, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'R.M.S INFUSION SET', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (376, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DYNAFIX IV FIXATOR', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (377, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ROMSONS SCALF VEIN SET', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (378, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CATHY IV CANNULA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (379, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NELCATH ROMSONS', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (380, NULL, NULL, N'10', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DISTILLED WATER', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (381, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ROMSONS URO BAG', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (382, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SOFTHAND LATEX POWER GLOVE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (383, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'STETHASCOPE MEDIGOLD KONICA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (384, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TISSUE BOX FACIAL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (385, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ROMSONS AERO NEB KIT', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (386, NULL, NULL, N'100', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'STERILLIUM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (387, NULL, NULL, N'500', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'STERILLIUM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (388, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SHOE COVER PLASTIC', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (389, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DIGITEL THERMOMETER', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (390, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'APRON', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (391, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FACE MASK 2PLY TYING TYPE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (392, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MICROPORE TAPE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (393, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BOUFFANT CAP GREEN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (394, NULL, NULL, N'5', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DISTILLED WATER', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (395, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CENTREHOLE SHEET', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (396, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BETADINE SOL 10%', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (397, N'IBUBRUFEN AND PARACETAMOL', NULL, N'400/325', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'COMBIFLAM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (398, N'PARACETAMOL', NULL, N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CALPOL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (399, NULL, NULL, N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PAN 40', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (400, N'DICLOFENAC SODIUM', NULL, N'50', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VOVERAN GE', NULL)
GO
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (401, N'DICYCLOMINE AND PARACETAMOL', NULL, N'20/500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CYCLOPAM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (402, N'ABIRATERONE', NULL, N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ABIRATRED', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (403, NULL, NULL, N'0.5', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BOOSTRIX', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (404, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FLIP VALVE CATH TAP', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (405, NULL, NULL, N'22.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LUPRIDE INJ', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (406, NULL, NULL, N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MITOMYCIN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (407, N'PARACETAMOL', NULL, N'1', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ACTON OR', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (408, NULL, NULL, N'300', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'KQ', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (409, NULL, NULL, N'22.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ELLIGARD DEPOT INJ', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (410, N'TACROLIMUS', NULL, N'1', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PROGRAF', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (411, N'MYCOPHENOLATE SODIUM', NULL, N'360', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MYFORTIC', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (412, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'RESPIROMETER ROMSONS', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (413, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'APRON CLOTH', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (414, NULL, NULL, N'60', N'MCG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MINIRIN MELT', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (415, NULL, NULL, N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DAFLON', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (416, NULL, NULL, N'4', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ROLITEN OD', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (417, NULL, NULL, N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TADAFLO', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (418, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'A TO Z', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (419, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'UNISOFT NITRILE GLOVES', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (420, NULL, NULL, N'500', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Glyciphage SR', N'after food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (421, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Thebune', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (422, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CCM', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (423, NULL, NULL, N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'OREFER FCM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (424, NULL, NULL, N'25000', N'IU', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'HEPARIN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (425, NULL, NULL, N'5', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PRILOX', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (426, NULL, NULL, N'1', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NUROKIND INJ', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (427, NULL, NULL, N'1', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'INLYTA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (428, NULL, NULL, N'100', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Doxy', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (429, N'Doxycycline + Lactobacillus', N'CAP', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MICRODOX -LBX', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (430, NULL, NULL, N'200mg', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'mifepristone', N'After food tomorroaw at 9 am')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (431, NULL, NULL, N'200mcg', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Misoprostol', N'on Sunday 9,12,3 pm')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (432, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VSL3', N'after food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (433, NULL, N'SANITIZER', N'500', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'GENILLIUM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (434, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FACE MASK COTTON', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (435, NULL, N'B.P APPARATUS', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'OMRON DIGITAL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (436, NULL, N'THERMOMETER', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'INFRARED THERMOMETER', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (437, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'WET WIPES NONWOVEN ARTICLE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (438, NULL, NULL, N'60K', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'D RISE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (439, NULL, NULL, NULL, N'TAB', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZINCOVIT', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (440, NULL, NULL, N'2K', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LUMIA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (441, NULL, NULL, N'625/325', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AUGMENTIN DUO', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (442, NULL, NULL, NULL, N'GEL', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'METROGYL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (443, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T BACT', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (444, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MET INNOV FOL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (445, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'M VISTA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (446, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BENFORCE M', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (447, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'GUT RENEW', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (448, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BECOZINC', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (449, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LIMCEE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (450, NULL, NULL, N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CELIN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (451, NULL, NULL, N'2K', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SSV', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (452, NULL, NULL, N'60K', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LUMIA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (453, NULL, NULL, N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CEFTUM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (454, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VSL 3', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (455, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DISPOSABLE PATIENT GOWN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (456, N'ENZALUTAMIDE', NULL, N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'OBNYX', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (457, NULL, NULL, N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AZEL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (459, NULL, NULL, N'30', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'THEMICAINE 2%', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (460, NULL, NULL, N'20', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BETNOVATE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (461, NULL, NULL, N'11.25', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LUPRIDE INJ', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (462, N'VIT C', NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LIMOSEC CHEWABLE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (463, NULL, NULL, N'2000', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'D RISE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (464, NULL, NULL, N'2', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NEUROBION FORTE RF', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (465, NULL, NULL, N'500', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ENCICARB FCM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (466, N'LULICONAZOLE', NULL, N'10', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LULICAN CREAM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (467, N'DEXAMETHASONE', NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DEXONA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (468, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PULSE OXYMETER EZ LIFE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (469, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FEMALE DILATER', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (470, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MALE DILATER', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (471, N'MEROPENEM', NULL, N'500', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MERBAPEM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (472, N'MEROPENEM', NULL, N'1G', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MERBAPEM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (473, N'PIPERACILLIN(4000MG)+ TAZOBACTUM(500MG)', NULL, N'4.5', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PIPTAZ', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (474, N'PAZOPANIB', N'TAB', N'400 MG', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VOTRIENT', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (476, NULL, NULL, N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NEXPRO', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (477, NULL, NULL, N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ATARAX', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (478, NULL, NULL, N'50', N'GM', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'XYLOCAINE 2% JELLY', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (479, N'MIRABEGRON', NULL, N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'EXENA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (480, N'MIRABEGRON', NULL, N'50', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'EXENA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (481, N'FOSFOMYCIN', NULL, N'1 SACHET', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FOSIDAL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (482, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DISPOVAN 50 ML', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (483, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ASEPTO PUMP', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (484, NULL, NULL, N'10X10', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'STERLISED GAUZE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (485, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FACE MASK N95', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (486, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FACE SHIELD', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (487, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PAN 40 INJ', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (488, NULL, NULL, N'10000 IU', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'HUCOG HP', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (489, NULL, NULL, N'5000 IU', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'HUCOG HP', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (490, NULL, NULL, N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MIFEONE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (491, NULL, NULL, N'50', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'EXENA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (492, NULL, NULL, N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'EXENA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (493, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'RES-CO-Q', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (494, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BEN Q FORTE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (495, NULL, NULL, N'4G', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'RANTOVIT', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (496, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SIBBIDEX- OR', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (497, NULL, NULL, N'5000', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'EEMA HP', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (498, NULL, NULL, N'1000', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Primosa', N'after dinner')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (499, N'ENZALUTAMIDE', NULL, N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'XYLUTIDE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (500, N'ENZALUTAMIDE', NULL, N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AZEL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (501, NULL, NULL, N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NIFTAS', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (502, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LIVIAL', NULL)
GO
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (503, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LUBOWEL 24', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (504, N'DULOXETINE', NULL, N'20', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DUZELA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (505, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'COTTON WOOL SYNCURE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (506, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SYRINGE CATHETER TIP', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (507, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MIRENA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (508, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SHEKCAL XT', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (509, NULL, NULL, N'250MG 1*1ML', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PROLUTION DEP', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (510, N'DEGRALIX', NULL, N'120', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DEGAPRIDE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (511, N'TAMSULOSIN HYDROCHORIDE', NULL, N'0.4', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TAMFIL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (512, N'DEGRALIX', NULL, N'120', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FIRMAGON', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (513, NULL, NULL, N'30', N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'XYLOCAINE 2% INJ', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (514, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TRESIVAC PFS', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (515, NULL, NULL, N'0.5', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'INFLUVAC TETRA', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (516, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'R-VAC', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (517, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'R-VAC', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (518, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'R VAC', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (519, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'silo dal', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (520, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'uri', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (521, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ur', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (522, N'Bicalutamide', N'TAB', N'50', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CALURAN CP', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (523, N'DOXYCYCLINE + LACTOBACILLUS', N'CAP', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MICRODOX LBX', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (524, N'Mirabegron', N'TAB', N'50 MG', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BLADMIR', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (525, N'Mirabegron', N'TAB', N'25 MG', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BLADMIR', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (526, N'Alfuzosin', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ALFOO', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (527, N'Alfuzosin', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ALFUSIN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (528, N'Alfuzosin & Dutasteride', N'TAB', N'10 & 0.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ALFUSIN D', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (529, N'Silodosin', N'TAB', N'8', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SILOTRIF', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (530, N'Tamsulosin & Deflazacort', N'TAB', N'0.4/ 30', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TAMSUKEM PLUS', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (531, N'Silodosin & Dutasteride', N'TAB', N'8 / 0.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MAXVOID PLUS', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (532, N'Potassium citrate 1100 + Magnesium Citrate 375 + Vitamin B6 20', N'SYR', NULL, N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'POTRATE MB6', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (533, N'Magnesium Citrate 375 + Potassium Citrate 1100', N'SYR', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CITALIFT', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (534, N'Hydrochlorothiazide', N'TAB', N'12.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AQUAZIDE', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (535, N'Hydrochlorothiazide', N'TAB', N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AQUAZIDE', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (536, N'Febuxostat', N'TAB', N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FEBUSTAT', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (537, N'Faropenem', N'TAB', N'200', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FAROBACT', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (538, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T. URIKIND', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (539, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'C. NIFTRAN 100MG', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (540, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T. URIKIND', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (541, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T. VELTAM 0.4 MG', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (542, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'c. doxy 100 mg', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (543, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N't. meftal spas', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (544, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N't. pan 40 mg', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (545, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FOSIROL', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (546, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T. URIKIND', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (547, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'chymoral fort', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (548, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N't-bact ointment l/a', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (549, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T. ZERODOL SPAS', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (550, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'tab.silofast 8mg', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (551, NULL, NULL, N'200MG', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T. OFLOX', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (552, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T. ZERODOL SPAS', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (553, NULL, NULL, N'40 MG', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T. PAN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (554, NULL, NULL, N'0.4 MG', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'C. URIMAX', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (555, NULL, NULL, N'1.5 MG', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'INJ MAGNEX FORTE', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (556, NULL, NULL, N'40 MG', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T. PAN', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (557, NULL, NULL, N'1-0-1', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'zerodol spas', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (558, NULL, NULL, N'1-0-1', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N't.pan.d', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (559, N'Levofloxacin', N'TAB', N'500', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LEVOFLOX', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (560, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N't.cystone fort', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (561, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'esoz-d', N'1-0-1')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (562, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NORFLOX 400MG', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (563, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SPORLAC', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (564, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AMIKACIN 750 MG', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (565, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SILOFAST 8MG', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (566, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'cipro 500mg', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (567, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'semi ultracet', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (568, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'semi ultracet', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (569, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LIBIPVP', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (570, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FUCIDIN.H CREAM', NULL)
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (571, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'OVAZOA - M', N'AFTER FOOD')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (572, N'Clomiphene', N'TAB.', N'25', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SIPHENE - M', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (573, N'Anastrozole', N'TAB', N'1', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ANASTRA', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (574, N'Levo-carnitine, Coenzyme Q10', N'TAB', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FERTISURE - M', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (575, NULL, N'CAP', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'OVAZOA- M', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (576, N'Dapoxetine', N'TAB', N'30', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DURALAST', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (577, N'Tadalafil & Dapoxetine', N'TAB', N'11232', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'UPHOLD', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (578, N'Fosfomycin', NULL, N'3', N'gm', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FOSIROL', N'Before Bed Time')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (579, N'Aceclofenac, Paracetamol, Serratiopeptidase', N'TAB', N'100 / 325', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZERODOL-SP', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (580, N'Drotaverine & Aceclofenac', N'TAB', N'80 / 100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZERODOL- SPAS', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (581, N'Tamsulosin + Deflazacort', N'CAP', N'0.4 / 30', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TAMSUKEM PLUS', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (582, N'Tamsulosin', N'TAB', N'0.4', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TAMSUKEM', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (583, N'Silodosin', N'TAB', N'8', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MAXVOID', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (584, N'Silodosin & Dutasteride', N'TAB', N'8 / 0.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MAXVOID PLUS', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (585, N'Silodosin', N'CAP', N'8', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SILOTRIF', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (586, N'Silodosin & Dutasteride', N'TAB', N'8 / 0.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SILOTRIF - D', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (587, N'Mirabegron', N'TAB', N'50', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MIRABIG', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (588, N'Alfuzosin & Dutasteride', N'TAB', N'10 / 0.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DUTALFA', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (589, NULL, N'CAP', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LIBIDUP', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (590, NULL, N'SACHET', NULL, N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ERACT - X', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (591, N'Fosfomycin', N'SACHET', N'3', N'gm', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FOSIROL', N'Before Bed Time')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (592, N'TOLTERIDINE', N'CAP', N'2', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TEROL - LA', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (593, N'Darifenacin', N'TAB', N'7,5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DARITEN OD', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (594, N'Methylcobalamin & Pregabalin', N'CAP', N'750 mcg / 75 mg', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PREGALIN M', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (595, N'Leuprolide', N'INJ', N'3.75', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LUPRIDE DEPOT', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (596, N'Diclofenac', N'INJ', N'75', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DYNAPAR AQ', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (597, N'Ketorolac', N'INJ', N'30', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'KETOROL', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (598, N'Tramadol', N'INJ', N'100', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TRAMAZAC', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (599, N'Acetaminophen & Tramadol', N'TAB', N'325 / 37.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ULTRACET', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (600, N'Acetaminophen & Tramadol', N'TAB', N'162.5 / 18.75', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ULTRACET SEMI', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (601, N'Citric Acid + Potassium Citrate', N'SYR', NULL, N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'K- CIT', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (602, N'Magnesium citrate, Potassium citrate and Vitamin B6', N'SYR', NULL, N'ML', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'STONE 1 B6', N'After food')
GO
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (603, NULL, N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CYSTONE', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (604, NULL, N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CYSTONE FORTE', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (605, N'Ketorolac', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'KETOROL', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (606, N'Fusidic acid', N'CREAM', N'0.02', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FUCIDIN', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (607, N'Hydrocortisone + Fusidic Acid', N'CREAM', N'1 % + 2 %', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FUCIDIN H', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (608, N'Mupirocin', N'OINTMENT', N'0.02', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T- BACT', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (609, N'Fluconazole', N'TAB', N'150', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FLUCON', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (610, N'Dutasteride', N'CAP', N'0.5', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DUTAS', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (611, N'Trypsin + Chymoprypsin', N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'CHYMOPURE', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (612, N'Amoxicillin & Clavunate Potassium', N'TAB', N'500/ 125', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AUGUMED-625', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (613, N'Tamsulosin', N'TAB', N'0.4', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VELTAM', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (614, N'Tamsulosin & dutasteride', N'TAB', N'0.4 / 0.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VELTAM PLUS', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (615, N'Tamsulosin', N'TAB', N'0.2', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'VELTAM', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (616, N'Fluconazole', N'TAB', N'150', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FLUCON', N'With Food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (617, N'Fluconazole', N'CAP', N'150', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SYSCAN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (618, N'Leuprolide acetate', N'INJ', N'3.75', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LUPRIDE', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (619, N'Lorazepam', N'TAB', N'1', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ATIVAN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (620, N'Silodosin', N'TAB', N'8', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SILOFAST', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (621, N'Silodosin & dutasteride', N'TAB', N'8 / 0.5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SILOFAST- d', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (622, N'Silodosin', N'TAB', N'4', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SILOFAST', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (623, N'Bifonazole', N'CREAM', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MYCOSPOR', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (624, N'Mometasone & Fusidic Acid', N'CREAM', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MOMATE-F', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (625, N'Pimecrolimus', N'CREAM', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PICON', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (626, N'Levocetirizine', N'TAB', N'5', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'XYZAL', N'With Food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (627, N'Aceclofenac & Paracetamol', N'TAB', N'100 / 325', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ZERODOL-P', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (628, N'Hyoscine butylbromide', N'TAB', N'10', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BUSCOPAN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (629, N'Domperidone & Pantoprazole', N'TAB', N'30 / 40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PAN -D', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (630, N'Domperidone & Pantoprazole', N'CAP', N'30 / 40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PANTOCID- DSR', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (631, N'Esomeprazole', N'TAB', N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NEKSIUM', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (632, N'Esomeprazole', N'TAB', N'20', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NEKSIUM', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (633, N'Esomeprazole & domperidone', N'CAP', N'40 / 30', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NEKSIUM -D', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (634, N'Domperidone & Esomeprazole', N'CAP', N'30 / 40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ESOZ D', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (635, N'Esomeprazole', N'TAB', N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ESOZ', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (636, N'Esomeprazole', N'TAB', N'20', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ESOZ', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (637, N'Lansoprazole', N'TAB', N'15', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'JUNIOR LANZOL', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (638, N'Pantoprazole', N'INJ', N'40', N'MG', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'PAN', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (639, N'Probiotics', N'CAP', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'OXALO', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (640, N'Cranberry Extract & D-Mannose & Potassium Magnesium Citrate', N'SYR', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ALKAPAC', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (641, N'Multivitamin', N'CAP', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NUTROLIN B PLUS', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (642, N'Linezolid', N'TAB', N'600', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'LINEZOLID', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (643, NULL, N'TAB', N'50', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SILDENAFIL', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (644, NULL, N'TAB', N'100', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'HETRAZAN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (645, NULL, N'TAB', N'100', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'HETRAZAN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (646, NULL, N'SACHET', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'URIKIND', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (647, NULL, N'TAB', N'5', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'FINAST', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (648, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'drotin', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (649, NULL, N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DROTIN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (650, NULL, N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DROTIN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (651, N'Oxybutynin chloride', N'TAB', N'5', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TROPAN XL', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (652, N'Tamsulosin & Dutasteride', N'CAP', N'0.4 / 0.5', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TAMDURA', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (653, N'Tadalafil', N'TAB', N'10', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TADAFLO', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (654, N'Tadalafil', N'TAB', N'5', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'TAZZLE', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (655, N'Tadalafil & Dapoxetine', N'TAB', N'11232', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'DURAPLUS', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (656, NULL, N'TAB', N'180', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ALLEGRA', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (657, NULL, N'OINTMENT', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N't-bact', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (658, NULL, N'OINT', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'Neosporin- H', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (659, NULL, N'oint', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T-Bact', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (660, N'Enzalutamide', N'CAP', N'80', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'GLENZA', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (661, N'potassium citrate& cranberry extract 200 mg& d Mannose 300 mg', N'SYR', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ALKAPAC', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (662, NULL, N'oint', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N't-bact', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (663, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'urikind', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (664, NULL, N'oint', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N't-bact', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (665, NULL, N'OINT', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T-BACT', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (666, NULL, N'OINT', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'T-BACT', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (667, NULL, N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ESLO', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (668, NULL, N'TAB', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SORBITRATE', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (669, N'amlodipine', N'TAB', N'2.5', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ESLO', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (670, N'Ibuprofen & Paracetamol', N'TAB', N'400/325', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'COMBIFLAM', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (671, N'isosorbide dinitrate', N'TAB', N'5', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SORBITRATE', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (672, N'fosfomycin', N'SACHET', N'3', N'gm', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MYFOS', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (673, N'bethanecol chloride', N'TAB', N'25', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'BETHERAN', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (674, N'silodosin', N'CAP', N'8', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SILODAL', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (675, N'silodosin', N'CAP', N'4', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SILODAL', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (676, N'Silodosin & Dutasteride', N'CAP', N'8 / 0.5', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'SILODAL- D', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (677, N'Alfuzosin & Dutasteride', N'TAB', N'10 /0.5', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'AFDURA', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (678, N'Potassium citrate 1100 + Magnesium Citrate 375 + Vitamin B6 20', N'SYR', NULL, N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NOCULI B6', N'With Food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (679, N'Esomeprazole', N'TAB', N'40', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NEXPRO', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (680, N'Esomeprazole & Domperidone', N'CAP', N'40 / 30', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'NEXPRO RD', N'Before food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (681, N'Mirabegron', N'TAB', N'50', N'mg', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'MIRABIG', N'After food')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (682, N'Potassium magnesium citrate, cranberry extract, d mannose', N'SYR', NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ALKAPAC', N'Use as directed')
INSERT [dbo].[PrescriptionMaster] ([Id], [GenericName], [CategoryName], [Strength], [Units], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (683, NULL, NULL, NULL, NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 1, NULL, 0, N'ultracetsemi', N'After food')
SET IDENTITY_INSERT [dbo].[PrescriptionMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TemplateMaster] ON 

INSERT [dbo].[TemplateMaster] ([Id], [Name], [Description], [Compliants], [Examination], [Impression], [Advice], [Plan], [FollowUp], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted]) VALUES (1, N'Covid-19', NULL, N'Lung Infection', N'XRay, Blood Test', N'50%', N'Rest', N'Take test everyday', N'Regular X-Ray', CAST(N'2022-02-16T21:33:19.3486684' AS DateTime2), CAST(N'2022-02-18T10:13:41.0136799' AS DateTime2), 2, 2, 0)
INSERT [dbo].[TemplateMaster] ([Id], [Name], [Description], [Compliants], [Examination], [Impression], [Advice], [Plan], [FollowUp], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted]) VALUES (2, N'Fever', NULL, N'Fevee', N'ere', N'101', N'rese', NULL, NULL, CAST(N'2022-02-16T21:50:48.7335106' AS DateTime2), CAST(N'2022-02-16T22:15:32.9821693' AS DateTime2), 2, 2, 0)
INSERT [dbo].[TemplateMaster] ([Id], [Name], [Description], [Compliants], [Examination], [Impression], [Advice], [Plan], [FollowUp], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted]) VALUES (3, N'Cold', NULL, N'ColdComplaints', N'Cols Examination', N'Cold impression', N'Cols advice', N'cols plan', N'Cold followup', CAST(N'2022-02-17T09:37:08.9113351' AS DateTime2), NULL, 2, NULL, 0)
INSERT [dbo].[TemplateMaster] ([Id], [Name], [Description], [Compliants], [Examination], [Impression], [Advice], [Plan], [FollowUp], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted]) VALUES (4, N'Fever', NULL, N'High Temp', N'High Temp', N'20', N'45', NULL, NULL, CAST(N'2022-02-18T10:11:01.0592510' AS DateTime2), NULL, 2, NULL, 0)
SET IDENTITY_INSERT [dbo].[TemplateMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TemplatePrescription] ON 

INSERT [dbo].[TemplatePrescription] ([Id], [TemplateMasterId], [Strength], [BeforeFood], [Morning], [Noon], [Night], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (12, 2, N'50', 0, 0, 0, 0, 5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[TemplatePrescription] ([Id], [TemplateMasterId], [Strength], [BeforeFood], [Morning], [Noon], [Night], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (13, 2, N'50', 0, 0, 0, 0, 5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[TemplatePrescription] ([Id], [TemplateMasterId], [Strength], [BeforeFood], [Morning], [Noon], [Night], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (14, 2, N'50', 0, 0, 0, 0, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[TemplatePrescription] ([Id], [TemplateMasterId], [Strength], [BeforeFood], [Morning], [Noon], [Night], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (15, 2, N'0.5', 0, 0, 0, 0, 5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 1, NULL, NULL)
INSERT [dbo].[TemplatePrescription] ([Id], [TemplateMasterId], [Strength], [BeforeFood], [Morning], [Noon], [Night], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (16, 2, N'50', 1, 0, 1, 0, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0, N'CALUTIDE', N'After food')
INSERT [dbo].[TemplatePrescription] ([Id], [TemplateMasterId], [Strength], [BeforeFood], [Morning], [Noon], [Night], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (17, 3, N'250', 0, 1, 0, 0, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0, N'ECONORM', N'After food')
INSERT [dbo].[TemplatePrescription] ([Id], [TemplateMasterId], [Strength], [BeforeFood], [Morning], [Noon], [Night], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (18, 4, N'100', 0, 0, 0, 0, 5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0, N'DUPHALAC', N'After food')
INSERT [dbo].[TemplatePrescription] ([Id], [TemplateMasterId], [Strength], [BeforeFood], [Morning], [Noon], [Night], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (19, 1, N'0.5mg', 1, 0, 0, 0, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0, NULL, NULL)
INSERT [dbo].[TemplatePrescription] ([Id], [TemplateMasterId], [Strength], [BeforeFood], [Morning], [Noon], [Night], [NoOfDays], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [IsDeleted], [MedicineName], [Remarks]) VALUES (20, 1, N'50', 0, 0, 0, 0, 5, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 0, NULL, 0, N'CALUTIDE', N'After food')
SET IDENTITY_INSERT [dbo].[TemplatePrescription] OFF
GO
SET IDENTITY_INSERT [dbo].[TestMaster] ON 

INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (1, N'Chest X-Ray', N'Radiology', N'PA Erect', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (2, N'X-Ray KUB', N'Radiology', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (3, N'X-Ray Abdomen and Pelvis', N'Radiology', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (4, N'Ultrasound Scan Whole Abdomen', N'Radiology', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (5, N'Ultrasound Scan KUB + PVR', N'Radiology', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (6, N'Ultrasound Scan Kidneys', N'Radiology', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (7, N'Ultrasound Scan Scrotum', N'Radiology', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (8, N'Ultrasound Scan Transvaginal', N'Radiology', N'- ET - Ovaries', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (9, N'Follicular Scan', N'Radiology', N'TVUS, D10, D12, D14', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (10, N'Ultrasound Scan Breast', N'Radiology', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (11, N'CT Abdomen and Pelvis', N'CT', N'Pre and Post IV Contrast + Oral Contrast 0.5mm Cuts + Reconstruction + CD', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (12, N'CT KUB + Urogram', N'CT', N'Triphasic CT 0.5mm Cuts + Reconstruction', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (13, N'CT KUB Plain', N'CT', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (14, N'CT Chest Plain', N'CT', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (15, N'PSMA PET MRI', N'PET', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (16, N'FDG PET - CT', N'PET', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (17, N'DTPA', N'Nuclear Medicine', N'F-20 - Renogram', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (18, N'DMSA', N'Nuclear Medicine', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (19, N'MDP Bone Scan', N'Nuclear Medicine', N'Mammogram', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (20, N'MRI Abdomen', N'MRI', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (21, N'MRI Abdomen + Urogram', N'MRI', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (22, N'MPMRI - Prostate - DWI Skeletal Survey', N'MRI', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (23, N'MRI Pelvis', N'MRI', N'Plane + Contrast', CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
INSERT [dbo].[TestMaster] ([Id], [Name], [Department], [Remarks], [CreatedDate], [ModifiedDate], [IsDeleted], [CreatedBy], [ModifiedBy]) VALUES (24, N'MRI Perineum + Fistulogram', N'MRI', NULL, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), NULL, 0, 1, NULL)
SET IDENTITY_INSERT [dbo].[TestMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[UserToken] ON 

INSERT [dbo].[UserToken] ([Id], [AccessTokenHash], [IDAccessTokenExpiresDateTime], [RefreshTokenIdHash], [RefreshTokenExpiresDateTime], [UserId]) VALUES (19, N'LR+HVamgPhXfC1iE10SlXPojixW8qVIiBh2jTle9q8M=', CAST(N'2022-02-22T08:33:35.8196640+00:00' AS DateTimeOffset), N'R3xTOAaZLqXfbTuYAscid/N9WVhpmcMx6yQYa23E8CA=', CAST(N'2022-02-18T05:33:35.8196640+00:00' AS DateTimeOffset), 1)
INSERT [dbo].[UserToken] ([Id], [AccessTokenHash], [IDAccessTokenExpiresDateTime], [RefreshTokenIdHash], [RefreshTokenExpiresDateTime], [UserId]) VALUES (20, N'iiQIxxKF0PQYqn8GEwhQrffu9zEFqh/yRZoTjO+aWnE=', CAST(N'2022-02-22T08:39:32.4766999+00:00' AS DateTimeOffset), N'ITOkk92aB2C/g1/cDozxL4dkfB+lA04iH8EoFqaUEug=', CAST(N'2022-02-18T05:39:32.4766999+00:00' AS DateTimeOffset), 2)
SET IDENTITY_INSERT [dbo].[UserToken] OFF
GO
/****** Object:  Index [IX_AccessFunction_ModuleID]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_AccessFunction_ModuleID] ON [dbo].[AccessFunction]
(
	[ModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccessRoleFunction_FunctionID]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_AccessRoleFunction_FunctionID] ON [dbo].[AccessRoleFunction]
(
	[FunctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Appointment_AppUserId]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_Appointment_AppUserId] ON [dbo].[Appointment]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Appointment_PatientId]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_Appointment_PatientId] ON [dbo].[Appointment]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Patient_DoctorMasterId]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_Patient_DoctorMasterId] ON [dbo].[Patient]
(
	[DoctorMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientDiagnosis_DiagnosisMasterId]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_PatientDiagnosis_DiagnosisMasterId] ON [dbo].[PatientDiagnosis]
(
	[DiagnosisMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientDiagnosis_PatientProfileId]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_PatientDiagnosis_PatientProfileId] ON [dbo].[PatientDiagnosis]
(
	[PatientProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientFiles_AppointmentID]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_PatientFiles_AppointmentID] ON [dbo].[PatientFiles]
(
	[AppointmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientFiles_PatientID]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_PatientFiles_PatientID] ON [dbo].[PatientFiles]
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientProfile_AppointmentId]    Script Date: 02/18/2022 10:48:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PatientProfile_AppointmentId] ON [dbo].[PatientProfile]
(
	[AppointmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientProfile_PatientId]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_PatientProfile_PatientId] ON [dbo].[PatientProfile]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientProfile_TemplateMasterId]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_PatientProfile_TemplateMasterId] ON [dbo].[PatientProfile]
(
	[TemplateMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientTest_PatientProfileId]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_PatientTest_PatientProfileId] ON [dbo].[PatientTest]
(
	[PatientProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PatientTest_TestMasterId]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_PatientTest_TestMasterId] ON [dbo].[PatientTest]
(
	[TestMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Prescription_PatientProfileId]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_Prescription_PatientProfileId] ON [dbo].[Prescription]
(
	[PatientProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TemplatePrescription_TemplateMasterId]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_TemplatePrescription_TemplateMasterId] ON [dbo].[TemplatePrescription]
(
	[TemplateMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserToken_UserId]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_UserToken_UserId] ON [dbo].[UserToken]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VitalsReport_AppointmentID]    Script Date: 02/18/2022 10:48:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_VitalsReport_AppointmentID] ON [dbo].[VitalsReport]
(
	[AppointmentID] ASC
)
WHERE ([AppointmentID] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VitalsReport_PatientID]    Script Date: 02/18/2022 10:48:49 ******/
CREATE NONCLUSTERED INDEX [IX_VitalsReport_PatientID] ON [dbo].[VitalsReport]
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DoctorMaster] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [PinCode]
GO
ALTER TABLE [dbo].[AccessFunction]  WITH CHECK ADD  CONSTRAINT [FK_AccessFunction_AccessModule_ModuleID] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[AccessModule] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccessFunction] CHECK CONSTRAINT [FK_AccessFunction_AccessModule_ModuleID]
GO
ALTER TABLE [dbo].[AccessRoleFunction]  WITH CHECK ADD  CONSTRAINT [FK_AccessRoleFunction_AccessFunction_FunctionID] FOREIGN KEY([FunctionID])
REFERENCES [dbo].[AccessFunction] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccessRoleFunction] CHECK CONSTRAINT [FK_AccessRoleFunction_AccessFunction_FunctionID]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_AppUser_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AppUser] ([ID])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_AppUser_AppUserId]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Patient_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([Id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Patient_PatientId]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_DoctorMaster_DoctorMasterId] FOREIGN KEY([DoctorMasterId])
REFERENCES [dbo].[DoctorMaster] ([Id])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_DoctorMaster_DoctorMasterId]
GO
ALTER TABLE [dbo].[PatientDiagnosis]  WITH CHECK ADD  CONSTRAINT [FK_PatientDiagnosis_DiagnosisMaster_DiagnosisMasterId] FOREIGN KEY([DiagnosisMasterId])
REFERENCES [dbo].[DiagnosisMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PatientDiagnosis] CHECK CONSTRAINT [FK_PatientDiagnosis_DiagnosisMaster_DiagnosisMasterId]
GO
ALTER TABLE [dbo].[PatientDiagnosis]  WITH CHECK ADD  CONSTRAINT [FK_PatientDiagnosis_PatientProfile_PatientProfileId] FOREIGN KEY([PatientProfileId])
REFERENCES [dbo].[PatientProfile] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PatientDiagnosis] CHECK CONSTRAINT [FK_PatientDiagnosis_PatientProfile_PatientProfileId]
GO
ALTER TABLE [dbo].[PatientFiles]  WITH CHECK ADD  CONSTRAINT [FK_PatientFiles_Appointment_AppointmentID] FOREIGN KEY([AppointmentID])
REFERENCES [dbo].[Appointment] ([Id])
GO
ALTER TABLE [dbo].[PatientFiles] CHECK CONSTRAINT [FK_PatientFiles_Appointment_AppointmentID]
GO
ALTER TABLE [dbo].[PatientFiles]  WITH CHECK ADD  CONSTRAINT [FK_PatientFiles_Patient_PatientID] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patient] ([Id])
GO
ALTER TABLE [dbo].[PatientFiles] CHECK CONSTRAINT [FK_PatientFiles_Patient_PatientID]
GO
ALTER TABLE [dbo].[PatientProfile]  WITH CHECK ADD  CONSTRAINT [FK_PatientProfile_Appointment_AppointmentId] FOREIGN KEY([AppointmentId])
REFERENCES [dbo].[Appointment] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PatientProfile] CHECK CONSTRAINT [FK_PatientProfile_Appointment_AppointmentId]
GO
ALTER TABLE [dbo].[PatientProfile]  WITH CHECK ADD  CONSTRAINT [FK_PatientProfile_Patient_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PatientProfile] CHECK CONSTRAINT [FK_PatientProfile_Patient_PatientId]
GO
ALTER TABLE [dbo].[PatientProfile]  WITH CHECK ADD  CONSTRAINT [FK_PatientProfile_TemplateMaster_TemplateMasterId] FOREIGN KEY([TemplateMasterId])
REFERENCES [dbo].[TemplateMaster] ([Id])
GO
ALTER TABLE [dbo].[PatientProfile] CHECK CONSTRAINT [FK_PatientProfile_TemplateMaster_TemplateMasterId]
GO
ALTER TABLE [dbo].[PatientTest]  WITH CHECK ADD  CONSTRAINT [FK_PatientTest_PatientProfile_PatientProfileId] FOREIGN KEY([PatientProfileId])
REFERENCES [dbo].[PatientProfile] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PatientTest] CHECK CONSTRAINT [FK_PatientTest_PatientProfile_PatientProfileId]
GO
ALTER TABLE [dbo].[PatientTest]  WITH CHECK ADD  CONSTRAINT [FK_PatientTest_TestMaster_TestMasterId] FOREIGN KEY([TestMasterId])
REFERENCES [dbo].[TestMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PatientTest] CHECK CONSTRAINT [FK_PatientTest_TestMaster_TestMasterId]
GO
ALTER TABLE [dbo].[Prescription]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_PatientProfile_PatientProfileId] FOREIGN KEY([PatientProfileId])
REFERENCES [dbo].[PatientProfile] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Prescription] CHECK CONSTRAINT [FK_Prescription_PatientProfile_PatientProfileId]
GO
ALTER TABLE [dbo].[TemplatePrescription]  WITH CHECK ADD  CONSTRAINT [FK_TemplatePrescription_TemplateMaster_TemplateMasterId] FOREIGN KEY([TemplateMasterId])
REFERENCES [dbo].[TemplateMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TemplatePrescription] CHECK CONSTRAINT [FK_TemplatePrescription_TemplateMaster_TemplateMasterId]
GO
ALTER TABLE [dbo].[UserToken]  WITH CHECK ADD  CONSTRAINT [FK_UserToken_AppUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUser] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserToken] CHECK CONSTRAINT [FK_UserToken_AppUser_UserId]
GO
ALTER TABLE [dbo].[VitalsReport]  WITH CHECK ADD  CONSTRAINT [FK_VitalsReport_Appointment_AppointmentID] FOREIGN KEY([AppointmentID])
REFERENCES [dbo].[Appointment] ([Id])
GO
ALTER TABLE [dbo].[VitalsReport] CHECK CONSTRAINT [FK_VitalsReport_Appointment_AppointmentID]
GO
ALTER TABLE [dbo].[VitalsReport]  WITH CHECK ADD  CONSTRAINT [FK_VitalsReport_Patient_PatientID] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patient] ([Id])
GO
ALTER TABLE [dbo].[VitalsReport] CHECK CONSTRAINT [FK_VitalsReport_Patient_PatientID]
GO
USE [master]
GO
ALTER DATABASE [db_a7e791_pisystems] SET  READ_WRITE 
GO
