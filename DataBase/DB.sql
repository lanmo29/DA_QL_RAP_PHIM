USE [Ql_rap_phim]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 10/26/2024 8:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[MaPhim] [varchar](50) NOT NULL,
	[TenPhim] [nvarchar](255) NULL,
	[LoaiPhim] [nvarchar](100) NULL,
	[NgayChieu] [date] NULL,
	[ThoiLuong] [int] NULL,
 CONSTRAINT [PK__Phim__4AC03DE3AE41E019] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLyBanHang]    Script Date: 10/26/2024 8:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLyBanHang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [varchar](50) NOT NULL,
	[MaVe] [varchar](50) NOT NULL,
	[MaDiemTL] [varchar](50) NULL,
 CONSTRAINT [PK__QuanLyBa__C557860A0765074B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLyTT]    Script Date: 10/26/2024 8:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLyTT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaQuanLy] [varchar](50) NOT NULL,
	[MaNV] [varchar](50) NOT NULL,
 CONSTRAINT [PK__QuanLyTT__98CBB7889E3DD9CA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinNV]    Script Date: 10/26/2024 8:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinNV](
	[MaNV] [varchar](50) NOT NULL,
	[NgaySinhNV] [date] NULL,
	[DiaChiNV] [nvarchar](255) NULL,
	[DtNV] [nvarchar](20) NULL,
 CONSTRAINT [PK__ThongTin__2725D70ACD2B554A] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinQL]    Script Date: 10/26/2024 8:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinQL](
	[MaQuanLy] [varchar](50) NOT NULL,
	[TenQuanLy] [nvarchar](255) NULL,
	[NgaySinhQuanLy] [date] NULL,
	[DiaChiQuanLy] [nvarchar](255) NULL,
	[DtQuanLy] [nvarchar](20) NULL,
 CONSTRAINT [PK__ThongTin__2AB9EAF8E21922D5] PRIMARY KEY CLUSTERED 
(
	[MaQuanLy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TichDiem]    Script Date: 10/26/2024 8:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TichDiem](
	[MaDiemTL] [varchar](50) NOT NULL,
	[SoDiemTL] [int] NULL,
 CONSTRAINT [PK__TichDiem__248582526C85D619] PRIMARY KEY CLUSTERED 
(
	[MaDiemTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 10/26/2024 8:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[MaVe] [varchar](50) NOT NULL,
	[NgayBan] [date] NULL,
	[GiaVe] [decimal](18, 0) NULL,
	[MaPhim] [varchar](50) NULL,
 CONSTRAINT [PK__Ve__2725100F43BC8DD7] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [LoaiPhim], [NgayChieu], [ThoiLuong]) VALUES (N'PH001', N'Phim Af', N'Hành động', NULL, 123)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [LoaiPhim], [NgayChieu], [ThoiLuong]) VALUES (N'PH002', N'Phim B', N'Kinh dị', CAST(N'2024-02-02' AS Date), 90)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [LoaiPhim], [NgayChieu], [ThoiLuong]) VALUES (N'PH003', N'Phim C', N'Hài', CAST(N'2024-02-03' AS Date), 110)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [LoaiPhim], [NgayChieu], [ThoiLuong]) VALUES (N'PH004', N'Phim D', N'Tình cảm', CAST(N'2024-02-04' AS Date), 130)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [LoaiPhim], [NgayChieu], [ThoiLuong]) VALUES (N'PH005', N'Phim E', N'Phiêu lưu', CAST(N'2024-02-05' AS Date), 100)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [LoaiPhim], [NgayChieu], [ThoiLuong]) VALUES (N'PH006', N'Phim F', N'Hoạt hình', CAST(N'2024-02-06' AS Date), 95)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [LoaiPhim], [NgayChieu], [ThoiLuong]) VALUES (N'PH007', N'Phim G', N'Tài liệu', CAST(N'2024-02-07' AS Date), 85)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [LoaiPhim], [NgayChieu], [ThoiLuong]) VALUES (N'PH008', N'Phim H', N'Khoa học viễn tưởng', CAST(N'2024-02-08' AS Date), 125)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [LoaiPhim], [NgayChieu], [ThoiLuong]) VALUES (N'PH009', N'Phim I', N'Âm nhạc', CAST(N'2024-02-09' AS Date), 105)
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [LoaiPhim], [NgayChieu], [ThoiLuong]) VALUES (N'PH010', N'Phim J', N'Gia đình', CAST(N'2024-02-10' AS Date), 115)
GO
SET IDENTITY_INSERT [dbo].[QuanLyBanHang] ON 
GO
INSERT [dbo].[QuanLyBanHang] ([id], [MaNV], [MaVe], [MaDiemTL]) VALUES (12, N'NV001', N'VE001', N'TD001')
GO
INSERT [dbo].[QuanLyBanHang] ([id], [MaNV], [MaVe], [MaDiemTL]) VALUES (13, N'NV002', N'VE002', N'TD002')
GO
INSERT [dbo].[QuanLyBanHang] ([id], [MaNV], [MaVe], [MaDiemTL]) VALUES (14, N'NV003', N'VE003', N'TD003')
GO
INSERT [dbo].[QuanLyBanHang] ([id], [MaNV], [MaVe], [MaDiemTL]) VALUES (15, N'NV004', N'VE004', N'TD004')
GO
INSERT [dbo].[QuanLyBanHang] ([id], [MaNV], [MaVe], [MaDiemTL]) VALUES (16, N'NV005', N'VE005', N'TD005')
GO
INSERT [dbo].[QuanLyBanHang] ([id], [MaNV], [MaVe], [MaDiemTL]) VALUES (17, N'NV006', N'VE006', N'TD006')
GO
INSERT [dbo].[QuanLyBanHang] ([id], [MaNV], [MaVe], [MaDiemTL]) VALUES (18, N'NV007', N'VE007', N'TD007')
GO
INSERT [dbo].[QuanLyBanHang] ([id], [MaNV], [MaVe], [MaDiemTL]) VALUES (19, N'NV008', N'VE008', N'TD008')
GO
INSERT [dbo].[QuanLyBanHang] ([id], [MaNV], [MaVe], [MaDiemTL]) VALUES (20, N'NV009', N'VE009', N'TD009')
GO
INSERT [dbo].[QuanLyBanHang] ([id], [MaNV], [MaVe], [MaDiemTL]) VALUES (21, N'NV010', N'VE010', N'TD010')
GO
SET IDENTITY_INSERT [dbo].[QuanLyBanHang] OFF
GO
SET IDENTITY_INSERT [dbo].[QuanLyTT] ON 
GO
INSERT [dbo].[QuanLyTT] ([id], [MaQuanLy], [MaNV]) VALUES (1, N'QL001', N'NV001')
GO
INSERT [dbo].[QuanLyTT] ([id], [MaQuanLy], [MaNV]) VALUES (2, N'QL002', N'NV002')
GO
INSERT [dbo].[QuanLyTT] ([id], [MaQuanLy], [MaNV]) VALUES (3, N'QL003', N'NV003')
GO
INSERT [dbo].[QuanLyTT] ([id], [MaQuanLy], [MaNV]) VALUES (4, N'QL004', N'NV004')
GO
INSERT [dbo].[QuanLyTT] ([id], [MaQuanLy], [MaNV]) VALUES (5, N'QL005', N'NV005')
GO
INSERT [dbo].[QuanLyTT] ([id], [MaQuanLy], [MaNV]) VALUES (6, N'QL006', N'NV006')
GO
INSERT [dbo].[QuanLyTT] ([id], [MaQuanLy], [MaNV]) VALUES (7, N'QL007', N'NV007')
GO
INSERT [dbo].[QuanLyTT] ([id], [MaQuanLy], [MaNV]) VALUES (8, N'QL008', N'NV008')
GO
INSERT [dbo].[QuanLyTT] ([id], [MaQuanLy], [MaNV]) VALUES (9, N'QL009', N'NV009')
GO
INSERT [dbo].[QuanLyTT] ([id], [MaQuanLy], [MaNV]) VALUES (10, N'QL010', N'NV010')
GO
SET IDENTITY_INSERT [dbo].[QuanLyTT] OFF
GO
INSERT [dbo].[ThongTinNV] ([MaNV], [NgaySinhNV], [DiaChiNV], [DtNV]) VALUES (N'NV001', CAST(N'1990-01-01' AS Date), N'Địa chỉ 1', N'0901123456')
GO
INSERT [dbo].[ThongTinNV] ([MaNV], [NgaySinhNV], [DiaChiNV], [DtNV]) VALUES (N'NV002', CAST(N'1991-02-02' AS Date), N'Địa chỉ 2', N'0902123456')
GO
INSERT [dbo].[ThongTinNV] ([MaNV], [NgaySinhNV], [DiaChiNV], [DtNV]) VALUES (N'NV003', CAST(N'1992-03-03' AS Date), N'Địa chỉ 3', N'0903123456')
GO
INSERT [dbo].[ThongTinNV] ([MaNV], [NgaySinhNV], [DiaChiNV], [DtNV]) VALUES (N'NV004', CAST(N'1993-04-04' AS Date), N'Địa chỉ 4', N'0904123456')
GO
INSERT [dbo].[ThongTinNV] ([MaNV], [NgaySinhNV], [DiaChiNV], [DtNV]) VALUES (N'NV005', CAST(N'1994-05-05' AS Date), N'Địa chỉ 5', N'0905123456')
GO
INSERT [dbo].[ThongTinNV] ([MaNV], [NgaySinhNV], [DiaChiNV], [DtNV]) VALUES (N'NV006', CAST(N'1995-06-06' AS Date), N'Địa chỉ 6', N'0906123456')
GO
INSERT [dbo].[ThongTinNV] ([MaNV], [NgaySinhNV], [DiaChiNV], [DtNV]) VALUES (N'NV007', CAST(N'1996-07-07' AS Date), N'Địa chỉ 7', N'0907123456')
GO
INSERT [dbo].[ThongTinNV] ([MaNV], [NgaySinhNV], [DiaChiNV], [DtNV]) VALUES (N'NV008', CAST(N'1997-08-08' AS Date), N'Địa chỉ 8', N'0908123456')
GO
INSERT [dbo].[ThongTinNV] ([MaNV], [NgaySinhNV], [DiaChiNV], [DtNV]) VALUES (N'NV009', CAST(N'1998-09-09' AS Date), N'Địa chỉ 9', N'0909123456')
GO
INSERT [dbo].[ThongTinNV] ([MaNV], [NgaySinhNV], [DiaChiNV], [DtNV]) VALUES (N'NV010', CAST(N'1999-10-10' AS Date), N'Địa chỉ 10', N'0910123456')
GO
INSERT [dbo].[ThongTinQL] ([MaQuanLy], [TenQuanLy], [NgaySinhQuanLy], [DiaChiQuanLy], [DtQuanLy]) VALUES (N'QL001', N'QL A', CAST(N'1985-01-01' AS Date), N'Địa chỉ QL 1', N'0911111111')
GO
INSERT [dbo].[ThongTinQL] ([MaQuanLy], [TenQuanLy], [NgaySinhQuanLy], [DiaChiQuanLy], [DtQuanLy]) VALUES (N'QL002', N'QL B', CAST(N'1986-02-02' AS Date), N'Địa chỉ QL 2', N'0911222222')
GO
INSERT [dbo].[ThongTinQL] ([MaQuanLy], [TenQuanLy], [NgaySinhQuanLy], [DiaChiQuanLy], [DtQuanLy]) VALUES (N'QL003', N'QL C', CAST(N'1987-03-03' AS Date), N'Địa chỉ QL 3', N'0911333333')
GO
INSERT [dbo].[ThongTinQL] ([MaQuanLy], [TenQuanLy], [NgaySinhQuanLy], [DiaChiQuanLy], [DtQuanLy]) VALUES (N'QL004', N'QL D', CAST(N'1988-04-04' AS Date), N'Địa chỉ QL 4', N'0911444444')
GO
INSERT [dbo].[ThongTinQL] ([MaQuanLy], [TenQuanLy], [NgaySinhQuanLy], [DiaChiQuanLy], [DtQuanLy]) VALUES (N'QL005', N'QL E', CAST(N'1989-05-05' AS Date), N'Địa chỉ QL 5', N'0911555555')
GO
INSERT [dbo].[ThongTinQL] ([MaQuanLy], [TenQuanLy], [NgaySinhQuanLy], [DiaChiQuanLy], [DtQuanLy]) VALUES (N'QL006', N'QL F', CAST(N'1990-06-06' AS Date), N'Địa chỉ QL 6', N'0911666666')
GO
INSERT [dbo].[ThongTinQL] ([MaQuanLy], [TenQuanLy], [NgaySinhQuanLy], [DiaChiQuanLy], [DtQuanLy]) VALUES (N'QL007', N'QL G', CAST(N'1991-07-07' AS Date), N'Địa chỉ QL 7', N'0911777777')
GO
INSERT [dbo].[ThongTinQL] ([MaQuanLy], [TenQuanLy], [NgaySinhQuanLy], [DiaChiQuanLy], [DtQuanLy]) VALUES (N'QL008', N'QL H', CAST(N'1992-08-08' AS Date), N'Địa chỉ QL 8', N'0911888888')
GO
INSERT [dbo].[ThongTinQL] ([MaQuanLy], [TenQuanLy], [NgaySinhQuanLy], [DiaChiQuanLy], [DtQuanLy]) VALUES (N'QL009', N'QL I', CAST(N'1993-09-09' AS Date), N'Địa chỉ QL 9', N'0911999999')
GO
INSERT [dbo].[ThongTinQL] ([MaQuanLy], [TenQuanLy], [NgaySinhQuanLy], [DiaChiQuanLy], [DtQuanLy]) VALUES (N'QL010', N'QL J', CAST(N'1994-10-10' AS Date), N'Địa chỉ QL 10', N'0912000000')
GO
INSERT [dbo].[TichDiem] ([MaDiemTL], [SoDiemTL]) VALUES (N'TD001', 100)
GO
INSERT [dbo].[TichDiem] ([MaDiemTL], [SoDiemTL]) VALUES (N'TD002', 200)
GO
INSERT [dbo].[TichDiem] ([MaDiemTL], [SoDiemTL]) VALUES (N'TD003', 300)
GO
INSERT [dbo].[TichDiem] ([MaDiemTL], [SoDiemTL]) VALUES (N'TD004', 400)
GO
INSERT [dbo].[TichDiem] ([MaDiemTL], [SoDiemTL]) VALUES (N'TD005', 500)
GO
INSERT [dbo].[TichDiem] ([MaDiemTL], [SoDiemTL]) VALUES (N'TD006', 600)
GO
INSERT [dbo].[TichDiem] ([MaDiemTL], [SoDiemTL]) VALUES (N'TD007', 700)
GO
INSERT [dbo].[TichDiem] ([MaDiemTL], [SoDiemTL]) VALUES (N'TD008', 800)
GO
INSERT [dbo].[TichDiem] ([MaDiemTL], [SoDiemTL]) VALUES (N'TD009', 900)
GO
INSERT [dbo].[TichDiem] ([MaDiemTL], [SoDiemTL]) VALUES (N'TD010', 1000)
GO
INSERT [dbo].[Ve] ([MaVe], [NgayBan], [GiaVe], [MaPhim]) VALUES (N'VE001', CAST(N'2024-01-01' AS Date), CAST(100000 AS Decimal(18, 0)), N'PH001')
GO
INSERT [dbo].[Ve] ([MaVe], [NgayBan], [GiaVe], [MaPhim]) VALUES (N'VE002', CAST(N'2024-01-02' AS Date), CAST(120000 AS Decimal(18, 0)), N'PH002')
GO
INSERT [dbo].[Ve] ([MaVe], [NgayBan], [GiaVe], [MaPhim]) VALUES (N'VE003', CAST(N'2024-01-03' AS Date), CAST(150000 AS Decimal(18, 0)), N'PH003')
GO
INSERT [dbo].[Ve] ([MaVe], [NgayBan], [GiaVe], [MaPhim]) VALUES (N'VE004', CAST(N'2024-01-04' AS Date), CAST(110000 AS Decimal(18, 0)), N'PH004')
GO
INSERT [dbo].[Ve] ([MaVe], [NgayBan], [GiaVe], [MaPhim]) VALUES (N'VE005', CAST(N'2024-01-05' AS Date), CAST(130000 AS Decimal(18, 0)), N'PH005')
GO
INSERT [dbo].[Ve] ([MaVe], [NgayBan], [GiaVe], [MaPhim]) VALUES (N'VE006', CAST(N'2024-01-06' AS Date), CAST(140000 AS Decimal(18, 0)), N'PH006')
GO
INSERT [dbo].[Ve] ([MaVe], [NgayBan], [GiaVe], [MaPhim]) VALUES (N'VE007', CAST(N'2024-01-07' AS Date), CAST(160000 AS Decimal(18, 0)), N'PH007')
GO
INSERT [dbo].[Ve] ([MaVe], [NgayBan], [GiaVe], [MaPhim]) VALUES (N'VE008', CAST(N'2024-01-08' AS Date), CAST(170000 AS Decimal(18, 0)), N'PH008')
GO
INSERT [dbo].[Ve] ([MaVe], [NgayBan], [GiaVe], [MaPhim]) VALUES (N'VE009', CAST(N'2024-01-09' AS Date), CAST(180000 AS Decimal(18, 0)), N'PH009')
GO
INSERT [dbo].[Ve] ([MaVe], [NgayBan], [GiaVe], [MaPhim]) VALUES (N'VE010', CAST(N'2024-01-10' AS Date), CAST(190000 AS Decimal(18, 0)), N'PH010')
GO
ALTER TABLE [dbo].[QuanLyBanHang]  WITH CHECK ADD  CONSTRAINT [FK__QuanLyBan__MaDie__4D94879B] FOREIGN KEY([MaDiemTL])
REFERENCES [dbo].[TichDiem] ([MaDiemTL])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuanLyBanHang] CHECK CONSTRAINT [FK__QuanLyBan__MaDie__4D94879B]
GO
ALTER TABLE [dbo].[QuanLyBanHang]  WITH CHECK ADD  CONSTRAINT [FK__QuanLyBanH__MaNV__4BAC3F29] FOREIGN KEY([MaNV])
REFERENCES [dbo].[ThongTinNV] ([MaNV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuanLyBanHang] CHECK CONSTRAINT [FK__QuanLyBanH__MaNV__4BAC3F29]
GO
ALTER TABLE [dbo].[QuanLyBanHang]  WITH CHECK ADD  CONSTRAINT [FK__QuanLyBanH__MaVe__4CA06362] FOREIGN KEY([MaVe])
REFERENCES [dbo].[Ve] ([MaVe])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuanLyBanHang] CHECK CONSTRAINT [FK__QuanLyBanH__MaVe__4CA06362]
GO
ALTER TABLE [dbo].[QuanLyTT]  WITH CHECK ADD  CONSTRAINT [FK__QuanLyTT__MaNV__48CFD27E] FOREIGN KEY([MaNV])
REFERENCES [dbo].[ThongTinNV] ([MaNV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuanLyTT] CHECK CONSTRAINT [FK__QuanLyTT__MaNV__48CFD27E]
GO
ALTER TABLE [dbo].[QuanLyTT]  WITH CHECK ADD  CONSTRAINT [FK__QuanLyTT__MaQuan__47DBAE45] FOREIGN KEY([MaQuanLy])
REFERENCES [dbo].[ThongTinQL] ([MaQuanLy])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuanLyTT] CHECK CONSTRAINT [FK__QuanLyTT__MaQuan__47DBAE45]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK__Ve__MaPhim__403A8C7D] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK__Ve__MaPhim__403A8C7D]
GO
/****** Object:  StoredProcedure [dbo].[SP_API]    Script Date: 10/26/2024 8:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_API] 
	@action varchar(50),

	@MaPhim varchar(50) = NULL,
	@TenPhim nvarchar(255) = NULL,
	@LoaiPhim nvarchar(100) = NULL,
	@NgayChieu date = null,
	@ThoiLuong int =null,

    @MaVe varchar(50) = NULL,
    @NgayBan date = NULL,
	@GiaVe decimal = NULL
AS
BEGIN
	declare @json nvarchar(max)='';
    IF (@action = 'get_infor')
    BEGIN        
		SELECT @json = (
			SELECT
				'get_infor' AS status,
				Phim.*,
				Ve.MaVe,
				Ve.NgayBan,
				Ve.GiaVe

			FROM 
				Ve
			JOIN 
				Phim ON Phim.MaPhim = Ve.MaPhim
			FOR JSON PATH
		);

		SELECT @json AS [json];

    END

		ELSE IF (@action = 'add_phim')
    BEGIN
        INSERT INTO Phim(MaPhim,TenPhim,LoaiPhim,NgayChieu,ThoiLuong)
        VALUES (@MaPhim,@TenPhim,@LoaiPhim,@NgayChieu,@ThoiLuong)
        SELECT 'ok' AS ok,'Thêm thành công' AS message FOR JSON PATH, WITHOUT_ARRAY_WRAPPER;
    END

	ELSE IF (@action = 'add_ve')
    BEGIN
        INSERT INTO Ve(MaVe,NgayBan,GiaVe,MaPhim)
        VALUES (@MaVe,@NgayBan,@GiaVe,@MaPhim)
        SELECT 'ok' AS ok,'Thêm thành công' AS message FOR JSON PATH, WITHOUT_ARRAY_WRAPPER;
    END

    ELSE IF (@action = 'update_phim')
    BEGIN
        UPDATE Phim
        SET TenPhim = @TenPhim,LoaiPhim=@LoaiPhim,NgayChieu=@NgayChieu,ThoiLuong=@ThoiLuong
        WHERE MaPhim = @MaPhim
        SELECT 'ok' AS ok,'Cập nhật thành công' AS message FOR JSON PATH, WITHOUT_ARRAY_WRAPPER;
    END

	ELSE IF (@action = 'update_ve')
    BEGIN
        UPDATE Ve
        SET NgayBan = @NgayBan,GiaVe=@GiaVe
        WHERE MaVe = @MaVe
        SELECT 'ok' AS ok,'Cập nhật thành công' AS message FOR JSON PATH, WITHOUT_ARRAY_WRAPPER;
    END

    ELSE IF (@action = 'delete_phim')
    BEGIN
        DELETE FROM Phim
        WHERE MaPhim = @MaPhim
        SELECT 'ok' AS ok,'Xóa thành công' AS message FOR JSON PATH, WITHOUT_ARRAY_WRAPPER;
    END

	ELSE IF (@action = 'delete_ve')
    BEGIN
        DELETE FROM Ve
        WHERE MaVe = @MaVe
        SELECT 'ok' AS ok,'Xóa thành công' AS message FOR JSON PATH, WITHOUT_ARRAY_WRAPPER;
    END
END


GO
