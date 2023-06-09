USE [master]
GO
/****** Object:  Database [Accidents_Stage]    Script Date: 20/05/2023 4:21:42 PM ******/
CREATE DATABASE [Accidents_Stage]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Accidents_Stage', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Accidents_Stage.mdf' , SIZE = 663552KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Accidents_Stage_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Accidents_Stage_log.ldf' , SIZE = 2301952KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Accidents_Stage] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Accidents_Stage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Accidents_Stage] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Accidents_Stage] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Accidents_Stage] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Accidents_Stage] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Accidents_Stage] SET ARITHABORT OFF 
GO
ALTER DATABASE [Accidents_Stage] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Accidents_Stage] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Accidents_Stage] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Accidents_Stage] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Accidents_Stage] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Accidents_Stage] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Accidents_Stage] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Accidents_Stage] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Accidents_Stage] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Accidents_Stage] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Accidents_Stage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Accidents_Stage] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Accidents_Stage] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Accidents_Stage] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Accidents_Stage] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Accidents_Stage] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Accidents_Stage] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Accidents_Stage] SET RECOVERY FULL 
GO
ALTER DATABASE [Accidents_Stage] SET  MULTI_USER 
GO
ALTER DATABASE [Accidents_Stage] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Accidents_Stage] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Accidents_Stage] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Accidents_Stage] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Accidents_Stage] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Accidents_Stage] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Accidents_Stage', N'ON'
GO
ALTER DATABASE [Accidents_Stage] SET QUERY_STORE = OFF
GO
USE [Accidents_Stage]
GO
/****** Object:  Table [dbo].[StageAccident]    Script Date: 20/05/2023 4:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StageAccident](
	[ID] [varchar](50) NULL,
	[Start_Time_Accident] [datetime] NULL,
	[Distance(mi)] [float] NULL,
	[Number_of_Casualties] [int] NULL,
	[Severity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StageDate]    Script Date: 20/05/2023 4:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StageDate](
	[DateKey] [nvarchar](16) NULL,
	[FullDate] [datetime] NULL,
	[Year] [int] NULL,
	[Quarter] [int] NULL,
	[Month] [int] NULL,
	[Day] [int] NULL,
	[Hour] [int] NULL,
	[Minute] [int] NULL,
	[Weekday] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StageLocation]    Script Date: 20/05/2023 4:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StageLocation](
	[ID] [varchar](50) NULL,
	[Number] [int] NULL,
	[Street] [varchar](max) NULL,
	[Side] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[County] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Zipcode] [varchar](50) NULL,
	[Country] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StageRoad]    Script Date: 20/05/2023 4:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StageRoad](
	[ID] [varchar](50) NULL,
	[Road_Surface_Conditions] [varchar](50) NULL,
	[Road_Type] [varchar](50) NULL,
	[Speed_limit] [int] NULL,
	[Amenity] [bit] NULL,
	[Bump] [bit] NULL,
	[Crossing] [bit] NULL,
	[Give_Way] [bit] NULL,
	[Junction] [bit] NULL,
	[No_Exit] [bit] NULL,
	[Railway] [bit] NULL,
	[Roundabout] [bit] NULL,
	[Station] [bit] NULL,
	[Stop] [bit] NULL,
	[Traffic_Calming] [bit] NULL,
	[Traffic_Signal] [bit] NULL,
	[Turning_Loop] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StageTwilight]    Script Date: 20/05/2023 4:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StageTwilight](
	[ID] [varchar](50) NULL,
	[Sunrise_Sunset] [varchar](10) NULL,
	[Civil_Twilight] [varchar](10) NULL,
	[Nautical_Twilight] [varchar](10) NULL,
	[Astronomical_Twilight] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StageVehicle]    Script Date: 20/05/2023 4:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StageVehicle](
	[ID] [varchar](50) NULL,
	[Age_Band_of_Driver] [varchar](50) NULL,
	[Sex_of_Driver] [varchar](50) NULL,
	[Driver_IMD_Decile] [int] NULL,
	[Driver_Home_Area_Type] [varchar](50) NULL,
	[Journey_Purpose_of_Driver] [varchar](50) NULL,
	[Engine_Capacity_ CC ] [int] NULL,
	[Propulsion_Code] [varchar](50) NULL,
	[make] [varchar](50) NULL,
	[model] [varchar](50) NULL,
	[Junction_Location] [varchar](255) NULL,
	[Vehicle_Manoeuvre] [varchar](100) NULL,
	[Vehicle_Location Restricted_Lane] [varchar](50) NULL,
	[X1st_Point_of_Impact] [varchar](50) NULL,
	[Year] [int] NULL,
	[Was_Vehicle_Left_Hand_Drive] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StageWeather]    Script Date: 20/05/2023 4:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StageWeather](
	[ID] [varchar](50) NULL,
	[Weather_Timestamp] [varchar](50) NULL,
	[Temperature(F)] [float] NULL,
	[Wind_Chill(F)] [float] NULL,
	[Humidity(%)] [int] NULL,
	[Pressure(in)] [float] NULL,
	[Visibility(mi)] [float] NULL,
	[Wind_Direction] [varchar](50) NULL,
	[Wind_Speed(mph)] [float] NULL,
	[Precipitation(in)] [float] NULL,
	[Weather_Condition] [varchar](50) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Accidents_Stage] SET  READ_WRITE 
GO
