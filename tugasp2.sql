CREATE TABLE `FAKULTAS`  (
  `id` int(11) NOT NULL,
  `Mahasiswa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `komputer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jurusan Teknik Informatika` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `KAMPUS`  (
  `id` int(11) NOT NULL,
  `Esa unggul citra raya` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `LULUS`  (
  `id` int(11) NOT NULL,
  `Sks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Jumlah_sks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `MAHASISWA`  (
  `id` int(11) NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nilai` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `falkutas` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `MATA KULIAH`  (
  `id` int(11) NOT NULL,
  `Pemrograman Berorientasi Objek` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `NIlai`  (
  `id` int(11) NOT NULL,
  `Nilai Kuis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Nilai Tugas` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Nilai UTS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Nilai UAS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

ALTER TABLE `LULUS` ADD CONSTRAINT `fk_LULUS_NIlai_1` FOREIGN KEY (`id`) REFERENCES `NIlai` (`id`);
ALTER TABLE `LULUS` ADD CONSTRAINT `fk_LULUS_KAMPUS_1` FOREIGN KEY (`id`) REFERENCES `KAMPUS` (`id`);
ALTER TABLE `MAHASISWA` ADD CONSTRAINT `fk_MAHASISWA_NIlai_1` FOREIGN KEY (`id`) REFERENCES `NIlai` (`id`);
ALTER TABLE `MATA KULIAH` ADD CONSTRAINT `fk_MATA KULIAH_NIlai_1` FOREIGN KEY (`id`) REFERENCES `NIlai` (`id`);
ALTER TABLE `MATA KULIAH` ADD CONSTRAINT `fk_MATA KULIAH_FAKULTAS_1` FOREIGN KEY (`id`) REFERENCES `FAKULTAS` (`id`);

