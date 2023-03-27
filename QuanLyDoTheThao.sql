USE [QuanLyDoBanTheThao]
GO
/****** Object:  Database [QuanLyBanDoTheThao]    Script Date: 20/02/2023 10:19:12 PM ******/
CREATE DATABASE [QuanLyBanDoTheThao]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanDoTheThao', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyBanDoTheThao.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyBanDoTheThao_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyBanDoTheThao_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanDoTheThao].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET QUERY_STORE = OFF
GO
USE [QuanLyBanDoTheThao]
GO
/****** Object:  User [sa]    Script Date: 20/02/2023 10:19:12 PM ******/
CREATE USER [sa] FOR LOGIN [sa] WITH DEFAULT_SCHEMA=[sa]
GO
/****** Object:  Schema [sa]    Script Date: 20/02/2023 10:19:12 PM ******/
CREATE SCHEMA [sa]
GO
/****** Object:  Table [dbo].[ChucDanh]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucDanh](
	[MaCD] [nchar](10) NOT NULL,
	[TenChucDanh] [nchar](30) NULL,
 CONSTRAINT [PK_ChucDanh] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHDBan]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHDBan](
	[MaHDB] [nchar](10) NOT NULL,
	[MaSP] [nchar](10) NOT NULL,
	[MaKH] [nchar](10) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_CTHDBan] PRIMARY KEY CLUSTERED 
(
	[MaHDB] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHDNHap]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHDNHap](
	[MaHDN] [nchar](10) NOT NULL,
	[MaSP] [nchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaCungCap] [money] NOT NULL,
 CONSTRAINT [PK_CTHDNHap_1] PRIMARY KEY CLUSTERED 
(
	[MaHDN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhieuDat]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuDat](
	[MaSP] [nchar](10) NOT NULL,
	[MaPDH] [nchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_CTPhieuDat] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaPDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhieuDoi]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuDoi](
	[MaHDB] [nchar](10) NOT NULL,
	[MaSP] [nchar](10) NOT NULL,
	[MaPD] [nchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_CTPhieuDoi] PRIMARY KEY CLUSTERED 
(
	[MaHDB] ASC,
	[MaSP] ASC,
	[MaPD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[MaHDB] [nchar](10) NOT NULL,
	[NgayLap] [datetime] NULL,
	[TongTien] [money] NULL,
	[MaNV] [nchar](10) NULL,
	[MaKM] [nchar](10) NULL,
 CONSTRAINT [PK_HoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[MaHDN] [nchar](10) NOT NULL,
	[NgayLap] [datetime] NULL,
	[TongTien] [money] NULL,
	[MaNV] [nchar](10) NULL,
	[MaPDH] [nchar](10) NULL,
	[MaNCC] [nchar](10) NULL,
 CONSTRAINT [PK_HoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nchar](10) NOT NULL,
	[Ten] [nchar](30) NULL,
	[GioiTinh] [nchar](10) NULL,
	[TongChiTieu] [money] NULL,
	[SDT] [nchar](12) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [nchar](10) NOT NULL,
	[TenKM] [nchar](10) NULL,
	[PhanTramKM] [float] NULL,
	[DieuKienKM] [money] NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nchar](10) NOT NULL,
	[TenNCC] [nchar](30) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[Ho] [nchar](30) NULL,
	[Ten] [nchar](30) NULL,
	[GioiTinh] [nchar](10) NULL,
	[NgaySinh] [datetime] NULL,
	[Email] [nchar](70) NULL,
	[MaCD] [nchar](10) NULL,
	[MaTK] [nchar](10) NULL,
	[CMND] [nchar](20) NULL,
	[SDT] [nchar](15) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatHang]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatHang](
	[MaPDH] [nchar](10) NOT NULL,
	[NgayDat] [datetime] NULL,
	[MaNV] [nchar](10) NULL,
	[MaHDN] [nchar](10) NULL,
	[NgayGiao] [datetime] NULL,
 CONSTRAINT [PK_PhieuDatHang] PRIMARY KEY CLUSTERED 
(
	[MaPDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDoi]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDoi](
	[MaPD] [nchar](10) NOT NULL,
	[NgayDoi] [datetime] NULL,
	[MaNV] [nchar](10) NULL,
 CONSTRAINT [PK_PhieuDoi] PRIMARY KEY CLUSTERED 
(
	[MaPD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nchar](10) NOT NULL,
	[TenSP] [nchar](30) NULL,
	[GiaBan] [money] NULL,
	[SoLuongSPCon] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 20/02/2023 10:19:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [nchar](10) NOT NULL,
	[Login] [nchar](30) NULL,
	[PassWord] [nchar](500) NULL,
	[MaNV] [nchar](10) NULL,
	[TrangThai] [nchar](10) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_KhachHang]    Script Date: 20/02/2023 10:19:12 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_KhachHang] ON [dbo].[KhachHang]
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TaiKhoan]    Script Date: 20/02/2023 10:19:12 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_TaiKhoan] ON [dbo].[TaiKhoan]
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CTHDBan]  WITH CHECK ADD  CONSTRAINT [FK_CTHDBan_HoaDonBan] FOREIGN KEY([MaHDB])
REFERENCES [dbo].[HoaDonBan] ([MaHDB])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHDBan] CHECK CONSTRAINT [FK_CTHDBan_HoaDonBan]
GO
ALTER TABLE [dbo].[CTHDBan]  WITH CHECK ADD  CONSTRAINT [FK_CTHDBan_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHDBan] CHECK CONSTRAINT [FK_CTHDBan_KhachHang]
GO
ALTER TABLE [dbo].[CTHDBan]  WITH CHECK ADD  CONSTRAINT [FK_CTHDBan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHDBan] CHECK CONSTRAINT [FK_CTHDBan_SanPham]
GO
ALTER TABLE [dbo].[CTHDNHap]  WITH CHECK ADD  CONSTRAINT [FK_CTHDNHap_HoaDonNhap] FOREIGN KEY([MaHDN])
REFERENCES [dbo].[HoaDonNhap] ([MaHDN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHDNHap] CHECK CONSTRAINT [FK_CTHDNHap_HoaDonNhap]
GO
ALTER TABLE [dbo].[CTHDNHap]  WITH CHECK ADD  CONSTRAINT [FK_CTHDNHap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHDNHap] CHECK CONSTRAINT [FK_CTHDNHap_SanPham]
GO
ALTER TABLE [dbo].[CTPhieuDat]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuDat_PhieuDatHang] FOREIGN KEY([MaPDH])
REFERENCES [dbo].[PhieuDatHang] ([MaPDH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTPhieuDat] CHECK CONSTRAINT [FK_CTPhieuDat_PhieuDatHang]
GO
ALTER TABLE [dbo].[CTPhieuDat]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuDat_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTPhieuDat] CHECK CONSTRAINT [FK_CTPhieuDat_SanPham]
GO
ALTER TABLE [dbo].[CTPhieuDoi]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuDoi_CTHDBan] FOREIGN KEY([MaHDB], [MaSP])
REFERENCES [dbo].[CTHDBan] ([MaHDB], [MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTPhieuDoi] CHECK CONSTRAINT [FK_CTPhieuDoi_CTHDBan]
GO
ALTER TABLE [dbo].[CTPhieuDoi]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuDoi_PhieuDoi] FOREIGN KEY([MaPD])
REFERENCES [dbo].[PhieuDoi] ([MaPD])
GO
ALTER TABLE [dbo].[CTPhieuDoi] CHECK CONSTRAINT [FK_CTPhieuDoi_PhieuDoi]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBan_KhuyenMai1] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HoaDonBan_KhuyenMai1]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBan_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HoaDonBan_NhanVien]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NhanVien1] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NhanVien1]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucDanh] FOREIGN KEY([MaCD])
REFERENCES [dbo].[ChucDanh] ([MaCD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucDanh]
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatHang_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuDatHang] CHECK CONSTRAINT [FK_PhieuDatHang_NhanVien]
GO
ALTER TABLE [dbo].[PhieuDoi]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDoi_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuDoi] CHECK CONSTRAINT [FK_PhieuDoi_NhanVien]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanDoTheThao] SET  READ_WRITE 
GO
