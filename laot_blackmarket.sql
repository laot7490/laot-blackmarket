/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : essentialmode

 Target Server Type    : MySQL
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 28/09/2020 13:53:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for laot_blackmarket
-- ----------------------------
DROP TABLE IF EXISTS `laot_blackmarket`;
CREATE TABLE `laot_blackmarket`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `waitMS` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laot_blackmarket
-- ----------------------------
INSERT INTO `laot_blackmarket` VALUES (1, 'WEAPON_MACHETE', 'Maçete', 1900, '5000');
INSERT INTO `laot_blackmarket` VALUES (2, 'WEAPON_PISTOL', 'Kaçak Tabanca', 6000, '5630');
INSERT INTO `laot_blackmarket` VALUES (3, 'WEAPON_STICKYBOMB', 'Uzaktan Kumandalı Bomba', 3600, '9000');

SET FOREIGN_KEY_CHECKS = 1;
