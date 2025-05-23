/*
 Source Server         : Olhar_Local
 Source Server Type    : MySQL
 Source Server Version : 90100
 Source Host           : localhost:3306
 Source Schema         : evento_db

 Target Server Type    : MySQL
 Target Server Version : 90100
 File Encoding         : 65001

 Date: 23/05/2025 09:47:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for flyway_schema_history
-- ----------------------------
DROP TABLE IF EXISTS `flyway_schema_history`;
CREATE TABLE `flyway_schema_history`  (
  `installed_rank` int(0) NOT NULL,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `script` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `checksum` int(0) NULL DEFAULT NULL,
  `installed_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `installed_on` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `execution_time` int(0) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`) USING BTREE,
  INDEX `flyway_schema_history_s_idx`(`success`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_atividade
-- ----------------------------
DROP TABLE IF EXISTS `tb_atividade`;
CREATE TABLE `tb_atividade`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `descricao` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `preco` double NULL DEFAULT NULL,
  `categoria_id` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKvv3aurjenp1lh5slfeisevor`(`categoria_id`) USING BTREE,
  CONSTRAINT `FKvv3aurjenp1lh5slfeisevor` FOREIGN KEY (`categoria_id`) REFERENCES `tb_categoria` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_bloco
-- ----------------------------
DROP TABLE IF EXISTS `tb_bloco`;
CREATE TABLE `tb_bloco`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `fim` timestamp(0) NULL DEFAULT NULL,
  `incio` timestamp(0) NULL DEFAULT NULL,
  `atividade_id` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK1el778vv0b24dbr8efewjlwon`(`atividade_id`) USING BTREE,
  CONSTRAINT `FK1el778vv0b24dbr8efewjlwon` FOREIGN KEY (`atividade_id`) REFERENCES `tb_atividade` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_categoria
-- ----------------------------
DROP TABLE IF EXISTS `tb_categoria`;
CREATE TABLE `tb_categoria`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_participante
-- ----------------------------
DROP TABLE IF EXISTS `tb_participante`;
CREATE TABLE `tb_participante`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKp12aborhe7kiham0he54ulvqq`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_participante_atividade
-- ----------------------------
DROP TABLE IF EXISTS `tb_participante_atividade`;
CREATE TABLE `tb_participante_atividade`  (
  `participante_id` bigint(0) NOT NULL,
  `atividade_id` bigint(0) NOT NULL,
  PRIMARY KEY (`participante_id`, `atividade_id`) USING BTREE,
  INDEX `FK9b071l1v499imcinny8sadood`(`atividade_id`) USING BTREE,
  CONSTRAINT `FK9b071l1v499imcinny8sadood` FOREIGN KEY (`atividade_id`) REFERENCES `tb_atividade` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKl3i4516bk5uowupdqqnp69xq4` FOREIGN KEY (`participante_id`) REFERENCES `tb_participante` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;