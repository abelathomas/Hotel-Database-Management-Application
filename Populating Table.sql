-----STRONG ENTITIES---------

--Hotel--          
INSERT INTO Hotel values(12,"Rose Street, Bay Avenue");
INSERT INTO Hotel values(34,"James Street, Citta Avenue");
INSERT INTO Hotel values(56,"22nd Street, Ittalia Avenue");
INSERT INTO Hotel values(79,"Andreas Street, Jos Avenue");
INSERT INTO Hotel values(32,"6th Street, Plus Avenue");
INSERT INTO Hotel values(05,"Live Street, Dover Avenue");
INSERT INTO Hotel values(23,"Steel Street, Adrian Avenue");
INSERT INTO Hotel values(21,"Low Street, Seventh Avenue");
INSERT INTO Hotel values(69,"Studio Street, Hughes Avenue");
INSERT INTO Hotel values(08,"Commercial Street, Conta Avenue");

--Manager--
INSERT INTO Manager values(5091,"Markus", "Angelo", '1976-12-21',10000);
INSERT INTO Manager values(1478,"Carl", "Santos", '1978-09-23',10000);
INSERT INTO Manager values(2310,"Jeff", "Aguilar", '1971-01-05',10000);
INSERT INTO Manager values(7789,"Nina", "Climaco", '1986-02-23',10000);
INSERT INTO Manager values(3456,"Paul", "Cirl", '1973-12-15',10000);
INSERT INTO Manager values(4903,"Pauline", "Cruz", '1990-06-13',10000);
INSERT INTO Manager values(8740,"Stiffany", "Mabuhay", '1991-12-18',10000);
INSERT INTO Manager values(6790,"Sherlie", "Tong", '1970-03-19',10000);
INSERT INTO Manager values(3055,"Andrea", "Golaman", '1978-02-16',10000);
INSERT INTO Manager values(0022,"Czarina", "Copiacs", '1979-05-16',10000);

INSERT INTO HotelManger values(12,5091);
INSERT INTO HotelManger values(34,1478);
INSERT INTO HotelManger values(56,2310);
INSERT INTO HotelManger values(79,7789);
INSERT INTO HotelManger values(32,3456);
INSERT INTO HotelManger values(05,4903);
INSERT INTO HotelManger values(23,8740);
INSERT INTO HotelManger values(21,6790);
INSERT INTO HotelManger values(69,3055);
INSERT INTO HotelManger values(08,0022);

--Employee--
INSERT INTO Employee values(1235,"Abby", "Luv", '1979-01-07',5000);
INSERT INTO Employee values(2355,"Amz", "Shams", '1989-02-09',5000);
INSERT INTO Employee values(1069,"Liberts", "Jad", '1987-03-11',5000);
INSERT INTO Employee values(7111,"Rize", "Jones", '1974-08-12',5000);
INSERT INTO Employee values(2435,"Kama", "Hyacintha", '1979-12-04',5000);
INSERT INTO Employee values(7361,"Ming", "Dietmar", '1986-10-23',5000);
INSERT INTO Employee values(6479,"Romilius", "Gwenda", '1975-01-17',5000);
INSERT INTO Employee values(2824,"Gavrail" ,"Donovan", '1981-04-01',5000);
INSERT INTO Employee values(6217,"Felix", "Intan", '1989-09-11',5000);
INSERT INTO Employee values(8719,"Mitch", "Thomas", '1985-03-19',5000);

INSERT INTO HotelEmployee values(12,1235);
INSERT INTO HotelEmployee values(34,2355);
INSERT INTO HotelEmployee values(56,1069);
INSERT INTO HotelEmployee values(79,7111);
INSERT INTO HotelEmployee values(32,2435);
INSERT INTO HotelEmployee values(05,7361);
INSERT INTO HotelEmployee values(23,6479);
INSERT INTO HotelEmployee values(21,2824);
INSERT INTO HotelEmployee values(69,6217);
INSERT INTO HotelEmployee values(08,8719);

--Customer--
INSERT INTO Customer values(3852,"Michael", "Jordan", "778-345-4167");
INSERT INTO Customer values(1235,"Lebron", "James", "778-231-4167");
INSERT INTO Customer values(2468,"Kyrie", "Irving", "778-215-2312");
INSERT INTO Customer values(9712,"Kevin", "Durant", "778-345-4544");
INSERT INTO Customer values(8777,"Deandre", "Jordan", "778-567-9999");
INSERT INTO Customer values(6868,"Mike", "Malone", "778-345-2312");
INSERT INTO Customer values(6172,"Moe", "Scott", "778-312-2432");
INSERT INTO Customer values(2357,"Adam", "Lambert", "778-777-4167");
INSERT INTO Customer values(0999,"Damen", "Lilliard", "778-8888-4167");
INSERT INTO Customer values(1111,"Trong", "Wong", "778-9999-2147");

--Room--
INSERT INTO Room values(100,21,'No','Single');
INSERT INTO Room values(21,34,'Yes','Queen');
INSERT INTO Room values(209,21,'No','Queen');
INSERT INTO Room values(31,32,'Yes','Queen');
INSERT INTO Room values(3,79,'No','Single');
INSERT INTO Room values(99,21,'Yes', 'King');
INSERT INTO Room values(123,21,'No','Double');
INSERT INTO Room values(34,79,'No','King');
INSERT INTO Room values(18,79,'No','King');
INSERT INTO Room values(5,79,'No','Queen');
INSERT INTO Room values(72,56,'Yes', 'Double');
INSERT INTO Room values(121,21,'No','Queen');
INSERT INTO Room values(88,23,'Yes','Single');
INSERT INTO Room values(1,08,'No','Queen');
INSERT INTO Room values(11,21,'Yes', 'Double');
INSERT INTO Room values(32,79,'No','Double');
INSERT INTO Room values(2,08,'No','Queen');
INSERT INTO Room values(35,69,'No','Queen');
INSERT INTO Room values(144,21,'No','Single');
INSERT INTO Room values(23,12,'Yes','Single');
INSERT INTO Room values(256,21,'No','Double');
INSERT INTO Room values(42,79,'Yes','Single');
INSERT INTO Room values(199,21,'No','King');
INSERT INTO Room values(36,23,'No','Double');
INSERT INTO Room values(55,05,'Yes', 'Double');
INSERT INTO Room values(33,79,'No','Double');
INSERT INTO Room values(321,21,'No','King');
INSERT INTO Room values(15,08,'No','King');
INSERT INTO Room values(69,69,'Yes','Single');
INSERT INTO Room values(678,21,'No','Queen');
INSERT INTO Room values(619,21,'No','Single');

INSERT INTO TypePrice values("Single",1000,21,100);
INSERT INTO TypePrice values("Single",1000,12,23);
INSERT INTO TypePrice values("Single",1000,23,88);
INSERT INTO TypePrice values("Single",1000,69,69);
INSERT INTO TypePrice values("Double",2000,21,256);
INSERT INTO TypePrice values("Double",2000,05,55);
INSERT INTO TypePrice values("Double",2000,23,36);
INSERT INTO TypePrice values("Queen",3000,21,209);
INSERT INTO TypePrice values("Queen",3000,08,2);
INSERT INTO TypePrice values("Queen",3000,69,35);
INSERT INTO TypePrice values("King",4000,21,99);
INSERT INTO TypePrice values("King",4000,08,15);
INSERT INTO TypePrice values("Double",2000,56,72);
INSERT INTO TypePrice values("King",4000,34,21);
INSERT INTO TypePrice values("Queen",3000,32,31);
INSERT INTO TypePrice values("Single",1000,79,42);
INSERT INTO TypePrice values("Double",2000,79,32);
INSERT INTO TypePrice values("Queen",3000,79,5);
INSERT INTO TypePrice values("King",4000,79,34);



--Transactions--
INSERT INTO Transactions values(9999,'2019-12-25', '30000',3852);
INSERT INTO Transactions values(9123,'2017-10-25', '40000',1235);
INSERT INTO Transactions values(5322,'2016-11-25', '50000',2468);
INSERT INTO Transactions values(3261,'2014-05-25', '60000',9712);
INSERT INTO Transactions values(6969,'2015-09-25', '80000',8777);
INSERT INTO Transactions values(5123,'2013-07-25', '60000',6868);
INSERT INTO Transactions values(8787,'2012-04-25', '70000',6172);
INSERT INTO Transactions values(3044,'2005-01-25', '50000',2357);
INSERT INTO Transactions values(5555,'2011-03-25', '530000',0999);
INSERT INTO Transactions values(9805,'2009-02-25', '304000',1111);


-----------Relations----------------------

--Owns--
INSERT INTO Owns values(12,23);
INSERT INTO Owns values(34,21);
INSERT INTO Owns values(56,72);
INSERT INTO Owns values(79,42);
INSERT INTO Owns values(32,31);
INSERT INTO Owns values(05,55);
INSERT INTO Owns values(23,88);
INSERT INTO Owns values(21,99);
INSERT INTO Owns values(69,11);
INSERT INTO Owns values(08,69);

--Book--
INSERT INTO Book values(3852,12,23);
INSERT INTO Book values(1235,34,21);
INSERT INTO Book values(2468,56,72);
INSERT INTO Book values(9712,79,42);
INSERT INTO Book values(8777,32,31);
INSERT INTO Book values(6868,05,55);
INSERT INTO Book values(6172,23,88);
INSERT INTO Book values(2357,21,99);
INSERT INTO Book values(0999,21,11);
INSERT INTO Book values(1111,69,69);

--Payment--
INSERT INTO Payment values(9999,3852);
INSERT INTO Payment values(9123,1235);
INSERT INTO Payment values(5322,2468);
INSERT INTO Payment values(3261,9712);
INSERT INTO Payment values(6969,8777);
INSERT INTO Payment values(5123,6868);
INSERT INTO Payment values(8787,6172);
INSERT INTO Payment values(5555,2357);
INSERT INTO Payment values(9805,0999);
INSERT INTO Payment values(3044,1111);