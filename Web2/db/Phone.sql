USE [master]
GO
/****** Object:  Database [Phone]    Script Date: 4/22/2017 12:02:05 AM ******/
CREATE DATABASE [Phone]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Phone', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Phone.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Phone_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Phone_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Phone] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Phone].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Phone] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Phone] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Phone] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Phone] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Phone] SET ARITHABORT OFF 
GO
ALTER DATABASE [Phone] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Phone] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Phone] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Phone] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Phone] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Phone] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Phone] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Phone] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Phone] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Phone] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Phone] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Phone] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Phone] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Phone] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Phone] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Phone] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Phone] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Phone] SET RECOVERY FULL 
GO
ALTER DATABASE [Phone] SET  MULTI_USER 
GO
ALTER DATABASE [Phone] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Phone] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Phone] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Phone] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Phone] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Phone', N'ON'
GO
USE [Phone]
GO
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 4/22/2017 12:02:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietDH](
	[MaDH] [int] NULL,
	[MaSP] [varchar](100) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [varchar](50) NULL,
	[TongTien] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChungLoai]    Script Date: 4/22/2017 12:02:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChungLoai](
	[MaCL] [int] NOT NULL,
	[TenCL] [nvarchar](100) NULL,
 CONSTRAINT [PK_ChungLoai] PRIMARY KEY CLUSTERED 
(
	[MaCL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comment]    Script Date: 4/22/2017 12:02:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[IDCmt] [int] IDENTITY(1,1) NOT NULL,
	[NguoiDungCmt] [varchar](50) NOT NULL,
	[NoiDung] [nvarchar](4000) NOT NULL,
	[MaSP] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[IDCmt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 4/22/2017 12:02:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[NguoiDungname] [varchar](50) NULL,
	[NgayDatHang] [datetime] NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [char](15) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[TinhTrang] [int] NULL,
	[GhiChu] [nvarchar](1000) NULL,
	[Tongtien] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 4/22/2017 12:02:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [nvarchar](100) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
	[MaCL] [int] NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 4/22/2017 12:02:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[NguoiDungName] [varchar](50) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[DienThoai] [char](15) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Admin] [int] NOT NULL CONSTRAINT [DF_NguoiDung_Admin]  DEFAULT ((0)),
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[NguoiDungName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/22/2017 12:02:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](100) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[Gia] [varchar](50) NOT NULL,
	[MoTa] [nvarchar](4000) NULL,
	[LoaiSP] [nvarchar](100) NOT NULL,
	[Hinh] [varchar](1000) NULL,
	[HeDieuHanh] [nvarchar](100) NULL,
	[LuotXem] [int] NULL,
	[NgayDangSP] [datetime] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChungLoai] ([MaCL], [TenCL]) VALUES (1, N'Điện thoại')
INSERT [dbo].[ChungLoai] ([MaCL], [TenCL]) VALUES (2, N'Máy tính bảng')
INSERT [dbo].[ChungLoai] ([MaCL], [TenCL]) VALUES (3, N'Phụ kiện')
INSERT [dbo].[ChungLoai] ([MaCL], [TenCL]) VALUES (4, N'Máy tính xách tay')
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([IDCmt], [NguoiDungCmt], [NoiDung], [MaSP]) VALUES (3, N'hoangthienkiem', N'hello', N'sony01')
INSERT [dbo].[Comment] ([IDCmt], [NguoiDungCmt], [NoiDung], [MaSP]) VALUES (4, N'hoangthienkiem', N'hello boy', N'htc02')
INSERT [dbo].[Comment] ([IDCmt], [NguoiDungCmt], [NoiDung], [MaSP]) VALUES (7, N'asd', N'ok baby', N'htc02')
INSERT [dbo].[Comment] ([IDCmt], [NguoiDungCmt], [NoiDung], [MaSP]) VALUES (8, N'hoangthienkiem', N'sản phẩm good', N'htc02')
SET IDENTITY_INSERT [dbo].[Comment] OFF
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'asus', N'Asus', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'bphone', N'BPhone', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'htc', N'HTC', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'iphone', N'Iphone', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'nokia', N'Nokia - Microsoft', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'oppo', N'Oppo', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'samsung', N'Samsung', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'sony', N'Sony', 1)
INSERT [dbo].[NguoiDung] ([NguoiDungName], [Password], [HoTen], [Email], [DienThoai], [DiaChi], [Admin]) VALUES (N'abc', N'123', N'abc', N'abc@yahoo.com', NULL, N'abc 123', 0)
INSERT [dbo].[NguoiDung] ([NguoiDungName], [Password], [HoTen], [Email], [DienThoai], [DiaChi], [Admin]) VALUES (N'asd', N'123', N'asd', N'asd', NULL, N'sasfsd', 0)
INSERT [dbo].[NguoiDung] ([NguoiDungName], [Password], [HoTen], [Email], [DienThoai], [DiaChi], [Admin]) VALUES (N'hoangthienkiem', N'123456', N'Hoàng Thiên Kiếm', N'abc@yahoo.com', N'01223334444    ', N'abc 123', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'asus01', N'Asus Zenfone 2 2.3Ghz', N'7490000', N'Màn hình:	IPS+ LCD, 16 triệu màu, 5.5", 1080 x 1920 pixels CPU:	Intel Atom Z3580, 4 nhân, 2.3 GHz RAM	4GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	13 MP, Quay phim FullHD 1080p@30fps Camera phụ:	5 MP Bộ nhớ trong:	64 GB Thẻ nhớ ngoài:	64 GB Dung lượng pin:	3000 mAh', N'asus', N'zenfone223ghz.jpg', N'Android', 17, CAST(N'2015-06-16 23:23:47.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'asus02', N'Asus Zenfone 6', N'5490000', N'Màn hình:	HD, 6.0", 720 x 1280 pixels CPU:	Intel Atom Z2560, 2 nhân, 1.6 GHz RAM	2 GB Hệ điều hành:	Android 4.3 (Jelly Bean) Camera chính:	13 MP, Quay phim FullHD 1080p@30fps Camera phụ:	2.0 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	64 GB Dung lượng pin:	3300 mAh', N'asus', N'zenfone6.jpg', N'Android', 3, CAST(N'2015-06-16 23:25:46.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'bphone01', N'Bphone - 16GB', N'10990000', N'Màn hình:	IPS-LCD, 5.0", 1080 x 1920 pixels CPU:	Snapdragon 801, 4 nhân, 2.5 GHz RAM	3GB Hệ điều hành:	BOS (Android 5.0) Camera chính:	13 MP, Quay phim FullHD 1080p@60fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	3000 mAh', N'bphone', N'bphone16.jpg', N'Android', 6, CAST(N'2015-06-15 22:51:25.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'bphone02', N'Bphone - 64GB', N'13990000', N'Màn hình:	IPS-LCD, 5.0", 1080 x 1920 pixels CPU:	Snapdragon 801, 4 nhân, 2.5 GHz RAM	3GB Hệ điều hành:	BOS (Android 5.0) Camera chính:	13 MP, Quay phim FullHD 1080p@60fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	3000 mAh', N'bphone', N'bphone64.jpg', N'Android', 4, CAST(N'2015-06-15 22:54:29.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'bphone03', N'Bphone-128GB Mạ vàng', N'22290000', N'Màn hình:	IPS-LCD, 5.0", 1080 x 1920 pixels CPU:	Snapdragon 801, 4 nhân, 2.5 GHz RAM	3GB Hệ điều hành:	BOS (Android 5.0) Camera chính:	13 MP, Quay phim FullHD 1080p@60fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	3000 mAh', N'bphone', N'bphonegold128.jpg', N'Android', 15, CAST(N'2015-06-16 22:59:07.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc01', N'HTC One M9', N'16990000', N'Màn hình:	Full HD, 5.0", 1080 x 1920 pixels CPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57 RAM	3GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	20.7 MP, Quay phim 4K 2160p@30fps Camera phụ:	4 Ultra pixel Bộ nhớ trong:	32 GB Thẻ nhớ ngoài:	2 TB Dung lượng pin:	2840 mAh', N'htc', N'htconem9.jpg', N'Android', 10, CAST(N'2015-06-16 23:27:03.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc02', N'HTC Desire Eye', N'9990000', N'Màn hình:	Full HD, 5.2", 1080 x 1920 pixels CPU:	Qualcomm Snapdragon 801, 4 nhân, 2.26 GHz RAM	2 GB Hệ điều hành:	Android 4.4 (KitKat) Camera chính:	13 MP, Quay phim FullHD 1080p@30fps Camera phụ:	13 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	128 GB Dung lượng pin:	2400 mAh', N'htc', N'htcdesir-eye.jpg', N'Android', 10, CAST(N'2015-06-16 23:28:03.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'iphone01', N'Iphone 6 Plus 16GB', N'19590000', N'Iphone 6 Plus 16GB', N'iphone', N'iphone6plus.jpg', N'IOS', 1, CAST(N'2015-06-15 21:45:58.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'iphone02', N'iPhone 6 Plus 64GB', N'22190000', N'Màn hình:	Retina HD, 5.5", 1080 x 1920 pixels
CPU:	Apple A8, 2 nhân, 1.4 GHz
RAM	1 GB
Hệ điều hành:	iOS 8.0
Camera chính:	8.0 MP, Quay phim FullHD 1080p@60fps
Camera phụ:	1.2 MP
Bộ nhớ trong:	64 GB
Thẻ nhớ ngoài:	Không
Dung lượng pin:	2915 mAh', N'iphone', N'iphone6plus64gb.jpg', N'IOS', 10, CAST(N'2015-06-15 22:50:06.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'iphone03', N'iPhone 5S 16GB', N'12990000', N'Màn hình:	DVGA, 4.0", 640 x 1136 pixels
CPU:	Apple A7, 2 nhân, 1.3 GHz
RAM	1 GB
Hệ điều hành:	iOS 8.0
Camera chính:	8.0 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	1.2 MP
Bộ nhớ trong:	16 GB
Thẻ nhớ ngoài:	Không
Dung lượng pin:	1560 mAh', N'iphone', N'iphone5s16gb.jpg', N'IOS', 10, CAST(N'2015-06-15 22:50:06.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'nokia01', N'Nokia Lumia 930', N'10990000', N'Màn hình:	Full HD, 5.0", 1080 x 1920 pixels
CPU:	Qualcomm Snapdragon 800, 4 nhân, 2.2 GHz
RAM	2 GB
Hệ điều hành:	Windows Phone 8.1
Camera chính:	20 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	1.2 MP
Bộ nhớ trong:	32 GB
Thẻ nhớ ngoài:	Không
Dung lượng pin:	2420 mAh', N'nokia', N'lumia930.jpg', N'WindowsPhone', 1, CAST(N'2015-06-15 22:50:06.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'nokia02', N'Nokia Lumia 830', N'7990000', N'Màn hình:	HD, 5.0", 720 x 1280 pixels
CPU:	Qualcomm Snapdragon 400, 4 nhân, Quad-core 1.2 GHz
RAM	1 GB
Hệ điều hành:	Windows Phone 8.1
Camera chính:	10 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	1.0 MP
Bộ nhớ trong:	16 GB
Thẻ nhớ ngoài:	128 GB
Dung lượng pin:	2200 mAh', N'nokia', N'lumia830.jpg', N'WindowsPhone', 1, CAST(N'2015-06-15 22:50:06.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo01', N'OPPO R5', N'10000000', N'Màn hình:	Full HD, 5.2", 1080 x 1920 pixels CPU:	Snapdragon 615, 8 nhân, 1.5 GHz RAM	2 GB Hệ điều hành:	Android 4.4 (KitKat) Camera chính:	13 MP, Quay phim FullHD 1080p@60fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	2000 mAh', N'oppo', N'oppor5.jpg', N'Android', 20, CAST(N'2015-06-16 23:01:50.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo02', N'OPPO Find 7a', N'8990000', N'Màn hình:	Full HD, 5.5", 1080 x 1920 pixels CPU:	Qualcomm Snapdragon 801, 4 nhân, 2.3 GHz RAM	2 GB Hệ điều hành:	Android 4.3 (Jelly Bean) Camera chính:	13 MP, Quay phim 4K 2160p@30fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	128 GB Dung lượng pin:	2800 mAh', N'oppo', N'oppofind7a.jpg', N'Android', 15, CAST(N'2015-06-16 23:03:27.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo03', N'OPPO N1 Mini', N'8490000', N'Màn hình:	HD, 5.0", 720 x 1280 pixels CPU:	Qualcomm Snapdragon 400, 4 nhân, 1.6 GHz RAM	2 GB Hệ điều hành:	Android 4.3 (Jelly Bean) Camera chính:	13 MP, Quay phim FullHD 1080p@30fps Camera phụ:	13 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	2140mAh', N'oppo', N'oppon1mini.jpg', N'Android', 25, CAST(N'2015-06-16 23:04:28.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo04', N'OPPO R1', N'6990000', N'Màn hình:	HD, 5.0", 720 x 1280 pixels CPU:	Qualcomm Snapdragon 400, 4 nhân, 1.6 GHz RAM	1 GB Hệ điều hành:	Android 4.3 (Jelly Bean) Camera chính:	13 MP, Quay phim HD 720p@30fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	2410 mAh', N'oppo', N'oppor1.jpg', N'Android', 20, CAST(N'2015-06-16 23:05:45.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung01', N'Samsung Galaxy S6 32GB', N'16590000', N'Màn hình:	Quad HD, 5.1", 1440 x 2560 pixels CPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57 RAM	3GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	16 MP, Quay phim 4K 2160p@30fps Camera phụ:	5 MP Bộ nhớ trong:	32 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	2550mAh', N'samsung', N's6.jpg', N'Android', 3, CAST(N'2015-06-15 22:40:16.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung02', N'Samsung Galaxy S6 Edge 64GB', N'20990000', N'Màn hình:	Quad HD, 5.1", 1440 x 2560 pixels CPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57 RAM	3GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	16 MP, Quay phim 4K 2160p@30fps Camera phụ:	5 MP Bộ nhớ trong:	64 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	2600 mAh', N'samsung', N's6edge64.jpg', N'Android', 5, CAST(N'2015-06-15 22:40:53.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung03', N'Samsung Galaxy S6 Edge 32GB', N'19990000', N'Màn hình:	Quad HD, 5.1", 1440 x 2560 pixels CPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57 RAM	3GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	16 MP, Quay phim 4K 2160p@30fps Camera phụ:	5 MP Bộ nhớ trong:	32 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	2600 mAh', N'samsung', N's6edge.jpg', N'Android', 10, CAST(N'2015-06-15 22:41:46.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony01', N'Xperia Z3', N'19590000', N'Xperia Z3', N'sony', N'z3.jpg', N'Android', 1, CAST(N'2015-06-15 21:46:37.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony02', N'Sony Xperia Z3 Plus', N'19590000', N'Màn hình:	Full HD, 5.2", 1080 x 1920 pixels CPU:	Snapdragon 810, 8 nhân, Quad-core 1.5 GHz Cortex-A53 & Quad-core 2 GHz Cortex-A57 RAM	3GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	20.7 MP, Quay phim 4K 2160p@30fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	128 GB Dung lượng pin:	2930mAh', N'sony', N'z3plus.jpg', N'Android', 1, CAST(N'2015-06-15 22:34:31.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony03', N'Sony Xperia Z2', N'10990000', N'Màn hình:	Full HD, 5.2", 1080 x 1920 pixels CPU:	Qualcomm MSM8974AB, 4 nhân, 2.3 GHz RAM	3GB Hệ điều hành:	Android 4.4 (KitKat) Camera chính:	20.7 MP, Quay phim 4K 2160p@30fps Camera phụ:	2.2 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	64 GB Dung lượng pin:	3200 mAh', N'sony', N'z2.jpg', N'Android', 1, CAST(N'2015-06-15 22:37:30.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony04', N'Sony Xperia Z1', N'8990000', N'Màn hình:	Full HD, 5.0", 1080 x 1920 pixels CPU:	Qualcomm MSM8974, 4 nhân, 2.2 GHz RAM	2 GB Hệ điều hành:	Android 4.2.2 (Jelly Bean) Camera chính:	20.7 MP, Quay phim FullHD 1080p@30fps Camera phụ:	2.0 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	64 GB Dung lượng pin:	3000 mAh', N'sony', N'z1.jpg', N'Android', 2, CAST(N'2015-06-15 22:38:26.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony05', N'Sony Xperia M2', N'5990000', N'Màn hình:	qHD, 4.8", 540 x 960 pixels CPU:	Qualcomm Snapdragon 400, 4 nhân, 1.2 GHz RAM	1 GB Hệ điều hành:	Android 4.4 (KitKat) Camera chính:	8.0 MP, Quay phim FullHD 1080p@30fps Camera phụ:	1.1 MP Bộ nhớ trong:	8 GB Thẻ nhớ ngoài:	32 GB Dung lượng pin:	2300 mAh', N'sony', N'm2.jpg', N'Android', 10, CAST(N'2015-06-15 22:46:38.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony06', N'Sony Xperia M4 Aqua Dual', N'6490000', N'Màn hình:	HD, 5.0", 720 x 1280 pixels CPU:	Snapdragon 615, 8 nhân, Quad-core 1.5GHz + Quad-core 1.0GHz RAM	2 GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	13 MP, Quay phim FullHD 1080p@30fps Camera phụ:	5 MP Bộ nhớ trong:	8 GB Thẻ nhớ ngoài:	128 GB Dung lượng pin:	2400 mAh', N'sony', N'm4aqua.jpg', N'Android', 2, CAST(N'2015-06-15 22:50:06.000' AS DateTime))
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony07', N'Sony Xperia Z3 Compact', N'11990000', N'Màn hình:	HD, 4.6", 720 x 1280 pixels
CPU:	Qualcomm Snapdragon 801, 4 nhân, 2.5 GHz
RAM	2 GB
Hệ điều hành:	Android 4.4 (KitKat)
Camera chính:	20.7 MP, Quay phim 4K 2160p@30fps
Camera phụ:	2.2 MP
Bộ nhớ trong:	16 GB
Thẻ nhớ ngoài:	64 GB
Dung lượng pin:	2600 mAh', N'sony', N'z2compact.jpg', N'Android', 9, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony08', N'Sony Xperia C4 Dual', N'7190000', N'Màn hình:	Full HD, 5.5", 1080 x 1920 pixels CPU:	MTK 6752, 8 nhân, 1.7 GHz RAM	2 GB Hệ điều hành:	Android 5.0 (Lollipop) SIM:	2 SIM 2 sóng Camera:	13 MP, Quay phim FullHD 1080p@30fps Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	128 GB Dung lượng pin:	2600 mAh', N'sony', N'xperiac4dual.jpg', N'Android', 7, CAST(N'2015-06-16 22:59:19.000' AS DateTime))
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_DonDatHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonDatHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_SanPham]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_NguoiDung] FOREIGN KEY([NguoiDungCmt])
REFERENCES [dbo].[NguoiDung] ([NguoiDungName])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_NguoiDung]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_SanPham]
GO
ALTER TABLE [dbo].[Loai]  WITH CHECK ADD  CONSTRAINT [FK_Loai_ChungLoai] FOREIGN KEY([MaCL])
REFERENCES [dbo].[ChungLoai] ([MaCL])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Loai] CHECK CONSTRAINT [FK_Loai_ChungLoai]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_SanPham] FOREIGN KEY([LoaiSP])
REFERENCES [dbo].[Loai] ([MaLoai])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_SanPham]
GO
USE [master]
GO
ALTER DATABASE [Phone] SET  READ_WRITE 
GO
