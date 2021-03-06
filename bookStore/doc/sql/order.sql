SET NAMES utf8;

CREATE DATABASE IF NOT EXISTS bookstore;

USE bookstore;

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `order_id` bigint(20) NOT NULL COMMENT '订单编号',
  `user_id` int(11) NOT NULL COMMENT '用户编号',
  `quantity` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `origin_cost` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '定价总费用',
  `actual_cost` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '实际总费用',
  `order_status` int(5) NOT NULL DEFAULT '0' COMMENT '订单状态 0: 关闭订单 1: 正常 2: 退单',
  `delivery_status` int(5) NOT NULL DEFAULT '0' COMMENT '发货状态 0: 未发货 1:已发货',
  `pay_status` int(5) NOT NULL DEFAULT '0' COMMENT '付款状态 0: 未付款 1:已付款',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `order_id_2` (`order_id`),
  KEY `pay_status` (`pay_status`),
  KEY `delivery_status` (`delivery_status`),
  KEY `order_status` (`order_status`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;