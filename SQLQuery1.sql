CREATE DATABASE PTPMVAUDTM1
GO
USE PTPMVAUDTM1
GO
CREATE TABLE DM_ManHinh(
	MaManHinh nvarchar(50) NOT NULL PRIMARY KEY, 
	TenManHinh nvarchar(50) ,
 )

go
CREATE TABLE QL_NguoiDung(
	TenDangNhap nvarchar(50) NOT NULL PRIMARY KEY,
	MatKhau nvarchar(100),
	HoatDong bit ,
)
go
CREATE TABLE QL_NguoiDungNhomNguoiDung(
	TenDangNhap nvarchar(50) NOT NULL,
	MaNhomNguoiDung varchar(20) NOT NULL,
	GhiChu nvarchar(200),
 CONSTRAINT PK_QL_NguoiDungNhomNguoiDung PRIMARY KEY(TenDangNhap,MaNhomNguoiDung)
)
go
CREATE TABLE QL_NhomNguoiDung(
	MaNhom varchar(20) NOT NULL PRIMARY KEY,
	TenNhom nvarchar(50),
	GhiChu nvarchar(200),
 )
 go
 CREATE TABLE QL_PhanQuyen(
	MaNhomNguoiDung nvarchar(20) NOT NULL,
	MaManHinh nvarchar(50) NOT NULL,
	CoQuyen bit,
 CONSTRAINT PK_QL_PhanQuyen PRIMARY KEY(MaNhomNguoiDung,MaManHinh) 
)
go
CREATE TABLE BAO_CAO_DOANH_THU(
	MaDoanhThu int IDENTITY (1,1) primary key,
	Thang Datetime,
	TongDoanhThu float,
)

go
CREATE TABLE CHI_TIET_BAO_CAO_DOANH_THU(
	MaDoanhThu int not null ,
	Thang int NOT NULL,
	Nam int,
	MaPhong varchar(3) NOT NULL,
	DoanhThu float,
	TyLe float,
	Constraint pk_CTBCDT primary key(MaDoanhThu,MaPhong)
) 

GO

CREATE TABLE CHI_TIET_HOA_DON(
	MaHoaDon int NOT NULL,
	MaPhong varchar(3) NOT NULL,
	MaSuDungDichVu varchar(4) NOT NULL,
	MaChinhSach varchar(5) NOT NULL,
	PhuThu float ,
	TienPhong float ,
	TienDichVu float ,
	GiamGiaKH float ,
	HinhThucThanhToan nvarchar(50) ,
	SoNgay int ,
	ThanhTien float ,
	CONSTRAINT PK_CHI_TIET_HOA_DON PRIMARY KEY(MaHoaDon,MaPhong)
)

GO

CREATE TABLE CHI_TIET_MAT_DO_SU_DUNG_PHONG(
	MaChiTietMatDo varchar(10) NOT NULL PRIMARY KEY,
	MaMatDo varchar(10) NOT NULL,
	MaPhong varchar(10) NOT NULL,
	SoNgayThue int ,
	TyLe float ,
	)
GO
CREATE TABLE CHI_TIET_PHIEU_NHAN_PHONG(
	MaNhanPhong int NOT NULL,
	MaPhong varchar(3) NOT NULL,
	HoTenKhachHang nvarchar(50) ,
	CMND nvarchar(15) ,
	NgayNhan datetime ,
	NgayTraDuKien datetime ,
	NgayTraThucTe datetime ,
	TinhTrangPNP BIT NOT NULL DEFAULT 0,
 CONSTRAINT PK_CHI_TIET_PHIEU_NHAN_PHONG PRIMARY KEY(MaNhanPhong,MaPhong) 
)

GO
CREATE TABLE CHI_TIET_PHIEU_THUE_PHONG(
	MaPhieuThue int  NOT NULL,
	MaPhong varchar(3) NOT NULL,
	NgayDangKy datetime ,
	NgayNhan datetime ,
	TinhTrangPTP BIT NOT NULL DEFAULT 0,
 CONSTRAINT PK_CHI_TIET_PHIEU_THUE_PHONG PRIMARY KEY (MaPhieuThue,MaPhong)
)
GO
CREATE TABLE CHINH_SACH_TRA_PHONG(
	MaChinhSach varchar(5) NOT NULL PRIMARY KEY,
	ThoiGianQuiDinh nvarchar(50) ,
	PhuThu float ,
 )

GO

CREATE TABLE DANH_SACH_SU_DUNG_DICH_VU(
	MaSuDungDvu varchar(4) NOT NULL PRIMARY KEY,
	MaDichVu varchar(5) NOT NULL,
	MaNhanPhong int NOT NULL,
	SoLuong int ,
)

GO
CREATE TABLE DICH_VU(
	MaDichVu varchar(5) NOT NULL PRIMARY KEY,
	MaLoaiDichVu varchar(5) NOT NULL,
	MaDonVi varchar(3) NOT NULL,
	DonGia float ,
 )
GO
CREATE TABLE DON_VI(
	MaDonVi varchar(3) NOT NULL PRIMARY KEY,
	TenDonVi nvarchar(50) NULL,
 )
 GO
 CREATE TABLE NHAN_VIEN(
	MaNhanVien nvarchar(10) NOT NULL PRIMARY KEY,
	TenNhanVien nvarchar(50) NULL,
	CMND nvarchar(15) NOT NULL,
	GioiTinh nvarchar(50) ,
	DiaChi nvarchar(50) ,
	DienThoai nvarchar(12) ,
	QuocTich nvarchar(50) ,
 )
GO
CREATE TABLE HOA_DON(
	MaHoaDon int IDENTITY (1,1) NOT NULL PRIMARY KEY,
	MaNhanVien nvarchar(10),
	MaKhachHang int NOT NULL,
	MaNhanPhong int NOT NULL,
	TongTien float NOT NULL,
	NgayLap datetime NOT NULL,
)
GO
CREATE TABLE KHACH_HANG(
	MaKhachHang int IDENTITY (1,1) NOT NULL PRIMARY KEY,
	TenKhachHang nvarchar(50) NULL,
	CMND nvarchar(15) NOT NULL,
	GioiTinh nvarchar(50) ,
	DiaChi nvarchar(50) ,
	DienThoai nvarchar(12) ,
	QuocTich nvarchar(50) ,
 )
GO
CREATE TABLE LOAI_DICH_VU(
	MaLoaiDichVu varchar(5) NOT NULL PRIMARY KEY,
	TenLoaiDichVu nvarchar(50) ,
 )
GO
CREATE TABLE LOAI_PHONG(
	MaLoaiPhong varchar(3) NOT NULL PRIMARY KEY,
	TenLoaiPhong nvarchar(50) ,
	DonGia float ,
	SoNguoiChuan int ,
	SoNguoiToiDa int ,
	TyLeTang float ,
 )
GO
CREATE TABLE LOAI_TINH_TRANG(
	MaLoaiTinhTrangPhong int NOT NULL PRIMARY KEY,
	TenLoaiTinhTrang nvarchar(50) ,
 )
GO
CREATE TABLE MAT_DO_SU_DUNG_PHONG(
	MaMatDo varchar(10) NOT NULL PRIMARY KEY,
	Ngay datetime ,
	Thang datetime ,
	Nam datetime ,
 )
GO

GO
CREATE TABLE PHIEU_NHAN_PHONG(
	MaNhanPhong int IDENTITY (1,1) NOT NULL PRIMARY KEY,
	MaPhieuThue int NOT NULL,
	MaKhachHang int NOT NULL,
)
GO
CREATE TABLE PHIEU_THUE_PHONG(
	MaPhieuThue int IDENTITY (1,1) NOT NULL PRIMARY KEY,
	MaKhachHang int NOT NULL,
 )
GO
CREATE TABLE PHONG(
	MaPhong varchar(3) NOT NULL PRIMARY KEY,
	MaLoaiPhong varchar(3) NOT NULL,
	MaLoaiTinhTrangPhong int NOT NULL,
	GhiChu nvarchar(50) ,
 )
GO
CREATE TABLE QUI_DINH(
	TenQuiDinh nvarchar(50) ,
	MoTa nvarchar(max) 
)

GO
CREATE TABLE THAM_SO(
	PhieuDangKy int NOT NULL,
	PhieuNhan int NOT NULL,
	HoaDon int ,
	STT int 
)


GO
CREATE TABLE THIET_BI(
	MaThietBi varchar(8) NOT NULL PRIMARY KEY,
	TenThietBi nvarchar(50) ,
	MaLoaiPhong varchar(3) NOT NULL,
	SoLuong int ,
)

GO
CREATE TABLE TUVAN(
	MaTV int IDENTITY (1,1) not null primary key,
	Tuoi nvarchar(20),
	ThoiGianLuuTru int,
	LyDo nvarchar(20),
	LoaiPhong nvarchar(20),
	ChiTieu float,
)

go

INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 2, 'dulich', 'tieuchuan' ,300000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,300000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 4, 'congtac', 'caocap' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'dulich', 'sangtrong' ,900000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'dulich', 'tieuchuan' ,300000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,300000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 4, 'dulich', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 7, 'congtac', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,700000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 4, 'congtac', 'caocap' ,1000000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'dulich', 'sangtrong' ,900000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 6, 'congtac', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'sangtrong' ,900000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'dulich', 'sangtrong' ,600000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'caocap' ,1500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'dulich', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 5, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'tieuchuan' ,600000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 1, 'congtac', 'tieuchuan' ,300000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 6, 'dulich', 'caocap' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 4, 'dulich', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'caocap' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,550000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 4, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 2, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'caocap' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 7, 'dulich', 'tieuchuan' ,460000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,550000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 4, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'dulich', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,650000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'caocap' ,1100000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'congtac', 'tieuchuan' ,470000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 2, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 4, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 1, 'congtac', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,750000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'congtac', 'caocap' ,1200000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,470000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 1, 'congtac', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'sangtrong' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 2, 'dulich', 'tieuchuan' ,550000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 4, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 1, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,700000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'congtac', 'caocap' ,1300000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 1, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'sangtrong' ,1100000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'caocap' ,1300000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'dulich', 'sangtrong' ,850000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'dulich', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'caocap' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'caocap' ,1100000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 2, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'caocap' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'caocap' ,1300000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 1, 'congtac', 'caocap' ,1000000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,750000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'congtac', 'caocap' ,1000000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,550000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 1, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'sangtrong' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 2, 'dulich', 'tieuchuan' ,550000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 4, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 1, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'sangtrong' ,700000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 2, 'congtac', 'caocap' ,1300000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 3, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 2, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,1100000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 4, 'dulich', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,800000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 4, 'congtac', 'caocap' ,1100000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'dulich', 'sangtrong' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'dulich', 'sangtrong' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'congtac', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'congtac', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'caocap' ,1100000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 5, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'congtac', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 6, 'dulich', 'caocap' ,1100000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 1, 'congtac', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'caocap' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 1, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'caocap' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 4, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 7, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'caocap' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 4, 'dulich', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 4, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 2, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,700000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'congtac', 'caocap' ,1000000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 1, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'sangtrong' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 2, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 2, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 4, 'dulich', 'sangtrong' ,700000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 1, 'congtac', 'caocap' ,1000000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 2, 'dulich', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 1, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'sangtrong' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'caocap' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'dulich', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 1, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'caocap' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'caocap' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 2, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'caocap' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 2, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'caocap' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 1, 'congtac', 'caocap' ,1200000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,700000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 1, 'congtac', 'caocap' ,1000000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 4, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'sangtrong' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 2, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 2, 'dulich', 'sangtrong' ,700000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 1, 'congtac', 'caocap' ,1000000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 6, 'dulich', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 2, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 4, 'dulich', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 8, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,800000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'congtac', 'caocap' ,1100000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'dulich', 'sangtrong' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 6, 'congtac', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,1100000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'congtac', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'dulich', 'caocap' ,1300000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'dulich', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'dulich', 'sangtrong' ,760000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'tieuchuan' ,550000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 1, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 6, 'dulich', 'caocap' ,1100000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 2, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 4, 'dulich', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 1, 'congtac', 'caocap' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'dulich', 'tieuchuan' ,550000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 4, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 1, 'congtac', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'caocap' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 7, 'dulich', 'tieuchuan' ,460000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'tieuchuan' ,550000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 2, 'dulich', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 4, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'dulich', 'sangtrong' ,650000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caonien', 1, 'dulich', 'congtac' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'dulich', 'caocap' ,1100000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 4, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 1, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 4, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 3, 'congtac', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 2, 'dulich', 'sangtrong' ,750000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 1, 'congtac', 'caocap' ,1200000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'congtac', 'tieuchuan' ,470000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 1, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'congtac', 'sangtrong' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,550000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 2, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 5, 'dulich', 'sangtrong' ,700000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'congtac', 'caocap' ,1300000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 2, 'dulich', 'sangtrong' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'congtac', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'caocap' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'dulich', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 4, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'caocap' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 4, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'dulich', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'caocap' ,1100000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 4, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 1, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 5, 'dulich', 'caocap' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 6, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 7, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 4, 'dulich', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 1, 'congtac', 'caocap' ,1300000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 1, 'congtac', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 1, 'congtac', 'caocap' ,1000000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'sangtrong' ,750000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 1, 'congtac', 'caocap' ,1000000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 4, 'dulich', 'tieuchuan' ,550000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('congtuoi', 1, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 2, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 2, 'dulich', 'tieuchuan' ,550000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 4, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,700000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'congtac', 'caocap' ,1300000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 4, 'dulich', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 2, 'dulich', 'sangtrong' ,1100000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 6, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 7, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 2, 'congtac', 'sangtrong' ,700000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 4, 'congtac', 'caocap' ,1000000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 3, 'congtac', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 2, 'dulich', 'sangtrong' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 9, 'congtac', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 6, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 5, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 4, 'congtac', 'caocap' ,1500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 6, 'dulich', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 5, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 7, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'dulich', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 6, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 6, 'congtac', 'tieuchuan' ,600000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 6, 'congtac', 'tieuchuan' ,300000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'dulich', 'caocap' ,1000000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 5, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 6, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 5, 'dulich', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 4, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 6, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 4, 'congtac', 'caocap' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 4, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 5, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 6, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 5, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 5, 'congtac', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 6, 'dulich', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 5, 'congtac', 'caocap' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 6, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 6, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 5, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 5, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 6, 'dulich', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 5, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 6, 'dulich', 'sangtrong' ,650000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 6, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 5, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 5, 'congtac', 'caocap' ,1100000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 5, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 6, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 5, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 6, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 5, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 6, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 5, 'congtac', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 6, 'dulich', 'sangtrong' ,750000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 4, 'congtac', 'caocap' ,1200000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 5, 'dulich', 'tieuchuan' ,470000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 6, 'congtac', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 5, 'dulich', 'sangtrong' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 5, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 6, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 5 ,'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 5, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 5, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 6, 'dulich', 'sangtrong' ,700000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 1, 'congtac', 'caocap' ,1300000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 3, 'dulich', 'sangtrong' ,1100000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 4, 'congtac', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'congtac', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 3, 'congtac', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'dulich', 'caocap' ,1300000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'congtac', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'congtac', 'sangtrong' ,800000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 2, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 1, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'dulich', 'caocap' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 4, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 5, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 6, 'dulich', 'sangtrong' ,750000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'congtac', 'caocap' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 4, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 4, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 3, 'congtac', 'tieuchuan' ,450000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'dulich', 'caocap' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 1, 'congtac', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 1, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 3, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 4, 'congtac', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('caotuoi', 4, 'dulich', 'sangtrong' ,700000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 2, 'congtac', 'caocap' ,1300000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 4, 'dulich', 'tieuchuan' ,400000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('thanhnien', 5, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 6, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 4, 'congtac', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 3, 'dulich', 'caocap' ,1000000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 5, 'dulich', 'sangtrong' ,750000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 6, 'congtac', 'caocap' ,1000000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 5, 'dulich', 'tieuchuan' ,550000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 6, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 4, 'dulich', 'sangtrong' ,1200000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 6, 'dulich', 'tieuchuan' ,500000)
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu)VALUES ('trungnien', 5, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 6, 'dulich', 'tieuchuan' ,550000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 5, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 7, 'congtac', 'tieuchuan' ,400000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 6, 'dulich', 'sangtrong' ,700000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 4, 'congtac', 'caocap' ,1300000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('caotuoi', 5, 'dulich', 'tieuchuan' ,500000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('trungnien', 6, 'congtac', 'tieuchuan' ,450000) 
INSERT INTO TUVAN ( Tuoi, ThoiGianLuuTru, LyDo, LoaiPhong, ChiTieu) VALUES ('thanhnien', 5, 'dulich', 'sangtrong' ,1100000)


GO

ALTER TABLE HOA_DON
ADD  CONSTRAINT FK_HOA_DON_NHAN_VIEN FOREIGN KEY(MaNhanVien)
REFERENCES NHAN_VIEN(MaNhanVien)
GO
ALTER TABLE CHI_TIET_HOA_DON
ADD  CONSTRAINT FK_CHI_TIET_HOA_DON_CHINH_SACH_TRA_PHONG FOREIGN KEY(MaChinhSach)
REFERENCES CHINH_SACH_TRA_PHONG(MaChinhSach)
GO
ALTER TABLE CHI_TIET_HOA_DON 
ADD  CONSTRAINT FK_CHI_TIET_HOA_DON_DANH_SACH_SU_DUNG_DICH_VU1 FOREIGN KEY(MaSuDungDichVu)
REFERENCES DANH_SACH_SU_DUNG_DICH_VU (MaSuDungDvu)
GO
ALTER TABLE CHI_TIET_HOA_DON  
ADD  CONSTRAINT FK_CHI_TIET_HOA_DON_HOA_DON FOREIGN KEY(MaHoaDon)
REFERENCES HOA_DON (MaHoaDon)
GO
ALTER TABLE CHI_TIET_HOA_DON 
ADD  CONSTRAINT FK_CHI_TIET_HOA_DON_PHONG FOREIGN KEY(MaPhong)
REFERENCES PHONG (MaPhong)
GO
ALTER TABLE CHI_TIET_PHIEU_NHAN_PHONG 
ADD  CONSTRAINT FK_CHI_TIET_PHIEU_NHAN_PHONG_PHIEU_NHAN_PHONG FOREIGN KEY(MaNhanPhong)
REFERENCES PHIEU_NHAN_PHONG (MaNhanPhong)
GO
ALTER TABLE CHI_TIET_PHIEU_NHAN_PHONG  
ADD  CONSTRAINT FK_CHI_TIET_PHIEU_NHAN_PHONG_PHONG FOREIGN KEY(MaPhong)
REFERENCES PHONG (MaPhong)
GO
ALTER TABLE CHI_TIET_PHIEU_THUE_PHONG  
ADD  CONSTRAINT FK_CHI_TIET_PHIEU_THUE_PHONG_PHIEU_THUE_PHONG FOREIGN KEY(MaPhieuThue)
REFERENCES PHIEU_THUE_PHONG (MaPhieuThue)
GO
ALTER TABLE CHI_TIET_PHIEU_THUE_PHONG  
ADD  CONSTRAINT FK_CHI_TIET_PHIEU_THUE_PHONG_PHONG FOREIGN KEY(MaPhong)
REFERENCES PHONG (MaPhong)
GO
ALTER TABLE DANH_SACH_SU_DUNG_DICH_VU
ADD  CONSTRAINT FK_DANH_SACH_SU_DUNG_DICH_VU_DICH_VU FOREIGN KEY(MaDichVu)
REFERENCES DICH_VU (MaDichVu)
GO
ALTER TABLE DANH_SACH_SU_DUNG_DICH_VU
ADD  CONSTRAINT FK_DANH_SACH_SU_DUNG_DICH_VU_PHIEU_NHAN_PHONG FOREIGN KEY(MaNhanPhong)
REFERENCES PHIEU_NHAN_PHONG (MaNhanPhong)
GO

ALTER TABLE DICH_VU  
ADD  CONSTRAINT FK_DICH_VU_DON_VI FOREIGN KEY(MaDonVi)
REFERENCES DON_VI (MaDonVi)
GO
ALTER TABLE DICH_VU  
ADD  CONSTRAINT FK_DICH_VU_LOAI_DICH_VU FOREIGN KEY(MaLoaiDichVu)
REFERENCES LOAI_DICH_VU (MaLoaiDichVu)
GO
ALTER TABLE HOA_DON 
ADD  CONSTRAINT FK_HOA_DON_KHACH_HANG FOREIGN KEY(MaKhachHang)
REFERENCES KHACH_HANG (MaKhachHang)
GO
ALTER TABLE HOA_DON 
ADD  CONSTRAINT FK_HOA_DON_PHIEU_NHAN_PHONG FOREIGN KEY(MaNhanPhong)
REFERENCES PHIEU_NHAN_PHONG (MaNhanPhong)
GO
ALTER TABLE PHIEU_NHAN_PHONG
ADD  CONSTRAINT FK_PHIEU_NHAN_PHONG_KHACH_HANG FOREIGN KEY(MaKhachHang)
REFERENCES KHACH_HANG (MaKhachHang)
GO
ALTER TABLE PHIEU_NHAN_PHONG  
ADD  CONSTRAINT FK_PHIEU_NHAN_PHONG_KHACH_HANG1 FOREIGN KEY(MaKhachHang)
REFERENCES KHACH_HANG (MaKhachHang)
GO
ALTER TABLE PHIEU_NHAN_PHONG
ADD  CONSTRAINT FK_PHIEU_NHAN_PHONG_PHIEU_THUE_PHONG FOREIGN KEY(MaPhieuThue)
REFERENCES PHIEU_THUE_PHONG (MaPhieuThue)
GO
ALTER TABLE PHIEU_THUE_PHONG  
ADD  CONSTRAINT FK_PHIEU_THUE_PHONG_KHACH_HANG FOREIGN KEY(MaKhachHang)
REFERENCES KHACH_HANG (MaKhachHang)
GO
ALTER TABLE PHONG
ADD  CONSTRAINT FK_PHONG_LOAI_PHONG FOREIGN KEY(MaLoaiPhong)
REFERENCES LOAI_PHONG (MaLoaiPhong)
GO
ALTER TABLE PHONG  
ADD  CONSTRAINT FK_PHONG_LOAI_TINH_TRANG FOREIGN KEY(MaLoaiTinhTrangPhong)
REFERENCES LOAI_TINH_TRANG (MaLoaiTinhTrangPhong)
GO
ALTER TABLE THIET_BI  
ADD  CONSTRAINT FK_THIET_BI_LOAI_PHONG FOREIGN KEY(MaLoaiPhong)
REFERENCES LOAI_PHONG (MaLoaiPhong)
GO
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF01', N'Đăng Xuất')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF02', N'Đổi Mật Khẩu')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF03', N'Người Dùng')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF04', N'Thêm người dùng vào nhóm')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF05', N'Khách Hàng')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF06', N'Dịch Vụ')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF07', N'Phòng')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF08', N'Đăng Ký Đặt Phòng')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF09', N'Nhận Phòng')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF10', N'Trả Phòng')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF11', N'Danh Sách Khách Hàng Đăng Ký')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF12', N'Danh Sách Khách Hàng Nhận Phòng')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF13', N'Danh Sách Hóa Đơn')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF14', N'Thiết Bị')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF15', N'Loại Phòng')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF16', N'Loại Dịch Vụ')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF17', N'Doanh Thu')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF18', N'Quy Định')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF19', N'Liên Hệ')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF20', N'Hướng Dẫn Sử Dụng')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF21', N'Đăng ký')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF22', N'Nhận Phòng')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF23', N'Trả Phòng')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF24', N'Thêm Phòng')
INSERT DM_ManHinh (MaManHinh, TenManHinh) VALUES (N'SF25', N'Cập Nhật phòng')
GO
INSERT QL_NguoiDung (TenDangNhap, MatKhau, HoatDong) VALUES (N'1', N'1', 1)
INSERT QL_NguoiDung (TenDangNhap, MatKhau, HoatDong) VALUES (N'333', N'333', 1)
INSERT QL_NguoiDungNhomNguoiDung (TenDangNhap, MaNhomNguoiDung, GhiChu) VALUES (N'1', N'admin', NULL)
INSERT QL_NguoiDungNhomNguoiDung (TenDangNhap, MaNhomNguoiDung, GhiChu) VALUES (N'333', N'ND', NULL)
INSERT QL_NhomNguoiDung (MaNhom, TenNhom, GhiChu) VALUES (N'admin', N'Admin', NULL)
INSERT QL_NhomNguoiDung (MaNhom, TenNhom, GhiChu) VALUES (N'ND', N'Người dung', NULL)
GO

INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF01',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF02',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF03',0)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF04',0)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF05',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF06',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF07',0)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF08',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF09',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF10',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF11',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF12',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF13',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF14',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF15',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF16',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF17',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF18',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF19',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF20',0)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF21',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF22',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF23',1)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF24',0)
INSERT QL_PhanQuyen (MaNhomNguoiDung,MaManHinh,CoQuyen) VALUES (N'ND',N'SF25',0)

INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'TC1', N'Tiêu Chuẩn Loại 1', 200000, 2, 4, NULL)
INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'ST1', N'Sang Trọng Loại 1', 250000, 2, 4, NULL)
INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'CC1', N'Cao Cấp Loại 1', 500000, 2, 4, NULL)
INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'TC2', N'Tiêu Chuẩn Loại 2', 250000, 2, 4, NULL)
INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'ST2', N'Sang Trọng Loại 2', 320000, 2, 4, NULL)
INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'CC2', N'Cao Cấp Loại 2', 800000, 2, 4, NULL)
INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'TC3', N'Tiêu Chuẩn Loại 3', 400000, 2, 4, NULL)
INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'ST3', N'Sang Trọng Loại 3', 600000, 2, 4, NULL)
INSERT [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N'CC3', N'Cao Cấp Loại 3', 1200000, 2, 4, NULL)

INSERT [dbo].[LOAI_TINH_TRANG] ([MaLoaiTinhTrangPhong], [TenLoaiTinhTrang]) VALUES (1, N'Trống')
INSERT [dbo].[LOAI_TINH_TRANG] ([MaLoaiTinhTrangPhong], [TenLoaiTinhTrang]) VALUES (2, N'Đặt')
INSERT [dbo].[LOAI_TINH_TRANG] ([MaLoaiTinhTrangPhong], [TenLoaiTinhTrang]) VALUES (3, N'Có người ở')
--delete PHONG
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'101', N'TC1', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'102', N'TC1', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'103', N'TC1', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'104', N'TC1', 1,N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'105', N'TC1', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'106', N'TC1', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'107', N'TC1', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'108', N'TC1', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'109', N'TC1', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'201', N'TC2', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'202', N'TC2', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'203', N'TC2', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'204', N'TC2', 1,N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'205', N'TC3', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'206', N'TC3', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'207', N'TC3', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'208', N'TC3', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'209', N'TC3', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'301', N'ST1', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'302', N'ST1', 1,N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'303', N'ST1', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'304', N'ST2', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'305', N'ST2', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'306', N'ST2', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'307', N'ST3', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'308', N'ST3', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'309', N'ST3', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'401', N'CC1', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'402', N'CC1', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'403', N'CC1', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'404', N'CC1', 1,N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'405', N'CC1', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'406', N'CC2', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'407', N'CC2', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'408', N'CC2', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'409', N'CC2', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'501', N'CC3', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'502', N'CC3', 1,N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'503', N'CC3', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'504', N'CC3', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'505', N'CC3', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'506', N'CC3', 1,N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'507', N'CC3', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'508', N'CC3', 1, N'Đẹp Sang Trọng')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [GhiChu]) VALUES (N'509', N'CC3', 1, N'Đẹp Sang Trọng')

INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc1', N'12h-13h', 0)
INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc2', N'13h-15h', 0.2)
INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc3', N'15h-17h', 0.4)
INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc4', N'17h-19h', 0.5)
INSERT [dbo].[CHINH_SACH_TRA_PHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'Muc5', N'Sau 19h', 1)

INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'BH', N'Bò húc')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'K', N'Karaoke')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'M', N'Massage')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'NL', N'Nước Lavie')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'TG', N'Tiger Beer')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'GQA', N'Giặt quần áo')
INSERT [dbo].[LOAI_DICH_VU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'UQA', N'Ủi QA')

INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'KG', N'Kg')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'CH', N'Chai')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'H', N'Giờ')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'L', N'Lon')
INSERT [dbo].[DON_VI] ([MaDonVi], [TenDonVi]) VALUES (N'V', N'Vé')

INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV01', N'K', N'H', 100000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV02', N'M', N'V', 120000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV03', N'BH', N'L', 15000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV05', N'NL', N'CH', 10000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV06', N'TG', N'L', 18000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV07', N'GQA', N'KG', 50000)
INSERT [dbo].[DICH_VU] ([MaDichVu], [MaLoaiDichVu], [MaDonVi], [DonGia]) VALUES (N'DV08', N'UQA', N'KG', 40000)

INSERT INTO [dbo].[LOAI_PHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [TyLeTang]) VALUES (N't', N't', 720000, 2, 4, 0)
delete PHIEU_THUE_PHONG
INSERT INTO PHIEU_THUE_PHONG Values ('PT1','K1')
INSERT INTO CHI_TIET_PHIEU_THUE_PHONG Values ('PT1','205',17/5/2021,18/5/2021)
select MaLoaiTinhTrangPhong from PHONG where MaPhong ='211'
select MaKhachHang from PHIEU_THUE_PHONG where MaPhieuThue ='PT1'
select * from CHI_TIET_PHIEU_THUE_PHONG
select * from PHONG

select Maphong, Sum(TienPhong*SoNgay+TienPhong*PhuThu-GiamGiaKH) as DoanhThu
from HOA_DON HD inner join chi_tiet_hoa_don ct on hd.mahoadon=ct.mahoadon 
where month(hd.ngaylap) =5 and year(hd.ngaylap)= 2021 
group by Maphong

select Maphong, Sum(Hd.TongTien) as DoanhThu
from HOA_DON HD inner join chi_tiet_hoa_don ct on hd.mahoadon=ct.mahoadon 
where month(hd.ngaylap) =5 and year(hd.ngaylap)= 2021 
group by Maphong

select Top 1 MaNhanPhong,ct.MaPhong,p.MaLoaiTinhTrangPhong
from CHI_TIET_PHIEU_NHAN_PHONG ct ,PHONG p
Where  p.MaLoaiTinhTrangPhong = 3 and  ct.MaPhong = p.MaPhong 
and ct.MaPhong = '201'