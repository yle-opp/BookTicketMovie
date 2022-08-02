create database QLDatVeXemPhim;
use  QLDatVeXemPhim ;

create table quocgia(
	id int auto_increment,
    ten_quocgia varchar(255),
    primary key(id)
);
INSERT INTO `quocgia` (`id`,`ten_quocgia`) VALUES
(1,'AMERICA'),
(2,'VIETNAM'),
(3,'KOREA'),
(4,'JAPAN'),
(5,'FRANCE'),
(6,'ENGLAND');
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
INSERT INTO `datve` (`id`, `id_makhachhang`, `id_lichchieu`, `id_ghengoi`, `gia`, `trangthai_ghe`) VALUES
(1, 1, 45, 750000, 1),
(2, 2, 135, 750000, 0),
 (3, 11, 101, 75000, 1),
(4, 22, 102, 90000, 0),
(5, 33, 103, 85000, 0),
(6, 44, 104, 105000, 1);

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
INSERT INTO `phim` (`id`, `id_rapchieu`, `id_quocgia`, `tenphim`, `mota`, `trailerphim`, `theloai`, `dienvien`, `nhasanxuat`, `ngaykhoichieu`, `thoiluong`, `poster`,`phimcens`) VALUES
(1, 84, 1,'Liên minh siêu thú', 'Trong “Liên Minh Siêu Thú DC”, Siêu Cún Krypto và Superman là cặp bài trùng
không thể tách rời, cùng sở hữu những siêu năng lực tương tự và cùng nhau chiến đấu chống lại tội phạm tại
thành phố Metropolis. Khi Superman và những thành viên của Liên Minh Công Lý bị bắt cóc, Krypto phải thuyết phục 
cậu chàng Ace luộm thuộm, nàng Heo PB, Rùa Merton và Sóc Chip khai phá những sức mạnh tiềm ẩn và cùng nhau giải 
các siêu anh hùng. “Liên Minh Siêu Thú DC” có sự góp giọng của bộ đôi ngôi sao nổi tiếng bậc nhất
Hollywood Dwayne Johnson (lồng tiếng cho Siêu cún Krypto) và Kevin Hart (Superman). Đặc biệt, tài tử Keanu Reeves 
sẽ đảm nhận những câu thoại chất lừ đến từ Batman.', 'https://youtu.be/GrBRGS6Z-jI', 'Hoạt hình',
'wayne Johnson, Kevin Hart, Keanu Reeves', 'DC Entertainment, Seven Bucks Productions, Warner Animation Group',
'2022-07-29', '1:46:00', 'https://www.cgv.vn/default/dc-pets.html', 'P'),
(2, 89, 1,'Chuyện ma giảng đường - học kỳ 2', 'bộ phim dựa trên mạch truyện kinh dị lấy bối cảnh trong
khuôn viên trường đại học, đề cập đến những rắc rối và nỗi bức xúc mà thanh thiếu niên cũng như thế hệ trẻ 
đang trải qua trong quá trình chuyển đổi. Lấy ý tưởng về “những bóng ma trong trường đại học”, bộ phim được 
xây dựng kịch bản từ 3 trong số những câu chuyện ma rùng rợn nhất có thật tại các trường đại học bị ma ám với cách
kể chuyện mới lạ nhưng vẫn duy trì được tất cả các yếu tố kinh dị khiến Haunted Universities Second Semester
(tựa Việt: Chuyện Ma Giảng Đường – Học Kỳ 2) trở nên rùng rợn theo cách riêng, vượt ra khỏi khuôn khổ
của một câu chuyện ma quen thuộc với cách lột tả nội dung chân thực nhất liên quan sâu sắc đến xã hội ngày nay.',
'https://youtu.be/7Q72BKYxYVg', 'Kinh dị', 'Krit Jirapattananuwong, Kemisra Poladej, Panisra Rikulsurakarn,
Teeradon “James” Supanpinyo', 'Pataraporn Weerasakwong , Jatupong Rungruangdechapat, Ekapon Sethasuk', '2022-07-29',
'2:06:00', 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/p/o/poster_700_x_1000_px.jpg',
'c16'),
(3, 95,3, 'Điều ước cuối của tù nhân 2037', ' Ở tuổi 19, thay vì đến trường như bao bạn bè đồng trang lứa,
Yoon-yeong phải nỗ lực hết mình để đi làm thêm kiếm tiền. Khao khát một cuộc sống tốt đẹp hơn cho mình và người mẹ
khiếm thính, Yoon-yeong đặt mục tiêu thi đỗ kỳ thi công chức lên trên hết. Bất ngờ và trớ trêu thay,
một sự cố khủng khiếp xảy ra, biến Yoon-yeong từ nạn nhân đáng thương trở thành kẻ giết người.
Trong thời điểm tuyệt vọng và bất lực nhất, Yoon-yeong đã gặp những người chị em trong phòng giam số 12.
Đằng sau mỗi người là một câu chuyện khác nhau, nhưng họ đã trao nhau tình yêu thương và niềm hy vọng để cùng
hướng về một tương lai tươi sáng ngoài song sắt nhà tù.', 'https://youtu.be/1AXeEfyTLKs', 'Tâm lý', 'Hong Je Yi, 
Kim Ji Young, Kim Mi Hwa, Hwang Seok Jeong, Shin Eun Hung, Jeon So Min, Yoon Mi Kyung, Jung In Ki', 'Mo Hong Jin',
'2022-07-29', '1:51:00', 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/m/g/mg_main-poster_layered_1_.jpg',
'C16'),
(4, 73,2, 'Dân chơi không sợ con rơi', 'Quân, một dân chơi miệt vườn với tài “sát gái” thượng hạng, bỗng một ngày 
phải gánh lấy "cục nợ con rơi" từ bạn gái cũ. Được sự trợ giúp "ba phần đắc lực bảy phần phá đám" của Tám Mánh,
Quân dần mất hết hy vọng tìm lại mẹ cho đứa bé và dần trở thành người cha hoàn hảo trong mắt Bé Thỏ. Cuộc sống đầy 
sắc màu và tiếng cười của hai cha con bị đặt trước thử thách lớn lao khi người mẹ mà Bé Thỏ ngày đêm mong ngóng
cuối cùng cũng xuất hiện…', 'https://youtu.be/34OJjBVw3do', 'Hài, Tâm lý', 'Tiến Luật, bé Bảo Thi, Huỳnh Phương, Nguyên Thảo, Vân Trang,
Ngô Kiến Huy, Lê Khánh,...', 'Huỳnh Đông', '2022-07-29', '1:28:00', 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/8/0/800x1200-dckscr_1_.jpg',
'C13'),
(5, 09,3, 'Quyết tâm chia tay', 'Một thanh tra cảnh sát rơi vào lưới tình với goá phụ trẻ - nghi phạm giết người trong vụ án mà anh ta đang điều tra.',
'https://youtu.be/kdJvKwT2NAU', 'Hồi hộp, Tình cảm', 'Tang Wei, Park Hae Il', 'Park Chan Wook', '2022-07-15', '2:18:00',
'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/d/t/dtl_m-poster_w700xh1000_1_.jpg',
'C16'),
(6, 91,1, 'MINIONS: SỰ TRỖI DẬY CỦA GRU', 'Rất lâu trước khi trở thành một phản diện chuyên nghiệp, Gru chỉ là một
cậu bé 12 tuổi sống ở vùng ngoại ô vào những năm 1970, với ước mơ một ngày sẽ làm “bá chủ” thế giới. Và 3
“quả chuối” vàng biết đi từ trên trời rơi xuống đã là những đồng đội đầu tiên của Gru, bên cạnh ủng hộ cậu bé, 
cùng nhau thiết kế những vũ khí đầu tiên, thực hiện những phi vụ đầu tiên.', 'https://youtu.be/dTQXlDV16SY', 
'Hài, hoạt hình, phiêu lưu', 'Steve Carell, Lucy Lawless, Michelle Yeoh...', 'Kyle Balda, Brad Ableson, Jonathan del Val',
'2022-07-01', '1:28:00', 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/m/i/minions_2_-_kc_01.7.22_1_.jpg',
'p'),
(7, 03, 1,'Linh hồn vũ nữ', 'Sáu học sinh đi vào một ngôi làng hẻo lánh để thực hiện chương trình công ích. Và họ không biết được rằng đây là vùng đất của những
linh hồn bị mắc kẹt dưới sự cai trị của Badarawuhi – một linh hồn vũ nữ', 'https://youtu.be/-Q1kXe1X0js', 'Kinh dị', 
'Aghniny Haque, Achmad Megantara, Aulia Sarah, Adinda Thomas, Tissa Biani, Fajar Nugra, Calvin Jeremy, v.v', 'Awi Suryadi',
'2022-07-22', '2:03:00', 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/l/i/linh_h_n_v_n_-_payoff_poster_k_ch_th_c_facebook_-_kc_22.07.2022_1_.jpg',
'C16'),
(8, 76, 2,'Là mây trên bầu trời ai đó', 'Nàng tiểu thư đỏng đảnh Mây sang Thái Lan để theo đuổi một “nam thần” nổi tiếng, tình cờ lại va phải anh chàng “oan gia” và 
cùng nhau trải qua những tình huống dở khóc dở cười', 'https://youtu.be/U4OwkJ9NLWw', 'Hài, tình cảm', 
'Ngọc Lan Vy, August Vachiravit, Hồng Vân, Trịnh Tú Trung, Hải Triều, Lưu Đông, Lâm Bảo Châu, Quỳnh Lý, Nhâm Phương Nam, Puvadol Vechwongsa, Pakorn Lum và Push Puttichai.',
'Thanadit Pradit', '2022-07-27', '1:29:00', 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/l/a/lamay_teaser_1_.jpg', 
'C13'),
(9, 50, 1,'PHI CÔNG SIÊU ĐẲNG MAVERICK', 'Sau hơn ba mươi năm phục vụ, Pete “Maverick” Mitchell từng nổi danh
là một phi công thử nghiệm quả cảm hàng đầu của Hải quân, né tránh cơ hội thăng chức, điều khiến anh cảm thấy 
bị bó buộc, để trở về làm chính mình.', 'https://youtu.be/ZR99nOkEolM', 'Hành động, phiêu lưu', 'Tom Cruise, Justin Marks, Peter Craig, Eric Warren Singer',
'Joseph Kosinski', '2022-05-27', '2:10:00', 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/t/o/top_gun_maverick_-_poster_28.03_1_.jpg',
'C13'),
(10, 34, 3,'THOÁT KHỎI MOGADISHU', 'Dựa trên một sự kiện lịch sử khó tin nhưng có thật, bộ phim tái hiện lại lần hợp tác gay cấn, chưa từng có tiền lệ giữa các
nhà ngoại giao Nam và Bắc Hàn nhằm giải thoát công dân của họ khỏi cuộc binh biến tại Somalia vào năm 1991.', 
'https://youtu.be/yz5XSicbWvQ', 'Hành động, hồi hộp, tâm lý', 'Kim Yoon-Seok, Jo In-Sung, Huh Joon-Ho,...', 
'Ryoo Seung-wan', '2022-07-15', '2:01:00', 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/m/a/main_poster_tho_t_kh_i_mogadishu_1_.jpg',
'C16');

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

