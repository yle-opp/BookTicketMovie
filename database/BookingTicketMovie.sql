
create database QLDatVeXemPhim;
use  QLDatVeXemPhim ;

create table quocgia(
	id int auto_increment,
    ten_quocgia varchar(255),
    primary key(id)
);

create table  khachhang(
	id int not null auto_increment,
    hoten nvarchar(255),
    matkhau nchar(10),
    taikhoan nchar(20),
    hinhdaidien text,
    email nvarchar(255),
    diachi nvarchar(255),
    dienthoai  nchar(10),
    gioitinh nchar(10),
    ngaysinh int,
    primary key(id)
);
create table roleskh(
   id_role int,
   tenrole varchar(25),
   primary key(id_role)
);

create table role_khachhang(
	role_id int,
    user_id int,
    primary key(role_id,user_id),
    foreign key(role_id) references roleskh(id_role),
    foreign key(user_id) references khachhang(id)
);


create table  datve(
	id int not null auto_increment,
	id_makhachhang int,
	id_lichchieu int, 
    id_ghengoi int,
    gia double,
    trangthai_ghe int,
	primary key(id),
	foreign key(id_makhachhang) references khachhang(id),
    foreign key(id_lichchieu) references lichchieu(id),
    foreign key(id_ghengoi) references ghengoi(id)
    
);

create table  ghengoi(
	id int not null auto_increment,
    loaighe nchar(20),
    id_phong int,
    hang nchar(10),
    soghe nchar(20),
    primary key(id),
    foreign key(id_phong) references phong(id)
);
create table phim(
	id int not null auto_increment,
    id_rapchieu int,
    id_quocgia int,
	tenphim varchar(255),
    mota text , 
    trailerphim text,
    theloai varchar(255),
    dienvien varchar(255),
    nhasanxuat varchar(255),
    ngaykhoichieu datetime,
    thoiluong nchar(20),
    poster text,
    phimcens nchar(20),
	primary key(id),
    foreign key(id_quocgia) references quocgia(id)
	
);
create table  lichchieu(
	id int not null auto_increment,
	id_phim int,
    id_phong int,
    lichchieu date,
    thoigianbatdau time,
	thoigianketthuc time,
	primary key(id),
    foreign key(id_phim) references phim(id),
    foreign key(id_phong) references phong(id)
    
);
create table  rap(
	id int not null auto_increment,
    tenrap nvarchar(255),
    diachi nvarchar(255),
    primary key(id)
    
);

create table  phong(
	id int not null auto_increment,
    id_rap int,
    tenphong nvarchar(255),
    primary key(id),
	foreign key(id_rap) references rap(id)
);



