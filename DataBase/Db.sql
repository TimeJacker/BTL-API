USE [BANXEDAPDIEN]
GO
/****** Object:  Table [dbo].[CaiDats]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaiDats](
	[Id] [int] NOT NULL,
	[Logo] [nvarchar](max) NULL,
	[GioLamViec] [nvarchar](50) NULL,
	[GiaoHang] [nvarchar](50) NULL,
	[HoanTien] [nvarchar](50) NULL,
	[SDTLienHe] [nvarchar](50) NULL,
	[EmailLienHe] [nvarchar](50) NULL,
	[FaceBook] [nvarchar](max) NULL,
	[GooglePlus] [nvarchar](max) NULL,
	[Twiter] [nvarchar](max) NULL,
	[YouTube] [nvarchar](max) NULL,
	[Instargram] [nvarchar](max) NULL,
	[GoogleMap] [nvarchar](max) NULL,
	[MatKhauMail] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhaps]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhaps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[GiaNhap] [decimal](18, 0) NULL,
	[TongTien] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDons]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDons](
	[MaChiTietHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[TongGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DetailBill] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSanPhams]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPhams](
	[MaChiTietSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NULL,
	[MaNhaSanXuat] [int] NULL,
	[MoTa] [nvarchar](350) NOT NULL,
	[ChiTiet] [nvarchar](max) NULL,
 CONSTRAINT [PK_DetailProducts] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietTaiKhoans]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTaiKhoans](
	[MaChitietTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [int] NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SoDienThoai] [nvarchar](11) NULL,
	[AnhDaiDien] [nvarchar](500) NULL,
 CONSTRAINT [PK_InformationAccounts] PRIMARY KEY CLUSTERED 
(
	[MaChitietTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenMucs]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenMucs](
	[MaChuyenMuc] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenMucCha] [int] NULL,
	[TenChuyenMuc] [nvarchar](50) NULL,
	[DacBiet] [bit] NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[MaChuyenMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DKBanTins]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DKBanTins](
	[Id] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSanXuats]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanXuats](
	[MaHang] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[LinkWeb] [nvarchar](max) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhaps]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhaps](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaNhaPhanPhoi] [int] NULL,
	[NgayTao] [datetime] NULL,
	[KieuThanhToan] [nvarchar](max) NULL,
	[MaTaiKhoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDons]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HoaDons](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [datetime] NULL,
	[NgayDuyet] [datetime] NULL,
	[TongGia] [decimal](18, 0) NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [bit] NOT NULL,
	[Diachi] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[DiaChiGiaoHang] [nvarchar](350) NULL,
	[ThoiGianGiaoHang] [datetime] NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHangs]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHangs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [bit] NOT NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTaiKhoans]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoans](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[MoTa] [nvarchar](250) NULL,
 CONSTRAINT [PK_TypeAccounts] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaPhanPhois]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaPhanPhois](
	[MaNhaPhanPhoi] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaPhanPhoi] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaPhanPhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuangCaos]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCaos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[LinkQuangCao] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SanPhams](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenMuc] [int] NULL,
	[TenSanPham] [nvarchar](150) NULL,
	[AnhDaiDien] [nvarchar](350) NULL,
	[Gia] [decimal](18, 0) NULL,
	[GiaGiam] [decimal](18, 0) NULL,
	[SoLuong] [int] NULL,
	[TrangThai] [bit] NULL,
	[LuotXem] [int] NULL,
	[DacBiet] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams_NhaPhanPhois]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams_NhaPhanPhois](
	[MaSanPham] [int] NOT NULL,
	[MaNhaPhanPhoi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaPhanPhoi] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[MaAnh] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](250) NULL,
	[TieuDe1] [nvarchar](250) NULL,
	[TieuDe2] [nvarchar](250) NULL,
	[MoTa1] [nvarchar](250) NULL,
	[MoTa2] [nvarchar](250) NULL,
	[MoTa3] [nvarchar](250) NULL,
	[MoTa4] [nvarchar](250) NULL,
	[LinkAnh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoans]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoans](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[LoaiTaiKhoan] [int] NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTucs]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTucs](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](250) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[MoTa] [nvarchar](250) NULL,
	[NgayTao] [datetime] NULL,
	[ChiTiet] [nvarchar](max) NULL,
	[LuotXem] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[HoaDons] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ((0)) FOR [GiaGiam]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ((0)) FOR [DacBiet]
GO
ALTER TABLE [dbo].[TinTucs] ADD  CONSTRAINT [DF_TinTucs_LuotXem]  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhaps_HoaDonNhaps] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDonNhaps] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps] CHECK CONSTRAINT [FK_ChiTietHoaDonNhaps_HoaDonNhaps]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhaps_SanPhams] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps] CHECK CONSTRAINT [FK_ChiTietHoaDonNhaps_SanPhams]
GO
ALTER TABLE [dbo].[ChiTietHoaDons]  WITH CHECK ADD  CONSTRAINT [FK_DetailBill_Bills] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDons] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDons] CHECK CONSTRAINT [FK_DetailBill_Bills]
GO
ALTER TABLE [dbo].[ChiTietHoaDons]  WITH CHECK ADD  CONSTRAINT [FK_DetailBill_Products] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDons] CHECK CONSTRAINT [FK_DetailBill_Products]
GO
ALTER TABLE [dbo].[ChiTietSanPhams]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPhams_NhaSanXuats] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[HangSanXuats] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietSanPhams] CHECK CONSTRAINT [FK_ChiTietSanPhams_NhaSanXuats]
GO
ALTER TABLE [dbo].[ChiTietSanPhams]  WITH CHECK ADD  CONSTRAINT [FK_DetailProducts_Products] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietSanPhams] CHECK CONSTRAINT [FK_DetailProducts_Products]
GO
ALTER TABLE [dbo].[ChiTietTaiKhoans]  WITH CHECK ADD  CONSTRAINT [FK_InformationAccounts_Accounts] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[ChiTietTaiKhoans] CHECK CONSTRAINT [FK_InformationAccounts_Accounts]
GO
ALTER TABLE [dbo].[HoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhaps_NhaPhanPhois] FOREIGN KEY([MaNhaPhanPhoi])
REFERENCES [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi])
GO
ALTER TABLE [dbo].[HoaDonNhaps] CHECK CONSTRAINT [FK_HoaDonNhaps_NhaPhanPhois]
GO
ALTER TABLE [dbo].[HoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhaps_TaiKhoans] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[HoaDonNhaps] CHECK CONSTRAINT [FK_HoaDonNhaps_TaiKhoans]
GO
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([MaChuyenMuc])
REFERENCES [dbo].[ChuyenMucs] ([MaChuyenMuc])
GO
ALTER TABLE [dbo].[SanPhams] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois]  WITH CHECK ADD  CONSTRAINT [FK_SanPhams_NhaPhanPhois_NhaPhanPhois] FOREIGN KEY([MaNhaPhanPhoi])
REFERENCES [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi])
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois] CHECK CONSTRAINT [FK_SanPhams_NhaPhanPhois_NhaPhanPhois]
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois]  WITH CHECK ADD  CONSTRAINT [FK_SanPhams_NhaPhanPhois_SanPhams] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois] CHECK CONSTRAINT [FK_SanPhams_NhaPhanPhois_SanPhams]
GO
ALTER TABLE [dbo].[TaiKhoans]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_TypeAccounts] FOREIGN KEY([LoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoans] ([MaLoai])
GO
ALTER TABLE [dbo].[TaiKhoans] CHECK CONSTRAINT [FK_Accounts_TypeAccounts]
GO
/****** Object:  StoredProcedure [dbo].[sp_hoa_don_update]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------THỦ TỤC HÓA ĐƠN----------------------------------------------------------------------------
--Sửa hóa đơn
CREATE PROCEDURE [dbo].[sp_hoa_don_update]
(	
	@MaHoaDon INT, 
	@TenKH NVARCHAR(50),
    @Diachi NVARCHAR(250),
    @GioiTinh NVARCHAR(10),
	@NgayTao DATETIME,
	@NgayDuyet DATETIME,
	@TongGia DECIMAL,
	@Email NVARCHAR(50),
	@SDT NVARCHAR(50),
	@DiaChiGiaoHang NVARCHAR(350),
	@ThoiGianGiaoHang DATETIME,
    @TrangThai BIT,
    @list_json_chitiethoadon NVARCHAR(MAX)
)
AS
    BEGIN
		UPDATE HoaDons
		SET
			TenKH  = @TenKH ,
			Diachi = @Diachi,
			GioiTinh = @GioiTinh,
			NgayTao = @NgayTao,
			NgayDuyet = @NgayDuyet,
			TongGia = @TongGia,
			Email = @Email,
			SDT = @SDT,
			DiaChiGiaoHang = @DiaChiGiaoHang,
			ThoiGianGiaoHang = @ThoiGianGiaoHang,
			TrangThai = @TrangThai
		WHERE MaHoaDon = @MaHoaDon;
		
		IF(@list_json_chitiethoadon IS NOT NULL) 
		BEGIN
			 -- Insert data to temp table 
		   SELECT
			  JSON_VALUE(p.value, '$.maChiTietHoaDon') as maChiTietHoaDon,
			  JSON_VALUE(p.value, '$.maHoaDon') as maHoaDon,
			  JSON_VALUE(p.value, '$.maSanPham') as maSanPham,
			  JSON_VALUE(p.value, '$.soLuong') as soLuong,
			  JSON_VALUE(p.value, '$.tongGia') as tongGia,
			  JSON_VALUE(p.value, '$.status') AS status 
			  INTO #Results 
		   FROM OPENJSON(@list_json_chitiethoadon) AS p;
		 
		 -- Insert data to table with STATUS = 1;
			INSERT INTO ChiTietHoaDons (MaSanPham, 
						  MaHoaDon,
                          SoLuong, 
                          TongGia ) 
			   SELECT
				  #Results.maSanPham,
				  @MaHoaDon,
				  #Results.soLuong,
				  #Results.tongGia			 
			   FROM  #Results 
			   WHERE #Results.status = '1' 
			
			-- Update data to table with STATUS = 2
			  UPDATE ChiTietHoaDons 
			  SET
				 SoLuong = #Results.soLuong,
				 TongGia = #Results.tongGia
			  FROM #Results 
			  WHERE  ChiTietHoaDons.maChiTietHoaDon = #Results.maChiTietHoaDon AND #Results.status = '2';
			
			-- Delete data to table with STATUS = 3
			DELETE C
			FROM ChiTietHoaDons C
			INNER JOIN #Results R
				ON C.maChiTietHoaDon=R.maChiTietHoaDon
			WHERE R.status = '3';
			DROP TABLE #Results;
		END;
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_hoadon_create]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Tạo hóa đơn
CREATE PROCEDURE [dbo].[sp_hoadon_create]
(
    @TenKH NVARCHAR(50),
    @Diachi NVARCHAR(250),
    @GioiTinh NVARCHAR(10),
	@NgayTao DATETIME,
	@NgayDuyet DATETIME,
	@TongGia DECIMAL,
	@Email NVARCHAR(50),
	@SDT NVARCHAR(50),
	@DiaChiGiaoHang NVARCHAR(350),
	@ThoiGianGiaoHang DATETIME,
    @TrangThai BIT,
    @list_json_chitiethoadon NVARCHAR(MAX)
	)
AS
BEGIN
    BEGIN TRY
        BEGIN
            DECLARE @MaHoaDon INT;

            -- Thêm hóa đơn vào bảng HoaDons
            INSERT INTO HoaDons (TenKH, Diachi, GioiTinh, NgayTao, NgayDuyet, TongGia, Email, SDT, DiaChiGiaoHang, ThoiGianGiaoHang, TrangThai)
            VALUES (@TenKH, @Diachi, @GioiTinh, @NgayTao, @NgayDuyet, @TongGia, @Email, @SDT, @DiaChiGiaoHang, @ThoiGianGiaoHang, @TrangThai);

            -- Lấy mã hóa đơn vừa tạo
            SET @MaHoaDon = SCOPE_IDENTITY();

            -- Thêm chi tiết hóa đơn vào bảng ChiTietHoaDons nếu có dữ liệu chi tiết
            IF (@list_json_chitiethoadon IS NOT NULL)
            BEGIN
                INSERT INTO ChiTietHoaDons (MaSanPham, MaHoaDon, SoLuong, TongGia)
                SELECT JSON_VALUE(p.value, '$.maSanPham'), @MaHoaDon, JSON_VALUE(p.value, '$.soLuong'), JSON_VALUE(p.value, '$.tongGia')
                FROM OPENJSON(@list_json_chitiethoadon) AS p;
            END;
        END;
    END TRY
    BEGIN CATCH
        -- Ghi log hoặc xử lý lỗi ở đây
        SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH;
END;
GO
--Xóa hóa đơn
CREATE PROCEDURE [dbo].[sp_hoadon_delete]
    @MaHoaDon INT
AS
BEGIN
            DELETE FROM ChiTietHoaDons WHERE MaHoaDon = @MaHoaDon;
            DELETE FROM HoaDons WHERE MaHoaDon = @MaHoaDon;
        END
GO
/****** Object:  StoredProcedure [dbo].[sp_hoadon_get_by_id]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get hóa đơn by id
CREATE PROCEDURE [dbo].[sp_hoadon_get_by_id](@MaHoaDon        int)
AS
    BEGIN
        SELECT h.*, 
        (
            SELECT c.*
            FROM ChiTietHoaDons AS c
            WHERE h.MaHoaDon = c.MaHoaDon FOR JSON PATH
        ) AS list_json_chitiethoadon
        FROM HoaDons AS h
        WHERE  h.MaHoaDon = @MaHoaDon;
    END;
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Tìm kiếm hóa đơn
SELECT *FROM dbo.ChiTietHoaDons
SELECT *FROM dbo.HoaDons
ALTER PROCEDURE [dbo].[sp_search_hoadon] (
									   @page_index  INT, 
                                       @page_size   INT,
									   @ten_khach Nvarchar(50),
									   @fr_NgayTao datetime, 
									   @to_NgayTao datetime
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.NgayTao ASC)) AS RowNumber, 
                              s.MaSanPham,
							  s.TenSanPham,
							  c.SoLuong,
							  c.TongGia,
							  h.MaHoaDon,
							  h.NgayTao,
							  h.TenKH,
							  h.GioiTinh,
							  h.Email,
							  h.SDT,
							  h.DiaChiGiaoHang,
							  h.Diachi
                        INTO #Results1
                        FROM HoaDons  h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
					    WHERE  (@ten_khach = '' Or h.TenKH like N'%'+@ten_khach+'%') and						
						((@fr_NgayTao IS NULL
                        AND @to_NgayTao IS NULL)
                        OR (@fr_NgayTao IS NOT NULL
                            AND @to_NgayTao IS NULL
                            AND h.NgayTao >= @fr_NgayTao)
                        OR (@fr_NgayTao IS NULL
                            AND @to_NgayTao IS NOT NULL
                            AND h.NgayTao <= @to_NgayTao)
                        OR (h.NgayTao BETWEEN @fr_NgayTao AND @to_NgayTao))              
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.NgayTao ASC)) AS RowNumber, 
                              s.MaSanPham,
							  s.TenSanPham,
							  c.SoLuong,
							  c.TongGia,
							  h.MaHoaDon,
							  h.NgayTao,
							  h.TenKH,
							  h.GioiTinh,
							  h.Email,
							  h.SDT,
							  h.DiaChiGiaoHang,
							  h.Diachi
                        INTO #Results2
                        FROM HoaDons  h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
					    WHERE  (@ten_khach = '' Or h.TenKH like N'%'+@ten_khach+'%') and						
						((@fr_NgayTao IS NULL
                        AND @to_NgayTao IS NULL)
                        OR (@fr_NgayTao IS NOT NULL
                            AND @to_NgayTao IS NULL
                            AND h.NgayTao >= @fr_NgayTao)
                        OR (@fr_NgayTao IS NULL
						AND @to_NgayTao IS NOT NULL
                            AND h.NgayTao <= @to_NgayTao)
                        OR (h.NgayTao BETWEEN @fr_NgayTao AND @to_NgayTao))              
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
-------------------------------------THỦ TỤC KHÁCH HÀNG----------------------------------------------------------------------------
SELECT * FROM dbo.KhachHangs
CREATE PROCEDURE [dbo].[sp_khach_update]
(	
@MaNhaPhanPhoi INT,
@TenNhaPhanPhoi nvarchar(250),
@DiaChi nvarchar(MAX),
@SoDienThoai nvarchar(50),
@Fax nvarchar(50),
@MoTa nvarchar(MAX)
)
AS
    BEGIN
		UPDATE dbo.NhaPhanPhois
		SET
			TenNhaPhanPhoi  = @TenNhaPhanPhoi ,
			DiaChi = @DiaChi,
			SoDienThoai = @SoDienThoai,
			Fax = @Fax,
			MoTa = @MoTa

		WHERE MaNhaPhanPhoi = @MaNhaPhanPhoi;
    END;
GO
--Tạo khách hàng 
CREATE PROCEDURE [dbo].[sp_khach_create](
@TenKH nvarchar(50),
@GioiTinh NVARCHAR(10),
@DiaChi nvarchar(250),
@SDT nvarchar(50),
@Email nvarchar(250)
)
AS
    BEGIN
       insert into KhachHangs(TenKH,GioiTinh,DiaChi,SDT,Email)
	   values(@TenKH,@GioiTinh,@DiaChi,@SDT,@Email);
    END;
GO

/****** Object:  StoredProcedure [dbo].[sp_khach_get_by_id]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get khach hang by id
CREATE PROCEDURE [dbo].[sp_khach_get_by_id](@id int)
AS
    BEGIN
      SELECT  *
      FROM dbo.KhachHangs
      where id= @id;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_khach_search]    Script Date: 9/3/2023 8:39:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Tìm kiếm khách hàng
CREATE PROCEDURE [dbo].[sp_khach_search] (@page_index  INT, 
                                       @page_size   INT,
									   @ten_khach Nvarchar(50),
									   @dia_chi Nvarchar(250)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenKH ASC)) AS RowNumber, 
                              k.Id,
							  k.TenKH,	
							  k.SDT,
							  k.GioiTinh,
							  k.Email,
							  k.DiaChi
                        INTO #Results1
                        FROM KhachHangs AS k
					    WHERE  (@ten_khach = '' Or k.TenKH like N'%'+@ten_khach+'%') and						
						(@dia_chi = '' Or k.DiaChi like N'%'+@dia_chi+'%');                   
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenKH ASC)) AS RowNumber, 
                              k.Id,
							  k.TenKH,	
							  k.SDT,
							  k.GioiTinh,
							  k.Email,
							  k.DiaChi
                        INTO #Results2
                        FROM KhachHangs AS k
					    WHERE  (@ten_khach = '' Or k.TenKH like N'%'+@ten_khach+'%') and						
						(@dia_chi = '' Or k.DiaChi like N'%'+@dia_chi+'%');                   
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;                        
                        DROP TABLE #Results1; 
        END;
    END;
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Xóa khách hàng
CREATE PROC sp_xoakhachhang
@id NVARCHAR(10)
AS
BEGIN
	DELETE FROM dbo.KhachHangs WHERE Id = @id
END
GO
-------------------------------------THỦ TỤC LOGIN----------------------------------------------------------------------------
--Đăng nhập
CREATE PROCEDURE [dbo].[sp_login]
    @taikhoan char(50),
	@matkhau char(50)
as
begin
	select * from dbo.TaiKhoans
	where TenTaiKhoan = @taikhoan
	and MatKhau =  @matkhau
END
GO

-------------------------------------THỦ TỤC SẢN PHẨM----------------------------------------------------------------------------
SELECT * FROM	dbo.SanPhams
--Tạo sản phẩm
CREATE PROCEDURE [dbo].[sp_sanpham_create](
@MaSanPham int,
@MaChuyenMuc int,
@TenSanPham nvarchar(150),
@AnhDaiDien nvarchar(350),
@Gia decimal(18, 0),
@GiaGiam decimal(18, 0),
@SoLuong int,
@TrangThai int,
@LuotXem int,
@DacBiet bit
)
AS
    BEGIN
       insert into dbo.SanPhams(MaSanPham,MaChuyenMuc,TenSanPham,AnhDaiDien,Gia,GiaGiam,SoLuong,TrangThai,LuotXem,DacBiet)
	   values(@MaSanPham,@MaChuyenMuc,@TenSanPham,@AnhDaiDien,@Gia,@GiaGiam,@SoLuong,@TrangThai,@LuotXem,@DacBiet);
    END;
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get sản phẩm by id
CREATE PROCEDURE [dbo].[sp_sanpham_get_by_id](@id int)
AS
    BEGIN
      SELECT  *
      FROM dbo.SanPhams
      where MaSanPham= @id;
    END;
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Tìm kiếm sản phẩm
CREATE PROCEDURE [dbo].[sp_sanpham_search] (@page_index  INT, 
                                       @page_size   INT,
									   @ten_sp Nvarchar(50)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY k.TenSanPham ASC)) AS RowNumber, 
                              k.MaSanPham,
							  k.MaChuyenMuc,	
							  k.TenSanPham,
							  k.AnhDaiDien,
							  k.Gia,
							  k.GiaGiam,
							  k.SoLuong,
							  k.TrangThai,
							  k.LuotXem,
							  k.DacBiet
                        INTO #Results1
                        FROM dbo.SanPhams AS k
					    WHERE  (@ten_sp = '' Or k.TenSanPham like N'%'+@ten_sp+'%');					
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY k.TenSanPham ASC)) AS RowNumber, 
                              k.MaSanPham,
							  k.MaChuyenMuc,	
							  k.TenSanPham,
							  k.AnhDaiDien,
							  k.Gia,
							  k.GiaGiam,
							  k.SoLuong,
							  k.TrangThai,
							  k.LuotXem,
							  k.DacBiet
                        INTO #Results2
                        FROM dbo.SanPhams AS k
					    WHERE  (@ten_sp = '' Or k.TenSanPham like N'%'+@ten_sp+'%');				
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;                        
                        DROP TABLE #Results1; 
        END;
    END;
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Xóa sản phẩm 
CREATE PROC sp_xoasanpham
@id NVARCHAR(10)
AS
BEGIN
	DELETE FROM dbo.SanPhams WHERE MaSanPham = @id
END
GO
-------------------------------------THỦ TỤC NHÀ PHÂN PHỐI----------------------------------------------------------------------------
--Tạo nhà phân phối
CREATE PROCEDURE [dbo].[sp_nhapp_create](
@MaNhaPhanPhoi int,
@TenNhaPhanPhoi nvarchar(250),
@DiaChi nvarchar(MAX),
@SoDienThoai nvarchar(50),
@Fax nvarchar(50),
@MoTa nvarchar(MAX)
)
AS
    BEGIN
       insert INTO NhaPhanPhois(MaNhaPhanPhoi,TenNhaPhanPhoi,DiaChi,SoDienThoai,Fax,MoTa)
	   values(@MaNhaPhanPhoi,@TenNhaPhanPhoi,@DiaChi,@SoDienThoai,@Fax,@MoTa);
    END;
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get nhà phân phối by id
CREATE PROCEDURE [dbo].[sp_nhapp_get_by_id](@id int)
AS
    BEGIN
      SELECT  *
      FROM dbo.NhaPhanPhois
      where MaNhaPhanPhoi= @id;
    END;
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Tìm kiếm nhà phân phối
CREATE PROCEDURE [dbo].[sp_nhapp_search] (@page_index  INT, 
                                       @page_size   INT,
									   @ten_nhapp Nvarchar(50)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY k.TenNhaPhanPhoi ASC)) AS RowNumber, 
							  k.MaNhaPhanPhoi,	
							  k.TenNhaPhanPhoi,
							  k.DiaChi,
							  k.SoDienThoai,
							  k.Fax,
							  k.MoTa
							  
                        INTO #Results1
                        FROM dbo.NhaPhanPhois AS k
					    WHERE  (@ten_nhapp = '' Or k.TenNhaPhanPhoi like N'%'+@ten_nhapp+'%');					
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY k.TenNhaPhanPhoi ASC)) AS RowNumber, 
                              k.MaNhaPhanPhoi,	
							  k.TenNhaPhanPhoi,
							  k.DiaChi,
							  k.SoDienThoai,
							  k.Fax,
							  k.MoTa
                        INTO #Results2
                        FROM dbo.NhaPhanPhois AS k
					    WHERE  (@ten_nhapp = '' Or k.TenNhaPhanPhoi like N'%'+@ten_nhapp+'%');				
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;                        
                        DROP TABLE #Results1; 
        END;
    END;
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- sửa nhà phân phối
CREATE PROCEDURE [dbo].[sp_nha_pp_update]
(	
@MaNhaPhanPhoi INT,
@TenNhaPhanPhoi nvarchar(250),
@DiaChi nvarchar(MAX),
@SoDienThoai nvarchar(50),
@Fax nvarchar(50),
@MoTa nvarchar(MAX)
)
AS
    BEGIN
		UPDATE dbo.NhaPhanPhois
		SET
			TenNhaPhanPhoi  = @TenNhaPhanPhoi ,
			DiaChi = @DiaChi,
			SoDienThoai = @SoDienThoai,
			Fax = @Fax,
			MoTa = @MoTa

		WHERE MaNhaPhanPhoi = @MaNhaPhanPhoi;
    END;
GO
--Xóa nhà phân phối 
CREATE PROC sp_xoanhaphanphoi
@id INT
AS
BEGIN
	DELETE FROM dbo.NhaPhanPhois WHERE MaNhaPhanPhoi = @id
END
GO