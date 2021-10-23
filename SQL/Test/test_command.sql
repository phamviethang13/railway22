-- Viết lệnh lấy ra thông tin của khách hàng: tên, số lượng oto khách hàng đã mua và sắp sếp tăng dần theo số lượng oto đã mua.
SELECT c.fullname,
		co.amounts
FROM customer c
LEFT JOIN car_oder co
ON c.customer_id = co.customer_id
ORDER BY co.amounts;

-- Viết hàm (không có parameter) trả về tên hãng sản xuất đã bán được nhiều oto nhất trong năm nay.
DELIMITER //
CREATE FUNCTION best_seller () RETURNS CHAR(10) DETERMINISTIC
BEGIN
	DECLARE ten_hang_xe CHAR(20);
	SELECT c.maker INTO ten_hang_xe
	FROM car c
	LEFT JOIN car_oder co
	ON c.car_id = co.car_id
	WHERE YEAR(order_date) = (SELECT YEAR(NOW())) AND order_status = '1'
	ORDER BY co.amounts DESC
	LIMIT 1;
RETURN ten_hang_xe;
END//
DELIMITER ;

SELECT	best_seller();

-- Viết 1 thủ tục (không có parameter) để xóa các đơn hàng đã bị hủy của những năm trước. In ra số lượng bản ghi đã bị xóa.
DROP PROCEDURE IF EXISTS delete_order;
DELIMITER //
CREATE PROCEDURE delete_order ()
BEGIN
	SELECT COUNT(*) FROM car_oder WHERE order_status = '2' AND YEAR(order_date) < YEAR(NOW());
	DELETE FROM	car_oder WHERE order_status = '2' AND YEAR(order_date) < YEAR(NOW());
END//
DELIMITER ;

CALL delete_order ();


-- Viết 1 thủ tục (có CustomerID parameter) để in ra thông tin của các đơn hàng đã đặt hàng bao gồm: tên của khách hàng, mã đơn hàng, số lượng oto và tên hãng sản xuất.
DROP PROCEDURE IF EXISTS ordered;
DELIMITER //
CREATE PROCEDURE ordered (IN id INT)
BEGIN
SELECT 	c.fullname,
		co.order_id,
		co.amount,
		ca.maker
		FROM	customer c
		INNER JOIN	car_oder co
			ON	c.customer_id = co.customer_id
		INNER JOIN	car ca
			ON	ca.car_id = co.car_id
		WHERE 	cu.customer_id = id AND co.order_status = '0';
	END//
DELIMITER ;

CALL ordered(1);



