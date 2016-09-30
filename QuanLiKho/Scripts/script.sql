USE [master]
GO
/****** Object:  Database [QuanLiKho]    Script Date: 9/30/2016 4:00:29 PM ******/
CREATE DATABASE [QuanLiKho]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLiKho', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLiKho.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLiKho_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLiKho_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLiKho] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLiKho].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLiKho] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLiKho] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLiKho] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLiKho] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLiKho] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLiKho] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLiKho] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLiKho] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLiKho] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLiKho] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLiKho] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLiKho] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLiKho] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLiKho] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLiKho] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLiKho] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLiKho] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLiKho] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLiKho] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLiKho] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLiKho] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLiKho] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLiKho] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLiKho] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLiKho] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLiKho] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLiKho] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLiKho] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLiKho] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QuanLiKho]
GO
/****** Object:  StoredProcedure [dbo].[SP_tblBoPhan_Delete]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblBoPhan_Delete]

@BPMa char

AS

Delete 
tblBoPhan


where BPMa=@BPMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblBoPhan_Insert]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblBoPhan_Insert]


@BPTen nvarchar(150),
@BPGhiChu nvarchar(150)

AS

Insert into tblBoPhan
(
BPTen,
BPGhiChu
)
values
(
@BPTen,
@BPGhiChu
)


GO
/****** Object:  StoredProcedure [dbo].[SP_tblBoPhan_Select]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblBoPhan_Select]


@BPMa char,
@BPTen nvarchar(50),
@BPGhiChu nvarchar(50)

AS

Select 

BPMa,
BPTen,
BPGhiChu

from tblBoPhan

where 
( @BPMa is null or @BPMa = BPMa )  and 
( @BPTen is null or @BPTen = BPTen )  and 
( @BPGhiChu is null or @BPGhiChu = BPGhiChu ) 


GO
/****** Object:  StoredProcedure [dbo].[SP_tblBoPhan_Update]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblBoPhan_Update]


@BPMa    char,
@BPTen    nvarchar(150),
@BPGhiChu    nvarchar(150)

AS

Update tblBoPhan

Set
	
	BPTen = @BPTen,
	BPGhiChu = @BPGhiChu
Where

BPMa = @BPMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblDonVi_Delete]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblDonVi_Delete]

@DVMa char

AS

Delete 
tblDonVi


where DVMa=@DVMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblDonVi_Insert]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblDonVi_Insert]


@DVTen nvarchar(150),
@DVGhiChu nvarchar(150)

AS

Insert into tblDonVi
(
DVTen,
DVGhiChu
)
values
(
@DVTen,
@DVGhiChu
)


GO
/****** Object:  StoredProcedure [dbo].[SP_tblDonVi_Select]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblDonVi_Select]


@DVMa char,
@DVTen nvarchar(50),
@DVGhiChu nvarchar(50)

AS

Select 

DVMa,
DVTen,
DVGhiChu

from tblDonVi

where 
( @DVMa is null or @DVMa = DVMa )  and 
( @DVTen is null or @DVTen = DVTen )  and 
( @DVGhiChu is null or @DVGhiChu = DVGhiChu ) 


GO
/****** Object:  StoredProcedure [dbo].[SP_tblDonVi_Update]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblDonVi_Update]


@DVMa    char,
@DVTen    nvarchar(150),
@DVGhiChu    nvarchar(150)

AS

Update tblDonVi

Set
	
	DVTen = @DVTen,
	DVGhiChu = @DVGhiChu
Where

DVMa = @DVMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblHangHoa_Delete]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblHangHoa_Delete]

@HHMa char

AS

Delete 
tblHangHoa


where HHMa=@HHMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblHangHoa_Insert]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblHangHoa_Insert]


@HHTen nvarchar(150),
@HHGia money,
@DVMa char,
@KMa char,
@NPPMa char,
@HHTonHienTai int,
@NMa char

AS

Insert into tblHangHoa
(
HHTen,
HHGia,
DVMa,
KMa,
NPPMa,
HHTonHienTai,
NMa
)
values
(
@HHTen,
@HHGia,
@DVMa,
@KMa,
@NPPMa,
@HHTonHienTai,
@NMa
)


GO
/****** Object:  StoredProcedure [dbo].[SP_tblHangHoa_Select]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblHangHoa_Select]


@HHMa char,
@HHTen nvarchar(50),
@HHGia money,
@DVMa char,
@KMa char,
@NPPMa char,
@HHTonHienTai int,
@NMa char

AS

Select 

HHMa,
HHTen,
HHGia,
DVMa,
KMa,
NPPMa,
HHTonHienTai,
NMa

from tblHangHoa

where 
( @HHMa is null or @HHMa = HHMa )  and 
( @HHTen is null or @HHTen = HHTen )  and 
( @HHGia is null or @HHGia = HHGia )  and 
( @DVMa is null or @DVMa = DVMa )  and 
( @KMa is null or @KMa = KMa )  and 
( @NPPMa is null or @NPPMa = NPPMa )  and 
( @HHTonHienTai is null or @HHTonHienTai = HHTonHienTai )  and 
( @NMa is null or @NMa = NMa ) 


GO
/****** Object:  StoredProcedure [dbo].[SP_tblHangHoa_Update]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblHangHoa_Update]


@HHMa    char,
@HHTen    nvarchar(150),
@HHGia    money,
@DVMa    char,
@KMa    char,
@NPPMa    char,
@HHTonHienTai    int,
@NMa    char

AS

Update tblHangHoa

Set
	
	HHTen = @HHTen,
	HHGia = @HHGia,
	DVMa = @DVMa,
	KMa = @KMa,
	NPPMa = @NPPMa,
	HHTonHienTai = @HHTonHienTai,
	NMa = @NMa
Where

HHMa = @HHMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblKhachHang_Delete]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblKhachHang_Delete]

@KHMa char

AS

Delete 
tblKhachHang


where KHMa=@KHMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblKhachHang_Insert]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblKhachHang_Insert]


@KHTen nvarchar(150),
@KHDiaChi nvarchar(150),
@KHMaSoThue char,
@KHDienThoai char,
@KHGhiChu nvarchar(150)

AS

Insert into tblKhachHang
(
KHTen,
KHDiaChi,
KHMaSoThue,
KHDienThoai,
KHGhiChu
)
values
(
@KHTen,
@KHDiaChi,
@KHMaSoThue,
@KHDienThoai,
@KHGhiChu
)


GO
/****** Object:  StoredProcedure [dbo].[SP_tblKhachHang_Select]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblKhachHang_Select]


@KHMa char,
@KHTen nvarchar(50),
@KHDiaChi nvarchar(50),
@KHMaSoThue char,
@KHDienThoai char,
@KHGhiChu nvarchar(50)

AS

Select 

KHMa,
KHTen,
KHDiaChi,
KHMaSoThue,
KHDienThoai,
KHGhiChu

from tblKhachHang

where 
( @KHMa is null or @KHMa = KHMa )  and 
( @KHTen is null or @KHTen = KHTen )  and 
( @KHDiaChi is null or @KHDiaChi = KHDiaChi )  and 
( @KHMaSoThue is null or @KHMaSoThue = KHMaSoThue )  and 
( @KHDienThoai is null or @KHDienThoai = KHDienThoai )  and 
( @KHGhiChu is null or @KHGhiChu = KHGhiChu ) 


GO
/****** Object:  StoredProcedure [dbo].[SP_tblKhachHang_Update]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblKhachHang_Update]


@KHMa    char,
@KHTen    nvarchar(150),
@KHDiaChi    nvarchar(150),
@KHMaSoThue    char,
@KHDienThoai    char,
@KHGhiChu    nvarchar(150)

AS

Update tblKhachHang

Set
	
	KHTen = @KHTen,
	KHDiaChi = @KHDiaChi,
	KHMaSoThue = @KHMaSoThue,
	KHDienThoai = @KHDienThoai,
	KHGhiChu = @KHGhiChu
Where

KHMa = @KHMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblKho_Delete]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblKho_Delete]

@KMa char

AS

Delete 
tblKho


where KMa=@KMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblKho_Insert]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblKho_Insert]


@KTen nvarchar(150),
@KNguoiLienHe nvarchar(150),
@KDiaChi nvarchar(150),
@KDienThoai char,
@KNguoiQuanLi nvarchar(150),
@KGhiChu nvarchar(150)

AS

Insert into tblKho
(
KTen,
KNguoiLienHe,
KDiaChi,
KDienThoai,
KNguoiQuanLi,
KGhiChu
)
values
(
@KTen,
@KNguoiLienHe,
@KDiaChi,
@KDienThoai,
@KNguoiQuanLi,
@KGhiChu
)


GO
/****** Object:  StoredProcedure [dbo].[SP_tblKho_Select]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblKho_Select]


@KMa char,
@KTen nvarchar(50),
@KNguoiLienHe nvarchar(50),
@KDiaChi nvarchar(50),
@KDienThoai char,
@KNguoiQuanLi nvarchar(50),
@KGhiChu nvarchar(50)

AS

Select 

KMa,
KTen,
KNguoiLienHe,
KDiaChi,
KDienThoai,
KNguoiQuanLi,
KGhiChu

from tblKho

where 
( @KMa is null or @KMa = KMa )  and 
( @KTen is null or @KTen = KTen )  and 
( @KNguoiLienHe is null or @KNguoiLienHe = KNguoiLienHe )  and 
( @KDiaChi is null or @KDiaChi = KDiaChi )  and 
( @KDienThoai is null or @KDienThoai = KDienThoai )  and 
( @KNguoiQuanLi is null or @KNguoiQuanLi = KNguoiQuanLi )  and 
( @KGhiChu is null or @KGhiChu = KGhiChu ) 


GO
/****** Object:  StoredProcedure [dbo].[SP_tblKho_Update]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblKho_Update]


@KMa    char,
@KTen    nvarchar(150),
@KNguoiLienHe    nvarchar(150),
@KDiaChi    nvarchar(150),
@KDienThoai    char,
@KNguoiQuanLi    nvarchar(150),
@KGhiChu    nvarchar(150)

AS

Update tblKho

Set
	
	KTen = @KTen,
	KNguoiLienHe = @KNguoiLienHe,
	KDiaChi = @KDiaChi,
	KDienThoai = @KDienThoai,
	KNguoiQuanLi = @KNguoiQuanLi,
	KGhiChu = @KGhiChu
Where

KMa = @KMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNhanVien_Delete]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNhanVien_Delete]

@NVMa char

AS

Delete 
tblNhanVien


where NVMa=@NVMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNhanVien_Insert]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNhanVien_Insert]


@NVTen nvarchar(150),
@NVGhiChu nvarchar(150),
@BPMa char

AS

Insert into tblNhanVien
(
NVTen,
NVGhiChu,
BPMa
)
values
(
@NVTen,
@NVGhiChu,
@BPMa
)


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNhanVien_Select]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNhanVien_Select]


@NVMa char,
@NVTen nvarchar(50),
@NVGhiChu nvarchar(50),
@BPMa char

AS

Select 

NVMa,
NVTen,
NVGhiChu,
BPMa

from tblNhanVien

where 
( @NVMa is null or @NVMa = NVMa )  and 
( @NVTen is null or @NVTen = NVTen )  and 
( @NVGhiChu is null or @NVGhiChu = NVGhiChu )  and 
( @BPMa is null or @BPMa = BPMa ) 


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNhanVien_Update]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNhanVien_Update]


@NVMa    char,
@NVTen    nvarchar(150),
@NVGhiChu    nvarchar(150),
@BPMa    char

AS

Update tblNhanVien

Set
	
	NVTen = @NVTen,
	NVGhiChu = @NVGhiChu,
	BPMa = @BPMa
Where

NVMa = @NVMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNhapKho_Delete]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNhapKho_Delete]

@NKMa char

AS

Delete 
tblNhapKho


where NKMa=@NKMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNhapKho_Insert]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNhapKho_Insert]


@HHMa char,
@KMa char,
@DVMa char,
@NKNgay datetime,
@NKSL int,
@NKGia money,
@NKThanhTien money,
@NPPMa char

AS

Insert into tblNhapKho
(
HHMa,
KMa,
DVMa,
NKNgay,
NKSL,
NKGia,
NKThanhTien,
NPPMa
)
values
(
@HHMa,
@KMa,
@DVMa,
@NKNgay,
@NKSL,
@NKGia,
@NKThanhTien,
@NPPMa
)


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNhapKho_Select]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNhapKho_Select]


@NKMa char,
@HHMa char,
@KMa char,
@DVMa char,
@NKNgay datetime,
@NKSL int,
@NKGia money,
@NKThanhTien money,
@NPPMa char

AS

Select 

NKMa,
HHMa,
KMa,
DVMa,
NKNgay,
NKSL,
NKGia,
NKThanhTien,
NPPMa

from tblNhapKho

where 
( @NKMa is null or @NKMa = NKMa )  and 
( @HHMa is null or @HHMa = HHMa )  and 
( @KMa is null or @KMa = KMa )  and 
( @DVMa is null or @DVMa = DVMa )  and 
( @NKNgay is null or @NKNgay = NKNgay )  and 
( @NKSL is null or @NKSL = NKSL )  and 
( @NKGia is null or @NKGia = NKGia )  and 
( @NKThanhTien is null or @NKThanhTien = NKThanhTien )  and 
( @NPPMa is null or @NPPMa = NPPMa ) 


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNhapKho_Update]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNhapKho_Update]


@NKMa    char,
@HHMa    char,
@KMa    char,
@DVMa    char,
@NKNgay    datetime,
@NKSL    int,
@NKGia    money,
@NKThanhTien    money,
@NPPMa    char

AS

Update tblNhapKho

Set
	
	HHMa = @HHMa,
	KMa = @KMa,
	DVMa = @DVMa,
	NKNgay = @NKNgay,
	NKSL = @NKSL,
	NKGia = @NKGia,
	NKThanhTien = @NKThanhTien,
	NPPMa = @NPPMa
Where

NKMa = @NKMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNhom_Delete]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNhom_Delete]

@NMa char

AS

Delete 
tblNhom


where NMa=@NMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNhom_Insert]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNhom_Insert]


@NTen nchar,
@NGhiChu nvarchar(150),
@KMa char

AS

Insert into tblNhom
(
NTen,
NGhiChu,
KMa
)
values
(
@NTen,
@NGhiChu,
@KMa
)


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNhom_Select]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNhom_Select]


@NMa char,
@NTen nchar,
@NGhiChu nvarchar(50),
@KMa char

AS

Select 

NMa,
NTen,
NGhiChu,
KMa

from tblNhom

where 
( @NMa is null or @NMa = NMa )  and 
( @NTen is null or @NTen = NTen )  and 
( @NGhiChu is null or @NGhiChu = NGhiChu )  and 
( @KMa is null or @KMa = KMa ) 


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNhom_Update]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNhom_Update]


@NMa    char,
@NTen    nchar,
@NGhiChu    nvarchar(150),
@KMa    char

AS

Update tblNhom

Set
	
	NTen = @NTen,
	NGhiChu = @NGhiChu,
	KMa = @KMa
Where

NMa = @NMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNPP_Delete]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNPP_Delete]

@NPPMa char

AS

Delete 
tblNPP


where NPPMa=@NPPMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNPP_Insert]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNPP_Insert]


@NPPTen nvarchar(150),
@NPPDiaChi nvarchar(150),
@NPPMaSoThue nchar,
@NPPDienThoai nchar,
@NPPGhiChu nvarchar(150)

AS

Insert into tblNPP
(
NPPTen,
NPPDiaChi,
NPPMaSoThue,
NPPDienThoai,
NPPGhiChu
)
values
(
@NPPTen,
@NPPDiaChi,
@NPPMaSoThue,
@NPPDienThoai,
@NPPGhiChu
)


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNPP_Select]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNPP_Select]


@NPPMa char,
@NPPTen nvarchar(50),
@NPPDiaChi nvarchar(50),
@NPPMaSoThue nchar,
@NPPDienThoai nchar,
@NPPGhiChu nvarchar(50)

AS

Select 

NPPMa,
NPPTen,
NPPDiaChi,
NPPMaSoThue,
NPPDienThoai,
NPPGhiChu

from tblNPP

where 
( @NPPMa is null or @NPPMa = NPPMa )  and 
( @NPPTen is null or @NPPTen = NPPTen )  and 
( @NPPDiaChi is null or @NPPDiaChi = NPPDiaChi )  and 
( @NPPMaSoThue is null or @NPPMaSoThue = NPPMaSoThue )  and 
( @NPPDienThoai is null or @NPPDienThoai = NPPDienThoai )  and 
( @NPPGhiChu is null or @NPPGhiChu = NPPGhiChu ) 


GO
/****** Object:  StoredProcedure [dbo].[SP_tblNPP_Update]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblNPP_Update]


@NPPMa    char,
@NPPTen    nvarchar(150),
@NPPDiaChi    nvarchar(150),
@NPPMaSoThue    nchar,
@NPPDienThoai    nchar,
@NPPGhiChu    nvarchar(150)

AS

Update tblNPP

Set
	
	NPPTen = @NPPTen,
	NPPDiaChi = @NPPDiaChi,
	NPPMaSoThue = @NPPMaSoThue,
	NPPDienThoai = @NPPDienThoai,
	NPPGhiChu = @NPPGhiChu
Where

NPPMa = @NPPMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblPhanQuyen_Delete]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblPhanQuyen_Delete]

@Username char

AS

Delete 
tblPhanQuyen


where Username=@Username


GO
/****** Object:  StoredProcedure [dbo].[SP_tblPhanQuyen_Insert]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblPhanQuyen_Insert]


@Password char,
@NVMa char

AS

Insert into tblPhanQuyen
(
Password,
NVMa
)
values
(
@Password,
@NVMa
)


GO
/****** Object:  StoredProcedure [dbo].[SP_tblPhanQuyen_Select]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblPhanQuyen_Select]


@Username char,
@Password char,
@NVMa char

AS

Select 

Username,
Password,
NVMa

from tblPhanQuyen

where 
( @Username is null or @Username = Username )  and 
( @Password is null or @Password = Password )  and 
( @NVMa is null or @NVMa = NVMa ) 


GO
/****** Object:  StoredProcedure [dbo].[SP_tblPhanQuyen_Update]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblPhanQuyen_Update]


@Username    char,
@Password    char,
@NVMa    char

AS

Update tblPhanQuyen

Set
	
	Password = @Password,
	NVMa = @NVMa
Where

Username = @Username


GO
/****** Object:  StoredProcedure [dbo].[SP_tblXuatKho_Delete]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblXuatKho_Delete]

@XKMa char

AS

Delete 
tblXuatKho


where XKMa=@XKMa


GO
/****** Object:  StoredProcedure [dbo].[SP_tblXuatKho_Insert]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblXuatKho_Insert]


@HHMa char,
@KMa char,
@DVMa char,
@XKSL int,
@XKGia money,
@KHMa char,
@XKNgay datetime,
@XKThanhTien money

AS

Insert into tblXuatKho
(
HHMa,
KMa,
DVMa,
XKSL,
XKGia,
KHMa,
XKNgay,
XKThanhTien
)
values
(
@HHMa,
@KMa,
@DVMa,
@XKSL,
@XKGia,
@KHMa,
@XKNgay,
@XKThanhTien
)


GO
/****** Object:  StoredProcedure [dbo].[SP_tblXuatKho_Select]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblXuatKho_Select]


@XKMa char,
@HHMa char,
@KMa char,
@DVMa char,
@XKSL int,
@XKGia money,
@KHMa char,
@XKNgay datetime,
@XKThanhTien money

AS

Select 

XKMa,
HHMa,
KMa,
DVMa,
XKSL,
XKGia,
KHMa,
XKNgay,
XKThanhTien

from tblXuatKho

where 
( @XKMa is null or @XKMa = XKMa )  and 
( @HHMa is null or @HHMa = HHMa )  and 
( @KMa is null or @KMa = KMa )  and 
( @DVMa is null or @DVMa = DVMa )  and 
( @XKSL is null or @XKSL = XKSL )  and 
( @XKGia is null or @XKGia = XKGia )  and 
( @KHMa is null or @KHMa = KHMa )  and 
( @XKNgay is null or @XKNgay = XKNgay )  and 
( @XKThanhTien is null or @XKThanhTien = XKThanhTien ) 


GO
/****** Object:  StoredProcedure [dbo].[SP_tblXuatKho_Update]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[SP_tblXuatKho_Update]


@XKMa    char,
@HHMa    char,
@KMa    char,
@DVMa    char,
@XKSL    int,
@XKGia    money,
@KHMa    char,
@XKNgay    datetime,
@XKThanhTien    money

AS

Update tblXuatKho

Set
	
	HHMa = @HHMa,
	KMa = @KMa,
	DVMa = @DVMa,
	XKSL = @XKSL,
	XKGia = @XKGia,
	KHMa = @KHMa,
	XKNgay = @XKNgay,
	XKThanhTien = @XKThanhTien
Where

XKMa = @XKMa


GO
/****** Object:  Table [dbo].[tblBoPhan]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBoPhan](
	[BPMa] [char](10) NOT NULL,
	[BPTen] [nvarchar](150) NOT NULL,
	[BPGhiChu] [nvarchar](150) NULL,
 CONSTRAINT [PK_tblBoPhan] PRIMARY KEY CLUSTERED 
(
	[BPMa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDonVi]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDonVi](
	[DVMa] [char](10) NOT NULL,
	[DVTen] [nvarchar](50) NULL,
	[DVGhiChu] [nvarchar](150) NULL,
 CONSTRAINT [PK_tblDonVi] PRIMARY KEY CLUSTERED 
(
	[DVMa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHangHoa]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHangHoa](
	[HHMa] [char](10) NOT NULL,
	[HHTen] [nvarchar](25) NOT NULL,
	[HHGia] [money] NOT NULL,
	[DVMa] [char](10) NULL,
	[KMa] [char](10) NULL,
	[NPPMa] [char](10) NULL,
	[HHTonHienTai] [int] NOT NULL,
	[NMa] [char](10) NULL,
 CONSTRAINT [PK_tblKhoHangHoa] PRIMARY KEY CLUSTERED 
(
	[HHMa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[KHMa] [char](10) NOT NULL,
	[KHTen] [nvarchar](50) NOT NULL,
	[KHDiaChi] [nvarchar](150) NULL,
	[KHMaSoThue] [char](15) NULL,
	[KHDienThoai] [char](15) NULL,
	[KHGhiChu] [nvarchar](150) NULL,
 CONSTRAINT [PK_tblKhachHang] PRIMARY KEY CLUSTERED 
(
	[KHMa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblKho]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKho](
	[KMa] [char](10) NOT NULL,
	[KTen] [nvarchar](50) NOT NULL,
	[KNguoiLienHe] [nvarchar](50) NULL,
	[KDiaChi] [nvarchar](50) NULL,
	[KDienThoai] [char](15) NULL,
	[KNguoiQuanLi] [nvarchar](50) NULL,
	[KGhiChu] [nvarchar](150) NULL,
 CONSTRAINT [PK_tblKho] PRIMARY KEY CLUSTERED 
(
	[KMa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLuuMK]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLuuMK](
	[name] [char](20) NULL,
	[pas] [char](20) NOT NULL,
	[checked] [bit] NOT NULL,
	[num] [char](10) NOT NULL,
 CONSTRAINT [PK_tblLuuMK] PRIMARY KEY CLUSTERED 
(
	[num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[NVMa] [char](10) NOT NULL,
	[NVTen] [nvarchar](50) NOT NULL,
	[NVGhiChu] [nvarchar](150) NULL,
	[BPMa] [char](10) NULL,
 CONSTRAINT [PK_tblNhanVien] PRIMARY KEY CLUSTERED 
(
	[NVMa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNhapKho]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhapKho](
	[NKMa] [char](10) NOT NULL,
	[HHMa] [char](10) NULL,
	[KMa] [char](10) NULL,
	[DVMa] [char](10) NULL,
	[NKNgay] [datetime] NULL,
	[NKSL] [int] NOT NULL,
	[NKGia] [money] NOT NULL,
	[NKThanhTien] [money] NULL,
	[NPPMa] [char](10) NULL,
 CONSTRAINT [PK_tblNhapKho] PRIMARY KEY CLUSTERED 
(
	[NKMa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNhom]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhom](
	[NMa] [char](10) NOT NULL,
	[NTen] [nchar](25) NOT NULL,
	[NGhiChu] [nvarchar](150) NULL,
	[KMa] [char](10) NULL,
 CONSTRAINT [PK_tblNhom] PRIMARY KEY CLUSTERED 
(
	[NMa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNPP]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNPP](
	[NPPMa] [char](10) NOT NULL,
	[NPPTen] [nvarchar](50) NOT NULL,
	[NPPDiaChi] [nvarchar](150) NOT NULL,
	[NPPMaSoThue] [nchar](15) NULL,
	[NPPDienThoai] [nchar](15) NULL,
	[NPPGhiChu] [nvarchar](150) NULL,
 CONSTRAINT [PK_tblNPP] PRIMARY KEY CLUSTERED 
(
	[NPPMa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPhanQuyen]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPhanQuyen](
	[Username] [char](20) NOT NULL,
	[Password] [char](20) NOT NULL,
	[NVMa] [char](10) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblXuatKho]    Script Date: 9/30/2016 4:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblXuatKho](
	[XKMa] [char](10) NOT NULL,
	[HHMa] [char](10) NULL,
	[KMa] [char](10) NULL,
	[DVMa] [char](10) NULL,
	[XKSL] [int] NOT NULL,
	[XKGia] [money] NOT NULL,
	[KHMa] [char](10) NULL,
	[XKNgay] [datetime] NULL,
	[XKThanhTien] [money] NULL,
 CONSTRAINT [PK_tblXuatKho] PRIMARY KEY CLUSTERED 
(
	[XKMa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblKhachHang] ([KHMa], [KHTen], [KHDiaChi], [KHMaSoThue], [KHDienThoai], [KHGhiChu]) VALUES (N'KH0001    ', N'Nguyễn Văn A', N'123, Hoàng Quốc Việt', N'987654321      ', N'123456789      ', NULL)
INSERT [dbo].[tblKho] ([KMa], [KTen], [KNguoiLienHe], [KDiaChi], [KDienThoai], [KNguoiQuanLi], [KGhiChu]) VALUES (N'K0001     ', N'Kho miền Bắc', N'Nguyễn Văn A', N'123 Hàng Mắm', N'               ', N'Nguyễn Văn A', N'')
INSERT [dbo].[tblLuuMK] ([name], [pas], [checked], [num]) VALUES (N'admin               ', N'admin               ', 1, N'1         ')
INSERT [dbo].[tblPhanQuyen] ([Username], [Password], [NVMa]) VALUES (N'admin               ', N'admin               ', NULL)
INSERT [dbo].[tblPhanQuyen] ([Username], [Password], [NVMa]) VALUES (N'user                ', N'user                ', NULL)
ALTER TABLE [dbo].[tblHangHoa] ADD  CONSTRAINT [DF_tblHangHoa_HHMa]  DEFAULT ('HH0001') FOR [HHMa]
GO
ALTER TABLE [dbo].[tblHangHoa] ADD  CONSTRAINT [DF_tblHangHoa_DVMa]  DEFAULT (NULL) FOR [DVMa]
GO
ALTER TABLE [dbo].[tblHangHoa] ADD  CONSTRAINT [DF_tblHangHoa_NPPMa]  DEFAULT (NULL) FOR [NPPMa]
GO
ALTER TABLE [dbo].[tblHangHoa] ADD  CONSTRAINT [DF_tblHangHoa_HHTonHienTai]  DEFAULT ((0)) FOR [HHTonHienTai]
GO
ALTER TABLE [dbo].[tblKhachHang] ADD  CONSTRAINT [DF_tblKhachHang_KHMa]  DEFAULT ('KH0001') FOR [KHMa]
GO
ALTER TABLE [dbo].[tblHangHoa]  WITH CHECK ADD  CONSTRAINT [FK_tblHangHoa_tblDonVi] FOREIGN KEY([DVMa])
REFERENCES [dbo].[tblDonVi] ([DVMa])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[tblHangHoa] CHECK CONSTRAINT [FK_tblHangHoa_tblDonVi]
GO
ALTER TABLE [dbo].[tblHangHoa]  WITH CHECK ADD  CONSTRAINT [FK_tblHangHoa_tblNhom] FOREIGN KEY([NMa])
REFERENCES [dbo].[tblNhom] ([NMa])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[tblHangHoa] CHECK CONSTRAINT [FK_tblHangHoa_tblNhom]
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanVien_tblBoPhan] FOREIGN KEY([BPMa])
REFERENCES [dbo].[tblBoPhan] ([BPMa])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [FK_tblNhanVien_tblBoPhan]
GO
ALTER TABLE [dbo].[tblNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_tblNhapKho_tblHangHoa] FOREIGN KEY([HHMa])
REFERENCES [dbo].[tblHangHoa] ([HHMa])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblNhapKho] CHECK CONSTRAINT [FK_tblNhapKho_tblHangHoa]
GO
ALTER TABLE [dbo].[tblNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_tblNhapKho_tblNPP] FOREIGN KEY([NPPMa])
REFERENCES [dbo].[tblNPP] ([NPPMa])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblNhapKho] CHECK CONSTRAINT [FK_tblNhapKho_tblNPP]
GO
ALTER TABLE [dbo].[tblNhom]  WITH CHECK ADD  CONSTRAINT [FK_tblNhom_tblKho] FOREIGN KEY([KMa])
REFERENCES [dbo].[tblKho] ([KMa])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[tblNhom] CHECK CONSTRAINT [FK_tblNhom_tblKho]
GO
ALTER TABLE [dbo].[tblPhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_tblPhanQuyen_tblNhanVien] FOREIGN KEY([NVMa])
REFERENCES [dbo].[tblNhanVien] ([NVMa])
GO
ALTER TABLE [dbo].[tblPhanQuyen] CHECK CONSTRAINT [FK_tblPhanQuyen_tblNhanVien]
GO
ALTER TABLE [dbo].[tblXuatKho]  WITH CHECK ADD  CONSTRAINT [FK_tblXuatKho_tblHangHoa] FOREIGN KEY([HHMa])
REFERENCES [dbo].[tblHangHoa] ([HHMa])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tblXuatKho] CHECK CONSTRAINT [FK_tblXuatKho_tblHangHoa]
GO
ALTER TABLE [dbo].[tblXuatKho]  WITH CHECK ADD  CONSTRAINT [FK_tblXuatKho_tblKhachHang] FOREIGN KEY([KHMa])
REFERENCES [dbo].[tblKhachHang] ([KHMa])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[tblXuatKho] CHECK CONSTRAINT [FK_tblXuatKho_tblKhachHang]
GO
USE [master]
GO
ALTER DATABASE [QuanLiKho] SET  READ_WRITE 
GO
