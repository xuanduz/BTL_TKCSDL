create database QuanLySinhVien2;

use quanlysinhvien2;

-- khoa
create table khoa(
	makhoa varchar(255) not null primary key,
    tenkhoa varchar(255) not null,
    namthanhlap date not null,
    diachikhoa varchar(255) not null,
    Email varchar(255) not null,
    truongkhoa varchar(255) not null
);

insert into khoa values('CT','Cong trinh','1995-11-13','Nha A1','ct1995@gmail.com','Nguyen Cong Trinh'),
						('CK','Co khi','1997-07-13','Nha A3','ckhi1997@gmail.com','Tran Co Khi'),
                        ('VT','Van tai','1999-07-01','Nha A4','vtai1999@gmail.com','Dao Van Tai'),
                        ('DDT','Dien-Dien tu','1991-06-09','Nha A7','ddt1991@gmail.com','Nguyen Dien Tu'),
                        ('KTXD','Ki thuat xay dung','1993-09-06','Nha A2','ktxd1993@gmail.com','Nguyen Xay Dung'),
                        ('CNTT','Cong nghe thong tin','2001-07-13','Nha A5','cntt2001@gmail.com','Dao Thong Tin'),
                        ('MTAT','Moi truong va an toan giao thong','2003-08-05','Nha A1','mtat2003@gmail.com','Ta Moi Truong'),
                        ('GDTC','Giao duc the chat','1990-04-03','San bong','gdtc1990@gmail.com','Tran Giao Duc'),
                        ('DTQT','Dao tao quoc te','2007-02-02','Nha A9','dtqt2007@gmail.com','Dao Quoc Te');


-- khoahoc
create table khoahoc(
	makhoahoc varchar(255) not null primary key,
    nambatdau date not null,
    namketthuc date not null
);

insert into khoahoc values('K50','2009-09-09','2013-09-09'),
							('K51','2010-09-09','2014-09-09'),
                            ('K52','2011-09-09','2016-09-09'),
                            ('K53','2012-09-09','2016-09-09'),
                            ('K54','2013-09-09','2017-09-09'),
                            ('K55','2014-09-09','2018-09-09'),
                            ('K56','2015-09-09','2018-09-09'),
                            ('K57','2016-09-09','2020-09-09'),
                            ('K58','2017-09-09','2022-09-09'),
                            ('K59','2018-09-09','2022-09-09'),
                            ('K60','2019-09-09','2023-09-09'),
                            ('K61','2020-09-09','2024-09-09'),
                            ('K62','2021-09-09','2025-09-09');
                            
		
-- chuongtrinhhoc
create table chuongtrinhhoc(
	maCT varchar(255) not null primary key,
    tenCT varchar(255) not null
);

insert into chuongtrinhhoc values('CQ','Chinh quy'),
									('TC','Tai chuc'),
                                    ('HTDT','Hop tac dao tao'),
                                    ('DTN','Dao tao nghe');   
                                    

-- co van hoc tap
create table covanhoctap(
	maCV varchar(255) not null primary key,
    tenCV varchar(255) not null,
    sđt int not null,
    Emailcv varchar(255) not null,
    hocham varchar(255) not null,
    makhoa varchar(255),
    foreign key(makhoa) references khoa(makhoa)
);

insert into covanhoctap values('000','Tran Quoc Tuan','0123456789','tuantq@gmail.com','Tien si','CNTT'),
								('001','Nguyen Van Hoang','0987654321','hoangvan@gmail.com','Giao su','CNTT'),
                                ('002','Dao Mai Lan','0345612388','lanmai@gmail.com','Tien si','CK'),
                                ('003','Dang Van Ngu','0986723143','nguvan@gmail.com','Tien si','KTXD'),
                                ('007','Nguyen Van Nam','0115682317','namvan@gmail.com','Pho tien si','DDT'),
                                ('010','Nguyen Linh Chi','0342561899','linhchi@gmail.com','Tien si','GDTC'),
                                ('013','Do Thuy Linh','0987123456','linhthuy@gmail.com','Pho giao su','DTQT'); 
                                
-- lop hoc phan
create table lophocphan(
	malopHP varchar(255) not null primary key,
    thoigian datetime not null,
    tenlophocphan varchar(255) not null,
    makhoa varchar(255),
    foreign key(makhoa) references khoa(makhoa)
);

insert into lophocphan values('N01.1','2020-07-24','Bao tri he thong-1-20','DDT'),
							 ('N01','2020-08-24','Bao tri he thong-1-20','CNTT'),
                             
							 ('N02','2020-11-02','Cau truc du lieu va Giai thuat-1-20','CNTT'),
                             ('N02.2','2020-10-02','Cau truc du lieu va Giai thuat-1-20','KTXD'),
                             ('N02.1','2020-07-02','Cau truc du lieu va Giai thuat-1-20','DDT'),
                             ('N.04','2020-09-07','Giao duc the chat F3-1-20','CNTT'),
                             ('N11','2020-08-24','Kien truc va to chuc may tinh-1-20','CNTT'),
                             ('N13.1','2020-09-21','Toan roi rac-1-20','DDT'),
                             ('N22.1','2020-10-19','Tu tuong Ho Chi Minh-1-20','DDT'),
                             ('N17.2','2019-09-16','Dai so tuyen tinh-1-19','KTXD'),
                             ('N21.2','2019-11-30','Giai tich-1-19','KTXD'),
                             ('N119.2','2019-11-18','Ki nang mem-1-19','KTXD');  
                             
                             
-- hoc phan
create table hocphan(
	mahocphan varchar(255) not null primary key,
    tenHP varchar(255) not null,
    sotinchi int not null,
    sotietlythuyet int not null,
    sotietthuchanh int not null,
    sotientin float not null,
    hocky int not null,
    makhoa varchar(255) not null,
    foreign key(makhoa) references khoa(makhoa),
    maCT varchar(255) not null,
    foreign key(maCT) references chuongtrinhhoc(maCT)
);


insert into hocphan values('MHT06.3','Mang may tinh',3,30,15,303000,4,'CNTT','CQ'),
							('MHT06.4','Mang may tinh',3,30,15,303000,3,'CNTT','CQ'),

						  ('CPM211.3','Lap trinh truc quan',3,30,15,303000,5,'CNTT','CQ'),
						  ('CPM211.4','Lap trinh truc quan',3,30,15,303000,5,'KTXD','CQ'),
                          
                            ('CPM06.3','Phan tich thiet ke he thong',3,50,25,303000,2,'KTXD','CQ'),
                            ('CPM06.4','Phan tich thiet ke he thong',4,50,25,303000,2,'CNTT','TC'),
                             ('MHT09.2','Thiet ke CSDL',2,30,10,303000,3,'DTQT','CQ'),
                             ('MHT09.4','Thiet ke CSDL',2,30,10,299000,3,'DTQT','TC'),
                             ('KHM26.3','Thuat toan va Ung dung',2,50,30,303000,1,'VT','CQ'),
                             ('KHM26.2','Thuat toan va Ung dung',3,50,30,303000,5,'CNTT','CQ'),
                             ('KHM26.4','Thuat toan va Ung dung',1,50,30,303000,2,'KTXD','CQ'),
                             ('CPM05.5','Cong nghe Java',3,50,20,301000,3,'CNTT','CQ'),
                             ('CPM05.6','Cong nghe Java',2,50,20,301000,2,'CK','CQ'),
                            ('MHT05.3','Co so du lieu',3,40,20,301000,1,'KTXD','CQ'),
                            ('MHT05.4','Co so du lieu',2,40,20,301000,2,'CNTT','CQ'),
                            ('MHT05.2','Co so du lieu',1,40,20,301000,1,'CK','CQ'),
                             ('GDT04.1','Giao duc the chat',1,10,20,301000,1,'CNTT','CQ'),
                             ('GDT04.2','Giao duc the chat',1,10,20,301000,2,'KTXD','CQ'),
                             ('GDT04.3','Giao duc the chat',1,10,20,301000,3,'CK','CQ'),
                             ('GDT04.4','Giao duc the chat',1,10,20,301000,4,'VT','CQ'),
                             ('GDT04.5','Giao duc the chat',1,10,20,301000,2,'DDT','CQ'),
                             ('DCS301.2','Lich su Dang cong san Viet Nam',2,30,10,301000,3,'CNTT','CQ'),
                             ('DCS301.1','Lich su Dang cong san Viet Nam',2,30,10,301000,3,'CK','CQ'),
							('KHM08.3','Phan tich thiet ke thuat toan',3,40,20,303000,3,'KTXD','CQ'),
                            ('DSO04.2','Xac suat thong ke',2,30,15,303000,4,'CNTT','CQ'); 
                            
                            
-- quan ly hoc phan
create table quanlyhocphan(
	maQLHP varchar(255) not null primary key,
    malopHP varchar(255) not null,
    foreign key(malopHP) references lophocphan(malopHP),
    mahocphan varchar(255) not null,
    foreign key(mahocphan) references hocphan(mahocphan)
);

insert into quanlyhocphan values('QLHP1','N01.1','CPM06.3'),

								('QLHP2','N02','CPM06.4'),
								('QLHP3','N02.2','CPM06.4'),
                                ('QLHP4','N02.1','CPM06.4'),
                                ('QLHP5','N.04','MHT09.2'),
                                ('QLHP6','N11','MHT09.2'),
                                
                                ('QLHP7','N13.1','MHT05.3'),
                                ('QLHP8','N17.2','MHT05.3'),
                                ('QLHP9','N21.2','MHT05.3'),
                                
                                ('QLHP10','N119.2','DSO04.2');    
                                
                                
-- lop
create table lop(
	malop varchar(255) not null primary key,
    sothutu int not null,
    makhoa varchar(255) not null,
    foreign key(makhoa) references khoa(makhoa),
    maCV varchar(255) not null,
    foreign key(maCV) references covanhoctap(maCV),
    makhoahoc varchar(255) not null,
    foreign key(makhoahoc) references khoahoc(makhoahoc),
    maCT varchar(255) not null,
    foreign key(maCT) references chuongtrinhhoc(maCT)
);

insert into lop values('CNTT1',01,'CNTT','000','K60','CQ'),
					  
                      ('CNTT2',02,'CNTT','001','K60','CQ'),
					  ('CNTT3',03,'CNTT','002','K60','CQ'),
                      ('CNTT4',04,'CNTT','003','K60','CQ'),
                      ('KTXD1',05,'KTXD','007','K59','CQ'),
                      ('KTXD2',06,'KTXD','001','K57','CQ'),
                      ('KTXD3',07,'KTXD','010','K58','CQ'),
                      ('DDT1',08,'DDT','013','K61','CQ'),
                      ('DDT2',09,'DDT','003','K62','CQ'),
                      ('DDT3',10,'DDT','007','K56','CQ');    
                      
-- sinh vien
create table sinhvien(
	maSV varchar(255) not null primary key,
    hoten varchar(255) not null,
    dantoc varchar(255) not null,
    namsinh date not null,
    sđtsv int not null,
    Emailsv varchar(255) not null,
    diachi varchar(255) not null,
    gioitinh varchar(255) not null,
    malop varchar(255) not null,
    foreign key(malop) references lop(malop)
);

insert into sinhvien values('191202433','Nguyen Van Cong','Kinh','2001-11-11','123456789','congvan@gmail.com','Hai Duong','Nam','CNTT1'),

							('191200325','Nguyen Xuan Duc','Kinh','2001-06-11','0912356473','ducxuan@gmail.com','Ha Noi','Nam','CNTT1'),
						   ('191201705','Dang Quoc Anh','Kinh','2001-05-03','0912387412','anhquoc@gmail.com','Ha Noi','Nam','CNTT1'),
                           ('191212181','Ta Duy Anh','Kinh','2001-04-03','0312387543','duyanh@gmail.com','Bac Ninh','Nam','CNTT1'),
                           ('191203626','Dao Van Duc','Kinh','2001-07-13','0112387613','ducvan@gmail.com','Thai Binh','Nam','CNTT1'),
                           ('191204134','Nguyen Hong Duc','Kinh','2001-09-06','0612387169','duchong@gmail.com','Thanh Hoa','Nam','CNTT1'),
                           
                           ('191204235','Dao Van Hoang','Kinh','2001-06-06','0712387239','hoangvan@gmail.com','Thanh Hoa','Nam','CNTT2'),
                           ('181204247','Nguyen Van Dinh','Kinh','2000-02-02','0912387239','dinhvan@gmail.com','Phu Tho','Nam','CNTT2'),
                           ('191204211','Phan Van Duc','Kinh','2001-01-07','0312387555','ducphan@gmail.com','Nghe An','Nam','CNTT2'),
                           
                           ('191204345','Nguyen Danh Nam','Kinh','2001-12-21','0112387129','namdanh@gmail.com','Thai Binh','Nam','CNTT3'),
                           ('191204179','Tran Hong Hieu','Kinh','2001-09-21','0212387127','hieutran@gmail.com','Thai Binh','Nam','CNTT3'),
                           ('181204231','Nguyen Phong Hoang Son','Kinh','2000-12-12','0212387009','sonhoang@gmail.com','Nam Dinh','Nam','CNTT3'),
                           
                           ('171204777','Nguyen Van Linh','Kinh','1999-12-21','0912387171','linhvan@gmail.com','Lang Son','Nam','KTXD1');
                           
-- than nhan
create table thannhan(
	maTN varchar(255) not null primary key,
    sdtlienhe int not null,
    tenthannhan varchar(255) not null,
    gioitinhTN varchar(255) not null,
    maCV varchar(255) not null,
    foreign key(maCV) references covanhoctap(maCV),
    maSV varchar(255) not null,
    foreign key(maSV) references sinhvien(maSV)
);

insert into thannhan values('TN01',123456789,'Do Thi Hoa','Nu','000','191200325'),

							('TN02',123456987,'Nguyen Thi Thu Ha','Nu','000','191201705'),
						   ('TN03',123456000,'Nguyen Thi Trang','Nu','000','191202433'),
                           ('TN04',123456002,'Ta Duy Vat','Nam','000','191212181'),
                           ('TN05',123456007,'Do Thi Hong','Nu','000','191203626'),
                           ('TN06',123456987,'Nguyen Hong Phong','Nam','000','191204134'),                           
                           ('TN07',191204211,'Nguyen Thi Hai','Nu','001','191204235'),
                           ('TN08',191204200,'Tran Thi Thu','Nu','001','181204247'),
                           ('TN09',191204201,'Nguyen Van Duy','Nam','001','191204211'),
					
                           ('TN10',191204345,'Nguyen Danh Thuy','Nam','002','191204211'),
                           ('TN11',191204179,'Nguyen Thi Thuy','Nu','002','191204211'),
                           ('TN12',181204231,'Nguyen Hoang Hai','Nam','002','191204211'),
                           ('TN13',171204777,'Nguyen Van Vo','Nam','007','171204777');              
                           
-- ket qua
create table ketqua(
	maKQ varchar(255) not null primary key,
	lanthi int not null,
    diemthanhphan float not null,
    diemthi float not null,
    mahocphan varchar(255) not null,
    foreign key(mahocphan) references hocphan(mahocphan),
	maSV varchar(255) not null,
    foreign key(maSV) references sinhvien(maSV)
);

insert into ketqua values('KQ1',1,8,9,'CPM06.3','191200325'),
						 ('KQ2',1,9,9,'CPM06.3','191201705'),
                         ('KQ3',1,7,8,'CPM06.3','191212181'),
                         ('KQ4',1,9,8,'CPM06.3','191204134'),
                         
                         ('KQ5',1,8,2,'MHT09.2','191204235'),
                         ('KQ6',2,8,7,'MHT09.2','191204235'),
                         ('KQ7',1,2,5,'MHT09.2','181204231'),
                         ('KQ8',2,3,4,'MHT09.2','181204231'),
                         ('KQ9',3,7,7,'MHT09.2','181204231');         
                         
-- dang ky hoc
create table dangkyhoc(
	madangky varchar(255) not null primary key,
    dot int not null,
    landangki int not null,
    sohocphantoithieu int not null,
    ngayhoanthanh date not null,
    kiemtra bit not null,
    malopHP varchar(255) not null,
    foreign key(malopHP) references lophocphan(malopHP),
    maSV varchar(255) not null,
    foreign key(maSV) references sinhvien(maSV)
);

insert into dangkyhoc values ('DK1',1,1,7,'2019-09-09',1,'N02',191200325),
							('DK2',1,2,7,'2019-09-09',1,'N.04',191200325),
							('DK3',2,1,14,'2019-11-09',1,'N11',191200325),
                            ('DK4',2,2,14,'2019-11-09',1,'N02.2',191200325),
                            ('DK5',2,3,14,'2019-11-09',1,'N17.2',191200325),
                            
                            ('DK6',1,1,3,'2020-08-08',1,'N22.1',191204179),
                            ('DK7',1,2,3,'2020-08-08',1,'N21.2',191204179),
                            ('DK8',2,1,7,'2020-10-08',1,'N119.2',191204179),
                            ('DK9',2,2,7,'2020-10-08',1,'N17.2',191204179);
                         
                                                 