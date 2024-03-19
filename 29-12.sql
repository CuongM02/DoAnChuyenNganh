USE [ColoShop]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/29/2023 8:39:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[TaiKhoanAdmin] [varchar](30) NOT NULL,
	[MatKhau] [varchar](30) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoanAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 12/29/2023 8:39:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](255) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayBL] [date] NULL,
	[MaKH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC,
	[MaKH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoSuuTap]    Script Date: 12/29/2023 8:39:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoSuuTap](
	[MaBST] [int] IDENTITY(1,1) NOT NULL,
	[TenBST] [nvarchar](50) NULL,
 CONSTRAINT [PK_BosuuTap] PRIMARY KEY CLUSTERED 
(
	[MaBST] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/29/2023 8:39:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[MaS] [int] NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[DonGia] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC,
	[MaS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favourite]    Script Date: 12/29/2023 8:39:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favourite](
	[MaYT] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_Favourite] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaYT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 12/29/2023 8:39:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[MaHinhAnh] [int] IDENTITY(1,1) NOT NULL,
	[TenHinhAnh] [nvarchar](200) NULL,
	[MaSP] [int] NULL,
 CONSTRAINT [PK_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[MaHinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/29/2023 8:39:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayLapHD] [date] NULL,
	[MaKH] [int] NULL,
	[DiaChiGiaoHang] [nvarchar](255) NULL,
	[TrangThai] [bit] NULL,
	[GhiChu] [nvarchar](255) NULL,
	[DaThanhToan] [bit] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/29/2023 8:39:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [int] NOT NULL,
	[DiaChi] [text] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nvarchar](11) NOT NULL,
	[TrangThai] [bit] NULL,
	[ActivationCode] [uniqueidentifier] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 12/29/2023 8:39:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaL] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[MaGioiTinh] [int] NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/29/2023 8:39:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](255) NULL,
	[GiaKhuyenMai] [bigint] NULL,
	[GiaBan] [bigint] NULL,
	[MaL] [int] NULL,
	[MaBST] [int] NULL,
	[SoLuong] [int] NULL,
	[ThongTin] [nvarchar](1000) NULL,
	[GioiTinh] [int] NULL,
	[ngayNhapHang] [date] NULL,
	[AnhBia] [nvarchar](255) NULL,
	[LuotMua] [int] NULL,
	[LuotXem] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhamSize]    Script Date: 12/29/2023 8:39:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamSize](
	[MaSP] [int] NOT NULL,
	[MaS] [int] NOT NULL,
 CONSTRAINT [PK_SanPhamSize] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 12/29/2023 8:39:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[MaS] [int] IDENTITY(1,1) NOT NULL,
	[TenS] [nchar](3) NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[MaS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([TaiKhoanAdmin], [MatKhau], [HoTen], [Email]) VALUES (N'admin', N'admin', N'Nguyễn Mạnh Cường', N'cuongbg022002@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([MaBL], [TieuDe], [NoiDung], [NgayBL], [MaKH], [MaSP], [TrangThai]) VALUES (1, N'Đánh giá sản phẩm', N'sản phẩm tốt', CAST(N'2023-12-21' AS Date), 1, 66, NULL)
INSERT [dbo].[BinhLuan] ([MaBL], [TieuDe], [NoiDung], [NgayBL], [MaKH], [MaSP], [TrangThai]) VALUES (2, N'Đánh giá sản phẩm', N'asdas', CAST(N'2023-12-21' AS Date), 1, 43, NULL)
INSERT [dbo].[BinhLuan] ([MaBL], [TieuDe], [NoiDung], [NgayBL], [MaKH], [MaSP], [TrangThai]) VALUES (3, N'Đánh giá sản phẩm', N'sản phẩm tốt', CAST(N'2023-12-21' AS Date), 1, 43, NULL)
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
GO
SET IDENTITY_INSERT [dbo].[BoSuuTap] ON 

INSERT [dbo].[BoSuuTap] ([MaBST], [TenBST]) VALUES (1, N'NONE')
INSERT [dbo].[BoSuuTap] ([MaBST], [TenBST]) VALUES (2, N'Xuân hè')
INSERT [dbo].[BoSuuTap] ([MaBST], [TenBST]) VALUES (3, N'Thu đông')
SET IDENTITY_INSERT [dbo].[BoSuuTap] OFF
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [MaS], [TenSP], [DonGia], [SoLuong]) VALUES (1, 68, 2, N'Woman Winter Dress Clothing', 300000, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [MaS], [TenSP], [DonGia], [SoLuong]) VALUES (2, 69, 2, N'69 - T-shirt Dress Skirt Clothing', 200000, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [MaS], [TenSP], [DonGia], [SoLuong]) VALUES (3, 45, 2, N'Suit Formal wear Skirt Clothing Dress', 400000, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [MaS], [TenSP], [DonGia], [SoLuong]) VALUES (4, 47, 2, N'47 - Polo shirt T-shirt White Clothing Top', 250000, 1)
GO
SET IDENTITY_INSERT [dbo].[HinhAnh] ON 

INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (22, N'images/hinhanh/Hoodie T-shirt Tracksuit Bluza Jacket.png', 43)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (23, N'images/hinhanh/Little Black Dress.png', 62)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (24, N'images/hinhanh/Suit Tuxedo Blazer Tailor Jacket.png', 44)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (25, N'images/hinhanh/Suit Formal wear Skirt Clothing Dress.png', 45)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (26, N'images/hinhanh/T-shirt Dress Skirt Clothing.png', 69)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (27, N'images/hinhanh/Polo shirt T-shirt White Clothing Top.png', 47)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (28, N'images/hinhanh/Hoodie Green Bluza Zipper.png', 63)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (29, N'images/hinhanh/Long-sleeved T-shirt Raglan.png', 49)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (30, N'images/hinhanh/T-shirt Hoodie Clothing Crew neck.png', 50)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (31, N'images/hinhanh/Hoodie T-shirt Tracksuit Bluza Fruit of the Loom.png', 64)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (32, N'images/hinhanh/Fur clothing Jacket Coat Winter clothing.png', 65)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (33, N'images/hinhanh/Clothing Skirt Red.png', 66)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (34, N'images/hinhanh/Hoodie T-shirt Clothing Bluza Zipper.png', 54)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (35, N'images/hinhanh/Hoodie T-shirt Clothing Sweater.png', 67)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (36, N'images/hinhanh/aokhoacnama06.jpg', 56)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (37, N'images/hinhanh/Handbag Wallet Chanel.png', 57)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (38, N'images/hinhanh/Handbag Messenger bag Tote bag Leather.png', 58)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (39, N'images/hinhanh/Handbag Designer Woman.png', 59)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (40, N'images/hinhanh/Women''s handbags.png', 60)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (41, N'images/hinhanh/Baseball cap Hat.png', 61)
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [TenHinhAnh], [MaSP]) VALUES (42, N'images/hinhanh/Woman Winter Dress Clothing.png', 68)
SET IDENTITY_INSERT [dbo].[HinhAnh] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [NgayLapHD], [MaKH], [DiaChiGiaoHang], [TrangThai], [GhiChu], [DaThanhToan]) VALUES (1, CAST(N'2023-12-13' AS Date), 1, N'TP.HCM', 1, NULL, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLapHD], [MaKH], [DiaChiGiaoHang], [TrangThai], [GhiChu], [DaThanhToan]) VALUES (2, CAST(N'2023-12-13' AS Date), 1, N'TP.HCM', 0, N'', 0)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLapHD], [MaKH], [DiaChiGiaoHang], [TrangThai], [GhiChu], [DaThanhToan]) VALUES (3, CAST(N'2023-12-13' AS Date), 1, N'TP.HCM', NULL, NULL, 1)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLapHD], [MaKH], [DiaChiGiaoHang], [TrangThai], [GhiChu], [DaThanhToan]) VALUES (4, CAST(N'2023-12-13' AS Date), 1, N'TP.HCM', 0, N'', 0)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [DiaChi], [Email], [SoDienThoai], [TrangThai], [ActivationCode]) VALUES (1, N'cuong1602', N'cuong1602', N'Nguyễn Mạnh Cường', 0, N'TP.HCM', N'cuong16022002@gmail.com', N'0392376658', 1, N'f9631478-4336-4ec0-b417-acef04328697')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (1, N'men', 1)
INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (2, N'women', 0)
INSERT [dbo].[LoaiSanPham] ([MaL], [TenLoai], [MaGioiTinh]) VALUES (3, N'accessories', 0)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (43, N'Hoodie T-shirt Tracksuit Bluza Jacket', 250000, 300000, 1, 3, 5, N'Hàng mới về cả nhà yêu ơi', 1, CAST(N'2023-11-26' AS Date), N'images/anhbia/Hoodie T-shirt Tracksuit Bluza Jacket.png', 1, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (44, N'Suit Tuxedo Blazer Tailor Jacket', 350000, 400000, 2, 1, 5, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', 0, CAST(N'2023-11-26' AS Date), N'images/anhbia/Suit Tuxedo Blazer Tailor Jacket.png', 5, 20)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (45, N'Suit Formal wear Skirt Clothing Dress', 400000, 450000, 2, 1, 5, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', 0, CAST(N'2023-11-26' AS Date), N'images/anhbia/Suit Formal wear Skirt Clothing Dress.png', 7, 19)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (47, N'Polo shirt T-shirt White Clothing Top', 250000, 300000, 1, 1, 5, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', 1, CAST(N'2023-11-26' AS Date), N'images/anhbia/Polo shirt T-shirt White Clothing Top.png', 2, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (49, N'Long-sleeved T-shirt Raglan', 200000, 250000, 1, 1, 5, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', 1, CAST(N'2023-11-25' AS Date), N'images/anhbia/Long-sleeved T-shirt Raglan.png', 10, 45)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (50, N'T-shirt Hoodie Clothing Crew neck', 200000, 300000, 1, 1, 10, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', 1, CAST(N'2023-11-26' AS Date), N'images/anhbia/T-shirt Hoodie Clothing Crew neck.png', 12, 57)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (54, N'Hoodie T-shirt Clothing Bluza Zipper', 250000, 350000, 1, 1, 10, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', 1, CAST(N'2023-11-26' AS Date), N'images/anhbia/Hoodie T-shirt Clothing Bluza Zipper.png', 12, 50)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (56, N'Áo khoác bò', 150000, 200000, 1, 1, 3, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', 1, CAST(N'2023-11-27' AS Date), N'images/anhbia/aokhoacnama06.jpg', 6, 20)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (57, N'Handbag Wallet Chanel', 250000, 300000, 3, 1, 5, N'Hàng New', 0, CAST(N'2023-12-02' AS Date), N'images/anhbia/Handbag Wallet Chanel.png', 1, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (58, N'Handbag Messenger bag Tote bag Leather', 300000, 350000, 3, 1, 5, N'Hàng mới về', 0, CAST(N'2023-12-02' AS Date), N'images/anhbia/Handbag Messenger bag Tote bag Leather.png', 6, 11)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (59, N'Handbag Designer Woman', 350000, 400000, 3, 1, 5, N'Hàng cao cấp', 0, CAST(N'2023-12-02' AS Date), N'images/anhbia/Handbag Designer Woman.png', 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (60, N'Women''s handbags', 400000, 450000, 3, 1, 5, N'Hàng tiêu chuẩn ', 0, CAST(N'2023-12-02' AS Date), N'images/anhbia/Women''s handbags.png', 3, 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (61, N'Baseball cap Hat', 200000, 250000, 3, 1, 5, N'Mũ mới về bao đẹp ạ', 0, CAST(N'2023-12-02' AS Date), N'images/anhbia/Baseball cap Hat.png', 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (62, N'Little Black Dress', 350000, 400000, 2, 2, 5, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', 0, CAST(N'2023-11-24' AS Date), N'images/anhbia/Little Black Dress.png', 7, 30)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (63, N'Hoodie Green Bluza Zipper', 300000, 350000, 1, 3, 5, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', 1, CAST(N'2023-11-26' AS Date), N'images/anhbia/Hoodie Green Bluza Zipper.png', 5, 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (64, N'Hoodie T-shirt Tracksuit Bluza Fruit of the Loom', 300000, 350000, 1, 3, 5, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', 1, CAST(N'2023-11-26' AS Date), N'images/anhbia/Hoodie T-shirt Tracksuit Bluza Fruit of the Loom.png', 1, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (65, N'Fur clothing Jacket Coat Winter clothing', 250000, 350000, 2, 3, 5, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', 0, CAST(N'2023-11-25' AS Date), N'images/anhbia/Fur clothing Jacket Coat Winter clothing.png', 1, 4)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (66, N'Clothing Skirt Red', 250000, 350000, 2, 2, 5, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', 0, CAST(N'2023-11-26' AS Date), N'images/anhbia/Clothing Skirt Red.png', 6, 30)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (67, N'Hoodie T-shirt Clothing Sweater', 300000, 350000, 1, 3, 10, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', 1, CAST(N'2023-11-26' AS Date), N'images/anhbia/Hoodie T-shirt Clothing Sweater.png', 9, 20)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (68, N'Woman Winter Dress Clothing', 300000, 350000, 2, 3, 5, N'Hàng nội địa Trung, chuẩn chất lượng cao', 0, CAST(N'2023-12-04' AS Date), N'images/anhbia/Woman Winter Dress Clothing.png', 2, 21)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaKhuyenMai], [GiaBan], [MaL], [MaBST], [SoLuong], [ThongTin], [GioiTinh], [ngayNhapHang], [AnhBia], [LuotMua], [LuotXem]) VALUES (69, N'T-shirt Dress Skirt Clothing', 200000, 300000, 2, 2, 5, N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', 0, CAST(N'2023-11-26' AS Date), N'images/anhbia/T-shirt Dress Skirt Clothing.png', 1, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (43, 1)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (43, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (43, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (43, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (43, 5)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (44, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (44, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (45, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (45, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (45, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (47, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (47, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (47, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (49, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (49, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (49, 5)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (50, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (50, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (50, 5)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (54, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (54, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (54, 5)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (56, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (56, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (57, 6)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (58, 6)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (59, 6)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (60, 6)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (61, 6)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (62, 1)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (62, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (62, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (62, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (63, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (63, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (63, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (64, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (64, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (64, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (65, 1)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (65, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (65, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (65, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (66, 1)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (66, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (66, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (66, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (67, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (67, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (67, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (68, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (68, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (68, 4)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (69, 2)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (69, 3)
INSERT [dbo].[SanPhamSize] ([MaSP], [MaS]) VALUES (69, 4)
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([MaS], [TenS]) VALUES (1, N'S  ')
INSERT [dbo].[Size] ([MaS], [TenS]) VALUES (2, N'M  ')
INSERT [dbo].[Size] ([MaS], [TenS]) VALUES (3, N'L  ')
INSERT [dbo].[Size] ([MaS], [TenS]) VALUES (4, N'XL ')
INSERT [dbo].[Size] ([MaS], [TenS]) VALUES (5, N'XXL')
INSERT [dbo].[Size] ([MaS], [TenS]) VALUES (6, N'Nah')
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [Fk_KhachHangBL] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [Fk_KhachHangBL]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [Fk_SanPhamBL] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [Fk_SanPhamBL]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Size] FOREIGN KEY([MaS])
REFERENCES [dbo].[Size] ([MaS])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Size]
GO
ALTER TABLE [dbo].[Favourite]  WITH CHECK ADD  CONSTRAINT [FK_Favourite_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[Favourite] CHECK CONSTRAINT [FK_Favourite_SanPham]
GO
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamHA] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HinhAnh] CHECK CONSTRAINT [FK_SanPhamHA]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [Fk_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [Fk_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_BoSuuTap] FOREIGN KEY([MaBST])
REFERENCES [dbo].[BoSuuTap] ([MaBST])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_BoSuuTap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSanPham] FOREIGN KEY([MaL])
REFERENCES [dbo].[LoaiSanPham] ([MaL])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPhamSize]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamSize_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[SanPhamSize] CHECK CONSTRAINT [FK_SanPhamSize_SanPham]
GO
ALTER TABLE [dbo].[SanPhamSize]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamSize_Size] FOREIGN KEY([MaS])
REFERENCES [dbo].[Size] ([MaS])
GO
ALTER TABLE [dbo].[SanPhamSize] CHECK CONSTRAINT [FK_SanPhamSize_Size]
GO
