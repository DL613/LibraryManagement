/*
 Navicat Premium Data Transfer

 Source Server         : this
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : ssm

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 07/03/2022 10:41:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts`  (
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` float NULL DEFAULT NULL,
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES ('this', 2000, 1);
INSERT INTO `accounts` VALUES ('王五', 3000, 2);
INSERT INTO `accounts` VALUES ('khj', 2000, 3);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `author` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `detial` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `price` double NOT NULL DEFAULT 0,
  `total` int UNSIGNED NOT NULL DEFAULT 1,
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('三国演义', '罗贯中', '四大名著', '描写的是从东汉末年到西晋初年之间近一百年的历史风云', 48, 2, 1);
INSERT INTO `book` VALUES ('西游记', '吴承恩', '四大名著', '是中国古代一部浪漫主义长篇神魔小说', 49, 1, 2);
INSERT INTO `book` VALUES ('红楼梦', '曹雪芹', '四大名著', '是章回体长篇小说，中国古代四大名著之首', 50, 1, 3);
INSERT INTO `book` VALUES ('水浒传', '施耐庵', '四大名著', '描写北宋末年以宋江为首的一百零八位好汉在梁山起义', 51, 1, 4);
INSERT INTO `book` VALUES ('惊天剑帝', '帝剑一', '武侠修仙', '一代少年英豪，逆天崛起，踩天骄，战群雄，诛群魔，灭众神，一路逆战，成就绝世剑帝！', 78, 1, 5);
INSERT INTO `book` VALUES ('this', '不明', '无', '222', 0, 1, 6);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `author` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `detial` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `price` double NOT NULL DEFAULT 0,
  `total` int UNSIGNED NOT NULL DEFAULT 1,
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('三国演义', '罗贯中', '四大名著', '描写的是从东汉末年到西晋初年之间近一百年的历史风云', 48, 1, 1);
INSERT INTO `customer` VALUES ('西游记', '吴承恩', '四大名著', '是中国古代一部浪漫主义长篇神魔小说', 49, 1, 2);
INSERT INTO `customer` VALUES ('水浒传', '施耐庵', '四大名著', '描写北宋末年以宋江为首的一百零八位好汉在梁山起义', 51, 1, 3);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `identity` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123', '管理员', 'admin');
INSERT INTO `user` VALUES (2, 'abc', '普通用户', 'customer');

SET FOREIGN_KEY_CHECKS = 1;
