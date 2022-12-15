/*
 Navicat Premium Data Transfer

 Source Server         : RIFQI
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : listkomik

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 15/12/2022 12:44:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for buku
-- ----------------------------
DROP TABLE IF EXISTS `buku`;
CREATE TABLE `buku`  (
  `kode_buku` int NOT NULL AUTO_INCREMENT,
  `judul_buku` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun` int NOT NULL,
  `kode_kategori` int NOT NULL,
  `gambar_buku` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `penulis` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`kode_buku`) USING BTREE,
  INDEX `kode_kategori`(`kode_kategori` ASC) USING BTREE,
  CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori_buku` (`kode_kategori`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of buku
-- ----------------------------
INSERT INTO `buku` VALUES (12, 'X-Men: God Loves Man Kills', 1982, 1, 'xmcom.jpg', 'Chris Claremont');
INSERT INTO `buku` VALUES (18, 'Oregairu', 2015, 2, '80943.jpg', 'Watari Wataru');
INSERT INTO `buku` VALUES (19, 'The Simpsons', 1978, 1, 'images.png', 'Matt Groening');
INSERT INTO `buku` VALUES (20, 'Solo Leveling', 2021, 3, '56817438.jpg', 'Chu-Gong');
INSERT INTO `buku` VALUES (21, 'Martial Peak', 2018, 4, '1907_20220215104124.jpg', 'Momo (III)');
INSERT INTO `buku` VALUES (22, 'Detective Conan', 1994, 2, '97267.jpg', 'Aoyama Gosho');

-- ----------------------------
-- Table structure for kategori_buku
-- ----------------------------
DROP TABLE IF EXISTS `kategori_buku`;
CREATE TABLE `kategori_buku`  (
  `kode_kategori` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`kode_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 910 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kategori_buku
-- ----------------------------
INSERT INTO `kategori_buku` VALUES (1, 'Komik Inggris');
INSERT INTO `kategori_buku` VALUES (2, 'Komik Jepang');
INSERT INTO `kategori_buku` VALUES (3, 'Komik Korea');
INSERT INTO `kategori_buku` VALUES (4, 'Komik China');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `kode_user` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`kode_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (15, 'rifqi', 'rifqi', '72561baf6079c338cc2dd68e98d52055', 'admin');
INSERT INTO `user` VALUES (18, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
