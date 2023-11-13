USE [EczaneTakip] 
GO

/****** Object:  Database [EczaneTakip]    Script Date: 04.03.2013 15:13:50 ******/
CREATE DATABASE [EczaneTakip] ON  PRIMARY 
( NAME = N'EczaneTakip', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\EczaneTakip.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EczaneTakip_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\EczaneTakip_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [EczaneTakip] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EczaneTakip].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [EczaneTakip] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [EczaneTakip] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [EczaneTakip] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [EczaneTakip] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [EczaneTakip] SET ARITHABORT OFF 
GO

ALTER DATABASE [EczaneTakip] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [EczaneTakip] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [EczaneTakip] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [EczaneTakip] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [EczaneTakip] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [EczaneTakip] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [EczaneTakip] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [EczaneTakip] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [EczaneTakip] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [EczaneTakip] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [EczaneTakip] SET  DISABLE_BROKER 
GO

ALTER DATABASE [EczaneTakip] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [EczaneTakip] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [EczaneTakip] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [EczaneTakip] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [EczaneTakip] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [EczaneTakip] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [EczaneTakip] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [EczaneTakip] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [EczaneTakip] SET  MULTI_USER 
GO

ALTER DATABASE [EczaneTakip] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [EczaneTakip] SET DB_CHAINING OFF 
GO

ALTER DATABASE [EczaneTakip] SET  READ_WRITE 
GO

