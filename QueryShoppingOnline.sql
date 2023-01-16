USE master
DROP DATABASE ShoppingOnline

CREATE DATABASE ShoppingOnline
USE ShoppingOnline


create table PRODUCT
(
	PRODUCT_ID char(10), -- Ma SP
	PRODUCT_NAME varchar(100), -- Ten SP
	PRODUCT_PRICE float, -- Gia SP
	PRODUCT_SIZE_S int, -- Con size S ko
	PRODUCT_SIZE_M int, -- Con size L ko
	PRODUCT_SIZE_L int, -- Con size M ko
	PRODUCT_SIZE_XL int, -- Con size XL ko
	PRODUCT_QUANTITY int, -- So luong san pham con lai
	PRODUCT_FROM varchar(40), -- Quoc gia san xuat
	PRODUCT_MATERIAL varchar(100), -- Chat lieu SP
)


create table RECEIPT
(
	RECEIPT_ID char(10),
	RECEIPT_DATE nvarchar(50),
	RECEIPT_PRICE float,

	constraint PK_RECEIPT primary key (RECEIPT_ID)
)
go

drop table RECEIPT_DETAILS 
create table RECEIPT_DETAILS
(
	RECEIPT_DETAILS_ID char(7),
	RECEIPT_DETAILS_PRODUCT char(5),
	RECEIPT_DETAILS_SIZE nvarchar(10),
	RECEIPT_DETAILS_QUATITY int,
	RECEIPT_DETAILS_IS_SELECTED int,
)
go

create table SHOPPINGPRODUCT
(
	[ID] [varchar](150) NULL,  
    [Name] [varchar](150) NULL,  
	[Size] [varchar](10) NULL,
	[Quantity] [int] NULL,  
    [Price] [int] NULL   
)

select * from SHOPPINGPRODUCT

-- Nhập dữ liệu cho receipt
insert into RECEIPT values('re01','12-11-2022 12:24:35 PM',50)
insert into RECEIPT values('re02','12-11-2022 12:24:35 PM',50)
insert into RECEIPT values('re03','12-11-2022 12:24:35 PM',50)
insert into RECEIPT values('re04','12-11-2022 12:24:35 PM',50)
insert into RECEIPT values('re05','12-11-2022 12:24:35 PM',50)

-- Nhập dữ liệu cho receipt details
insert into RECEIPT_DETAILS values('re01','pant1','S',20, 1)
insert into RECEIPT_DETAILS values('re01','pant2','L',30, 1)
insert into RECEIPT_DETAILS values('re01','pant3','M',40, 1)
insert into RECEIPT_DETAILS values('re01','pant4','S',50, 1)
insert into RECEIPT_DETAILS values('re01','pant5','L',60, 1)


select * from PRODUCT

-- Nhập dữ liệu cho bảng PANT
insert into PRODUCT values('pant1','Y-3 LEOPARD PRINT SOCCER PANTS',450,120,120,50,50, 20, 'Vietnam', '100% recycled nylon plain weave')
insert into PRODUCT values('pant2','ESSENTIALS FRENCH TERRY TAPERED-CUFF 3-STRIPES PANTS',25,120,120,50,50, 10, 'China', '53% cotton, 36% recycled polyester, 11% viscose fleece')
insert into PRODUCT values('pant3','TIRO 21 TRACK PANTS',30,120,120,50,50, 10, 'US', '100% recycled polyester doubleknit')
insert into PRODUCT values('pant4','TIRO TARTAN PANTS',32,120,120,50,50, 10, 'Lao', '100% recycled polyester doubleknit')
insert into PRODUCT values('pant5','TIRO TRACK PANTS',50,120,120,50,50, 10, 'Singapo', '100% recycled polyester doubleknit')
insert into PRODUCT values('pant6','TIRO TARTAN PANTS',42,120,120,50,50, 10, 'Thailand', '100% recycled nylon plain weave')
insert into PRODUCT values('pant7','ESSENTIALS FRENCH TERRY',45,120,120,50,50, 10, 'Vietnam', '100% recycled polyester doubleknit')
insert into PRODUCT values('pant8','Y-3 LEOPARD PRINT SOCCER PANTS',32,120,120,50,50, 10, 'Vietnam', '100% recycled nylon plain weave')
insert into PRODUCT values('pant9','TIRO TARTAN PANTS',12,120,120,50,50, 10, 'Malaysia', '100% recycled polyester doubleknit')
insert into PRODUCT values('pant10','Y-3 LEOPARD PRINT SOCCER PANTSS',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('pant11','Y-3 LEOPARD PRINT SOCCER PANTSS',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('pant12','Y-3 LEOPARD PRINT SOCCER PANTSS',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('pant13','Y-3 LEOPARD PRINT SOCCER PANTSS',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('pant14','Y-3 LEOPARD PRINT SOCCER PANTSS',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('pant15','Y-3 LEOPARD PRINT SOCCER PANTSS',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('pant16','Y-3 LEOPARD PRINT SOCCER PANTS',450,120,120,50,50, 20, 'Vietnam', '100% recycled nylon plain weave')
insert into PRODUCT values('pant17','ESSENTIALS FRENCH TERRY TAPERED-CUFF 3-STRIPES PANTS',25,120,120,50,50, 10, 'China', '53% cotton, 36% recycled polyester, 11% viscose fleece')
insert into PRODUCT values('pant18','TIRO 21 TRACK PANTS',30,120,120,50,50, 10, 'US', '100% recycled polyester doubleknit')
insert into PRODUCT values('pant19','TIRO TARTAN PANTS',32,120,120,50,50, 10, 'Lao', '100% recycled polyester doubleknit')
insert into PRODUCT values('pant20','TIRO TRACK PANTS',50,120,120,50,50, 10, 'Singapo', '100% recycled polyester doubleknit')


-- Nhập dữ liệu cho bảng Sweat Shirts Hoodie
insert into PRODUCT values('sw1','Y-3 LEOPARD PRINT SOCCER PANTS',450,120,120,50,50, 20, 'Vietnam', '100% recycled nylon plain weave')
insert into PRODUCT values('sw2','ESSENTIALS FRENCH TERRY TAPERED-CUFF 3-STRIPES PANTS',25,120,120,50,50, 10, 'China', '53% cotton, 36% recycled polyester, 11% viscose fleece')
insert into PRODUCT values('sw3','TIRO 21 TRACK PANTS',30,120,120,50,50, 10, 'US', '100% recycled polyester doubleknit')
insert into PRODUCT values('sw4','TIRO TARTAN PANTS',32,120,120,50,50, 10, 'Lao', '100% recycled polyester doubleknit')
insert into PRODUCT values('sw5','TIRO TRACK PANTS',50,120,120,50,50, 10, 'Singapo', '100% recycled polyester doubleknit')
insert into PRODUCT values('sw6','TIRO TARTAN PANTS',42,120,120,50,50, 10, 'Thailand', '100% recycled nylon plain weave')
insert into PRODUCT values('sw7','ESSENTIALS FRENCH TERRY',45,120,120,50,50, 10, 'Vietnam', '100% recycled polyester doubleknit')
insert into PRODUCT values('sw8','Y-3 LEOPARD PRINT SOCCER PANTS',32,120,120,50,50, 10, 'Vietnam', '100% recycled nylon plain weave')
insert into PRODUCT values('sw9','TIRO TARTAN PANTS',12,120,120,50,50, 10, 'Malaysia', '100% recycled polyester doubleknit')
insert into PRODUCT values('sw10','Y-3 LEOPARD PRINT SOCCER PANTSS',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('sw11','Y-3 LEOPARD PRINT SOCCER PANTSS',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('sw12','Y-3 LEOPARD PRINT SOCCER PANTSS',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('sw13','Y-3 LEOPARD PRINT SOCCER PANTSS',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('sw14','TIRO TARTAN PANTS',109,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('sw15','TIRO TRACK PANTS',100,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('sw16','Y-3 LEOPARD PRINT SOCCER PANTS',450,120,120,50,50, 20, 'Vietnam', '100% recycled nylon plain weave')
insert into PRODUCT values('sw17','ESSENTIALS FRENCH TERRY TAPERED-CUFF 3-STRIPES PANTS',25,120,120,50,50, 10, 'China', '53% cotton, 36% recycled polyester, 11% viscose fleece')
insert into PRODUCT values('sw18','TIRO 21 TRACK PANTS',30,120,120,50,50, 10, 'US', '100% recycled polyester doubleknit')
insert into PRODUCT values('sw19','TIRO TARTAN PANTS',32,120,120,50,50, 10, 'Lao', '100% recycled polyester doubleknit')
insert into PRODUCT values('sw20','TIRO TRACK PANTS',50,120,120,50,50, 10, 'Singapo', '100% recycled polyester doubleknit')

-- Nhập dữ liệu cho bảng Jacket
insert into PRODUCT values('jacket1','ESSENTIALS DOWN PARKA',450,120,120,50,50, 20, 'Vietnam', '100% recycled nylon plain weave')
insert into PRODUCT values('jacket2','ADICOLOR CLASSICS PRIMEBLUE SST TRACK JACKET',25,120,120,50,50, 10, 'China', '53% cotton, 36% recycled polyester, 11% viscose fleece')
insert into PRODUCT values('jacket3','TIRO 21 TRACK PANTS',30,120,120,50,50, 10, 'US', '100% recycled polyester doubleknit')
insert into PRODUCT values('jacket4','ESSENTIALS DOWN PARKA',32,120,120,50,50, 10, 'Lao', '100% recycled polyester doubleknit')
insert into PRODUCT values('jacket5','TIRO TRACK PANTS',50,120,120,50,50, 10, 'Singapo', '100% recycled polyester doubleknit')
insert into PRODUCT values('jacket6','TIRO TARTAN PANTS',42,120,120,50,50, 10, 'Thailand', '100% recycled nylon plain weave')
insert into PRODUCT values('jacket7','ESSENTIALS FRENCH TERRY',45,120,120,50,50, 10, 'Vietnam', '100% recycled polyester doubleknit')
insert into PRODUCT values('jacket8','Y-3 LEOPARD PRINT SOCCER PANTS',32,120,120,50,50, 10, 'Vietnam', '100% recycled nylon plain weave')
insert into PRODUCT values('jacket9','TIRO TARTAN PANTS',12,120,120,50,50, 10, 'Malaysia', '100% recycled polyester doubleknit')
insert into PRODUCT values('jacket10','Y-3 LEOPARD PRINT SOCCER PANTSS',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('jacket11','ESSENTIALS DOWN PARKA',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('jacket12','Y-3 LEOPARD PRINT SOCCER PANTSS',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('jacket13','ESSENTIALS DOWN PARKA',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('jacket14','4CMTE TRACK TOP',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('jacket15','Y-3 LEOPARD PRINT SOCCER PANTSS',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('jacket16','ESSENTIALS DOWN PARKA',450,120,120,50,50, 20, 'Vietnam', '100% recycled nylon plain weave')
insert into PRODUCT values('jacket17','ADICOLOR CLASSICS PRIMEBLUE SST TRACK JACKET',25,120,120,50,50, 10, 'China', '53% cotton, 36% recycled polyester, 11% viscose fleece')
insert into PRODUCT values('jacket18','TIRO 21 TRACK PANTS',30,120,120,50,50, 10, 'US', '100% recycled polyester doubleknit')
insert into PRODUCT values('jacket19','ESSENTIALS DOWN PARKA',32,120,120,50,50, 10, 'Lao', '100% recycled polyester doubleknit')
insert into PRODUCT values('jacket20','TIRO TRACK PANTS',50,120,120,50,50, 10, 'Singapo', '100% recycled polyester doubleknit')
-- Nhập dữ liệu cho bảng T-shirt and Top

insert into PRODUCT values('ts1','SPLASH ON GRAPHIC TEE',40,120,120,50,50, 20, 'Vietnam', '100% recycled nylon plain weave')
insert into PRODUCT values('ts2','BADGE OF SPORT TEE',25,120,120,50,50, 10, 'China', '53% cotton, 36% recycled polyester, 11% viscose fleece')
insert into PRODUCT values('ts3','OWN THE RUN TEE',31,120,120,50,50, 10, 'US', '100% recycled polyester doubleknit')
insert into PRODUCT values('ts4','ESSENTIALS DOWN PARKA',36,120,120,50,50, 10, 'Lao', '100% recycled polyester doubleknit')
insert into PRODUCT values('ts5','ADICOLOR ESSENTIALS TREFOIL TEES',51,120,120,50,50, 10, 'Singapo', '100% recycled polyester doubleknit')
insert into PRODUCT values('ts6','TIRO TARTAN PANTS',42,120,120,50,50, 10, 'Thailand', '100% recycled nylon plain weave')
insert into PRODUCT values('ts7','ESSENTIALS FRENCH TERRY',46,120,120,50,50, 10, 'Vietnam', '100% recycled polyester doubleknit')
insert into PRODUCT values('ts8','ADICOLOR ESSENTIALS TREFOIL TEE',32,120,120,50,50, 10, 'Vietnam', '100% recycled nylon plain weave')
insert into PRODUCT values('ts9','SPLASH ON GRAPHIC TEE',12,120,120,50,50, 10, 'Malaysia', '100% recycled polyester doubleknit')
insert into PRODUCT values('ts10','ADICOLOR ESSENTIALS TREFOIL TEE',38,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('ts11','ESSENTIALS DOWN PARKA',19,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('ts12','SPLASH ON GRAPHIC TEE',89,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('ts13','ESSENTIALS DOWN PARKA',39,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('ts14','4CMTE TRACK TOP',69,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('ts15','OWN THE RUN TEE',80,120,120,50,50, 10, 'China', '100% recycled polyester doubleknit')
insert into PRODUCT values('ts16','SPLASH ON GRAPHIC TEE',40,120,120,50,50, 20, 'Vietnam', '100% recycled nylon plain weave')
insert into PRODUCT values('ts17','BADGE OF SPORT TEE',25,120,120,50,50, 10, 'China', '53% cotton, 36% recycled polyester, 11% viscose fleece')
insert into PRODUCT values('ts18','OWN THE RUN TEE',31,120,120,50,50, 10, 'US', '100% recycled polyester doubleknit')
insert into PRODUCT values('ts19','ESSENTIALS DOWN PARKA',36,120,120,50,50, 10, 'Lao', '100% recycled polyester doubleknit')
insert into PRODUCT values('ts20','ADICOLOR ESSENTIALS TREFOIL TEES',51,120,120,50,50, 10, 'Singapo', '100% recycled polyester doubleknit')


select * from RECEIPT_DETAILS INNER JOIN PRODUCT on RECEIPT_DETAILS.RECEIPT_DETAILS_PRODUCT = PRODUCT.PRODUCT_ID
where RECEIPT_DETAILS.RECEIPT_DETAILS_ID = 're01'



go

select * from RECEIPT_DETAILS

-- Xóa một chi tiết hóa đơn
delete from RECEIPT_DETAILS where RECEIPT_DETAILS_ID = 're01' and RECEIPT_DETAILS_PRODUCT = 'pant2' and RECEIPT_DETAILS_SIZE = 'L'