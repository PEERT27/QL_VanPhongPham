﻿create database QLVanPhongPham1
go

use QLVanPhongPham1
go

create table KHACHHANG
(
	MAKH INT NOT NULL PRIMARY KEY,
	TENKH NVARCHAR(20) NOT NULL,
	DIACHI NVARCHAR(30) NOT NULL,
	SODT VARCHAR(10)

)
GO

create table SANPHAM
(
	MaSanPham INT NOT NULL PRIMARY KEY,
	TenSanPham nvarchar(50) NOT NULL,
	TenLoaiSanPham nvarchar(50) NOT NULL,
	GiaNhap float NOT NULL,
	GiaBan float NOT NULL,
	TrangThai int NOT NULL
	
)
GO

CREATE TABLE LOAISANPHAM
(
	
	TenLoaiSanPham nvarchar(50) NOT NULL PRIMARY KEY,
	MaLoaiSanPham INT NOT NULL 
)
GO
create table DATHANG
(
	MADON INT NOT NULL PRIMARY KEY,
	MAKH INT NOT NULL,
	TENKH NVARCHAR(20) NOT NULL,
	MaSanPham INT NOT NULL,
	SOLUONG INT,
	NGAYBAN DATE,
	NGAYGIAO DATE

)
GO


alter table DATHANG
 add constraint StoLS
foreign key (MAKH)
references dbo.KHACHHANG

alter table DATHANG
 add constraint StoLA
foreign key (MaSanPham)
references dbo.SANPHAM

alter table SANPHAM
 add constraint StoLC
foreign key (TenLoaiSanPham)
references dbo.LOAISANPHAM


INSERT INTO KHACHHANG VALUES(1,N'MAI NGỌC KHANG',N'Bắc Ninh','0902651132')
INSERT INTO KHACHHANG VALUES(2,N'HUỲNH GIA THUẬN',N'TP HCM','0912354513')
INSERT INTO KHACHHANG VALUES(3,N'PHAN CHÍ CƯỜNG',N'TIỀN GIANG','0907799886')
INSERT INTO KHACHHANG VALUES(4,N'LÊ THÀNH AN',N'TIỀN GIANG','0902481132')
INSERT INTO KHACHHANG VALUES(5,N'CHÂU MINH QUÈ',N'ĐÀ NẴNG','0902651452')

INSERT INTO LOAISANPHAM VALUES (N'Máy Tính', 1)
INSERT INTO LOAISANPHAM VALUES (N'Giấy A3', 2)
INSERT INTO.LOAISANPHAM VALUES (N'Thước Kẻ', 3)
INSERT INTO.LOAISANPHAM VALUES (N'Balo', 4)
INSERT INTO.LOAISANPHAM VALUES (N'Bút chì', 5)
INSERT INTO.LOAISANPHAM VALUES (N'linh Kiện', 6)


INSERT INTO SANPHAM  VALUES (1,N'Túi Đeo Nam',N'Balo',13000.000,20000.000,1 )
INSERT INTO SANPHAM  VALUES (2,N'Thước KoPa',N'Thước Kẻ',90.000,110.000,5 )
INSERT INTO SANPHAM  VALUES (3,N'Giấy Thi',N'Giấy A3',50.000,60.000,100)
INSERT INTO SANPHAM  VALUES (4,N'Bút Bi Xanh',N'Bút chì',5.000,10.000,200 )
INSERT INTO SANPHAM  VALUES (5,N'Bút Bi Đỏ',N'Bút chì',5.000,10.000,30 )
INSERT INTO SANPHAM  VALUES (6,N'Casio',N'Máy Tính',500.000,600.000,40)

INSERT INTO DATHANG VALUES(1,1,N'MAI NGỌC KHANG',3,7,'2021-12-05','2021-12-10')
INSERT INTO DATHANG VALUES(2,3,N'PHAN CHÍ CƯỜNG',2,3,'2021-11-05','2021-12-10')
INSERT INTO DATHANG VALUES(3,1,N'MAI NGỌC KHANG',5,1,'2021-12-05','2021-12-10')
INSERT INTO DATHANG VALUES(4,4,N'LÊ THÀNH AN',4,2,'2021-09-02','2021-09-22')
INSERT INTO DATHANG VALUES(5,2,N'HUỲNH GIA THUẬN',3,7,'2021-12-05','2021-12-10')
