SET NAMES utf8;

CREATE DATABASE IF NOT EXISTS bookstore;

USE bookstore;

# user
INSERT IGNORE INTO `user` (`id`, `username`, `nickname`, `realname`, `password`, `question`, `answer`, `gender`, `mail`, `phone`, `qq`, `created_at`, `updated_at`)
VALUES
	(4, 'bs', 'guest', '132', 'pwd', 'none', 'none', '23', 'xxx@xxx.com', '12321321', '1231223222', NULL, '2018-01-27 05:13:16'),
	(5, 'bsw', 'guest', '132', 'pwd', 'none', 'none', '23', 'xxx@xxx.com', '1231232', '12312', NULL, NULL),
	(6, 'bsw2', 'guest', '132', 'pwd', 'none', 'none', '23', 'xxx@xxx.com', '123123212', '12312', NULL, NULL);

# order
INSERT IGNORE INTO `order` (`id`, `order_id`, `user_id`, `quantity`, `origin_cost`, `actual_cost`, `order_status`, `delivery_status`, `pay_status`, `created_at`, `updated_at`)
VALUES
	(1, 12, 123, 1, 22.00, 22.00, 1, 1, 1, '2018-01-22 10:44:01', '2018-01-22 10:44:09'),
	(2, 231, 123, 1, 231.00, 2312.00, 1, 1, 1, '2018-01-22 11:19:05', '2018-01-22 11:19:05');

# order_detail
INSERT IGNORE INTO `order_detail` (`id`, `order_id`, `book_name`, `isbn`, `origin_price`, `actual_price`, `discount`, `order_quantity`, `deliveried_quantity`, `warehouse`, `created_at`, `updated_at`)
VALUES
	(1, 12, '诗经', 12312321, 12, 123, 2, 11, 2, '北京1', '2018-01-23 15:57:56', '2018-01-23 15:57:56'),
	(2, 12, '论语', 12311233, 1, 22, 3, 42, 21, '北京2', '2018-01-23 15:58:18', '2018-01-23 15:58:18');

# order_info
INSERT IGNORE INTO `order_info` (`id`, `order_id`, `consignee`, `address`, `phone`, `post_code`, `created_at`, `updated_at`)
VALUES
	(1, 12, '哈哈', '北京市通州区xxxxxxx', 12323231223, 102302, '2018-02-16 14:09:22', '2018-02-16 14:16:36');

# account
INSERT IGNORE INTO `account` (`id`, `user_id`, `balance`, `bonus_point`, `discount`, `created_at`, `updated_at`)
VALUES
	(1, 4, 14180.00, 0, 1.00, '2018-01-27 12:01:25', '2018-02-17 05:01:08'),
	(2, 5, 9680.00, 0, 1.00, '2018-02-15 14:32:18', '2018-02-17 05:01:26'),
	(3, 6, 0.00, 0, 1.00, '2018-02-15 15:38:04', '2018-02-16 14:20:26');

# account_comsume
INSERT IGNORE INTO `account_consume` (`id`, `user_id`, `amount`, `current_balance`, `day`, `month`, `created_at`, `updated_at`)
VALUES
	(1, 4, 200.000, 14180.000, 20180202, 201802, '2018-02-17 04:51:01', '2018-02-17 04:55:43'),
	(2, 4, 150.000, 14030.000, 20180203, 201802, '2018-02-17 04:54:01', '2018-02-17 04:57:16'),
	(3, 5, 320.000, 9680.000, 20180202, 201802, '2018-02-17 04:56:56', '2018-02-17 04:58:35');

# account_prepay
INSERT IGNORE INTO `account_prepay` (`id`, `user_id`, `amount`, `current_balance`, `day`, `month`, `created_at`, `updated_at`)
VALUES
	(1, 4, 10000.000, 10000.000, 20180201, 201802, '2018-02-17 04:52:49', '2018-02-17 04:53:11'),
	(2, 5, 10000.000, 10000.000, 20180201, 201802, '2018-02-17 04:53:28', '2018-02-17 04:53:40'),
	(3, 4, 4380.000, 14380.000, 0, 0, '2018-02-17 04:54:30', '2018-02-17 04:54:38');

# account_refund
INSERT IGNORE INTO `account_refund` (`id`, `user_id`, `amount`, `current_balance`, `day`, `month`, `created_at`, `updated_at`)
VALUES
	(1, 4, 150.000, 14180.000, 20180203, 201802, '2018-02-17 04:58:41', '2018-02-17 04:59:26');

# address_info
INSERT IGNORE INTO `address_info` (`id`, `user_id`, `name`, `address`, `post_code`, `phone`, `is_default`, `created_at`, `updated_at`)
VALUES
	(1, 4, '大雄', '北京市海淀五路居西四环北路102号', 100101, 13212312321, 1, '2018-02-16 14:09:58', '2018-02-16 14:14:10'),
	(2, 4, '胖虎', '北京市朝阳区', 100201, 13212312312, 0, '2018-02-16 14:14:37', '2018-02-16 14:14:58'),
	(3, 6, 'haha', '天津市滨海新区', 234230, 18922302033, 1, '2018-02-16 14:15:02', '2018-02-17 04:43:35');

# book
INSERT IGNORE INTO `book` (`id`, `name`, `author`, `press`, `isbn`, `quantity`, `description`, `price`, `is_active`, `created_at`, `updated_at`)
VALUES
	(1, '论语', '周杰伦', '北京教育出版社', 9203204223, 100, NULL, 0.00, 1, '2018-02-17 04:48:20', '2018-02-17 04:48:20'),
	(2, '诗经', '王力宏', '北京机械工业出版社', 9820302123, 10, NULL, 0.00, 1, '2018-02-17 04:48:18', '2018-02-17 04:48:18'),
	(3, '进击的巨人', 'yyf', '中国国家出版社', 8920340303, 0, NULL, 0.00, 0, '2018-02-17 04:49:33', '2018-02-17 04:49:33');
