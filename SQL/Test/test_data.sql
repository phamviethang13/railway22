INSERT INTO customer	(fullname, 	phone, 	email, 	address, 	note)
VALUE 					('Nguyen Van A',	'123123',	'account1@gmail.com',	'HCM',	'Mo ta khach hang A'),
						('Nguyen Van B',	'012234',	'account2@gmail.com',	'HN',	'Mo ta khach hang B'),
                        ('Nguyen Van C',	'012234',	'account3@gmail.com',	'DN',	'Mo ta khach hang C'),
                        ('Nguyen Van E',	'012225',	'account4@gmail.com',	'HCM',	'Mo ta khach hang E'),
                        ('Nguyen Van D',	'012245',	'account5@gmail.com',	'HN',	'Mo ta khach hang D');
                        
INSERT INTO car			(maker,		model,		years,		color,		note)
VALUE					('honda',	'honda1',	1999,	'red',	'mo ta xe 1'),
						('honda',	'honda2',	2000,	'blue',	'mo ta xe 2'),
                        ('toyota',	'toyo21',	2010,	'black', 'mo ta xe 3'),
                        ('nissan',	'niss33',	2005,	'black', 'mo ta xe 4'),
                        ('toyota',	'toyo99',	2010,	'green', 'mo ta xe 5');
                        
INSERT INTO		car_oder 		(customer_id,	car_id,	amounts,	sale_price, 	order_date, 	delivery_date, 	delivery_address,	order_status, note)
VALUE							(1,		2,		2,	500000000, '2005-04-11',	'2005-03-21',	'HN' ,	'0'	,'Don hang 1'	),
								(1,		3,		1,	650000000, '2007-01-01',	'2006-12-11',	'HCM' ,	'1',	'Don hang 2'	),
                                (2,		4,		2,	640000000, '2009-05-13',	'2009-03-01',	'HN' ,	'1',	'Don hang 3'	),
                                (3,		2,		2,	230000000, '2010-04-11',	'2010-03-21',	'HCM' ,'2',	'Don hang 4'	),
                                (5,		1,		1,	500000000, '2021-04-11',	'2021-03-21',	'DN' ,	'1','Don hang 5'	);
                                
				
						