-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for mule7148_treemap
CREATE DATABASE IF NOT EXISTS `mule7148_treemap` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `mule7148_treemap`;


-- Dumping structure for table mule7148_treemap.tbl_kabupaten
CREATE TABLE IF NOT EXISTS `tbl_kabupaten` (
  `id_kab` char(4) NOT NULL,
  `id_prov` char(2) NOT NULL,
  `nama` tinytext NOT NULL,
  PRIMARY KEY (`id_kab`),
  KEY `FK_id_prov` (`id_prov`),
  CONSTRAINT `FK_id_prov` FOREIGN KEY (`id_prov`) REFERENCES `tbl_provinsi` (`id_prov`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table mule7148_treemap.tbl_kabupaten: ~514 rows (approximately)
/*!40000 ALTER TABLE `tbl_kabupaten` DISABLE KEYS */;
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1101', '11', 'KAB. ACEH SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1102', '11', 'KAB. ACEH TENGGARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1103', '11', 'KAB. ACEH TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1104', '11', 'KAB. ACEH TENGAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1105', '11', 'KAB. ACEH BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1106', '11', 'KAB. ACEH BESAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1107', '11', 'KAB. PIDIE');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1108', '11', 'KAB. ACEH UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1109', '11', 'KAB. SIMEULUE');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1110', '11', 'KAB. ACEH SINGKIL');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1111', '11', 'KAB. BIREUEN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1112', '11', 'KAB. ACEH BARAT DAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1113', '11', 'KAB. GAYO LUES');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1114', '11', 'KAB. ACEH JAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1115', '11', 'KAB. NAGAN RAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1116', '11', 'KAB. ACEH TAMIANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1117', '11', 'KAB. BENER MERIAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1118', '11', 'KAB. PIDIE JAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1171', '11', 'KOTA BANDA ACEH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1172', '11', 'KOTA SABANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1173', '11', 'KOTA LHOKSEUMAWE');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1174', '11', 'KOTA LANGSA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1175', '11', 'KOTA SUBULUSSALAM');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1201', '12', 'KAB. TAPANULI TENGAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1202', '12', 'KAB. TAPANULI UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1203', '12', 'KAB. TAPANULI SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1204', '12', 'KAB. NIAS');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1205', '12', 'KAB. LANGKAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1206', '12', 'KAB. KARO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1207', '12', 'KAB. DELI SERDANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1208', '12', 'KAB. SIMALUNGUN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1209', '12', 'KAB. ASAHAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1210', '12', 'KAB. LABUHANBATU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1211', '12', 'KAB. DAIRI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1212', '12', 'KAB. TOBA SAMOSIR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1213', '12', 'KAB. MANDAILING NATAL');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1214', '12', 'KAB. NIAS SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1215', '12', 'KAB. PAKPAK BHARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1216', '12', 'KAB. HUMBANG HASUNDUTAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1217', '12', 'KAB. SAMOSIR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1218', '12', 'KAB. SERDANG BEDAGAI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1219', '12', 'KAB. BATU BARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1220', '12', 'KAB. PADANG LAWAS UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1221', '12', 'KAB. PADANG LAWAS');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1222', '12', 'KAB. LABUHANBATU SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1223', '12', 'KAB. LABUHANBATU UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1224', '12', 'KAB. NIAS UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1225', '12', 'KAB. NIAS BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1271', '12', 'KOTA MEDAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1272', '12', 'KOTA PEMATANG SIANTAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1273', '12', 'KOTA SIBOLGA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1274', '12', 'KOTA TANJUNG BALAI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1275', '12', 'KOTA BINJAI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1276', '12', 'KOTA TEBING TINGGI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1277', '12', 'KOTA PADANGSIDIMPUAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1278', '12', 'KOTA GUNUNGSITOLI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1301', '13', 'KAB. PESISIR SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1302', '13', 'KAB. SOLOK');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1303', '13', 'KAB. SIJUNJUNG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1304', '13', 'KAB. TANAH DATAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1305', '13', 'KAB. PADANG PARIAMAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1306', '13', 'KAB. AGAM');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1307', '13', 'KAB. LIMA PULUH KOTA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1308', '13', 'KAB. PASAMAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1309', '13', 'KAB. KEPULAUAN MENTAWAI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1310', '13', 'KAB. DHARMASRAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1311', '13', 'KAB. SOLOK SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1312', '13', 'KAB. PASAMAN BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1371', '13', 'KOTA PADANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1372', '13', 'KOTA SOLOK');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1373', '13', 'KOTA SAWAHLUNTO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1374', '13', 'KOTA PADANG PANJANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1375', '13', 'KOTA BUKITTINGGI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1376', '13', 'KOTA PAYAKUMBUH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1377', '13', 'KOTA PARIAMAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1401', '14', 'KAB. KAMPAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1402', '14', 'KAB. INDRAGIRI HULU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1403', '14', 'KAB. BENGKALIS');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1404', '14', 'KAB. INDRAGIRI HILIR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1405', '14', 'KAB. PELALAWAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1406', '14', 'KAB. ROKAN HULU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1407', '14', 'KAB. ROKAN HILIR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1408', '14', 'KAB. SIAK');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1409', '14', 'KAB. KUANTAN SINGINGI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1410', '14', 'KAB. KEPULAUAN MERANTI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1471', '14', 'KOTA PEKANBARU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1472', '14', 'KOTA DUMAI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1501', '15', 'KAB. KERINCI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1502', '15', 'KAB. MERANGIN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1503', '15', 'KAB. SAROLANGUN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1504', '15', 'KAB. BATANGHARI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1505', '15', 'KAB. MUARO JAMBI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1506', '15', 'KAB. TANJUNG JABUNG BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1507', '15', 'KAB. TANJUNG JABUNG TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1508', '15', 'KAB. BUNGO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1509', '15', 'KAB. TEBO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1571', '15', 'KOTA JAMBI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1572', '15', 'KOTA SUNGAI PENUH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1601', '16', 'KAB. OGAN KOMERING ULU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1602', '16', 'KAB. OGAN KOMERING ILIR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1603', '16', 'KAB. MUARA ENIM');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1604', '16', 'KAB. LAHAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1605', '16', 'KAB. MUSI RAWAS');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1606', '16', 'KAB. MUSI BANYUASIN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1607', '16', 'KAB. BANYUASIN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1608', '16', 'KAB. OGAN KOMERING ULU TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1609', '16', 'KAB. OGAN KOMERING ULU SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1610', '16', 'KAB. OGAN ILIR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1611', '16', 'KAB. EMPAT LAWANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1612', '16', 'KAB. PENUKAL ABAB LEMATANG ILIR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1613', '16', 'KAB. MUSI RAWAS UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1671', '16', 'KOTA PALEMBANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1672', '16', 'KOTA PAGAR ALAM');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1673', '16', 'KOTA LUBUK LINGGAU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1674', '16', 'KOTA PRABUMULIH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1701', '17', 'KAB. BENGKULU SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1702', '17', 'KAB. REJANG LEBONG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1703', '17', 'KAB. BENGKULU UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1704', '17', 'KAB. KAUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1705', '17', 'KAB. SELUMA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1706', '17', 'KAB. MUKO MUKO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1707', '17', 'KAB. LEBONG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1708', '17', 'KAB. KEPAHIANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1709', '17', 'KAB. BENGKULU TENGAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1771', '17', 'KOTA BENGKULU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1801', '18', 'KAB. LAMPUNG SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1802', '18', 'KAB. LAMPUNG TENGAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1803', '18', 'KAB. LAMPUNG UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1804', '18', 'KAB. LAMPUNG BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1805', '18', 'KAB. TULANG BAWANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1806', '18', 'KAB. TANGGAMUS');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1807', '18', 'KAB. LAMPUNG TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1808', '18', 'KAB. WAY KANAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1809', '18', 'KAB. PESAWARAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1810', '18', 'KAB. PRINGSEWU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1811', '18', 'KAB. MESUJI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1812', '18', 'KAB. TULANG BAWANG BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1813', '18', 'KAB. PESISIR BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1871', '18', 'KOTA BANDAR LAMPUNG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1872', '18', 'KOTA METRO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1901', '19', 'KAB. BANGKA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1902', '19', 'KAB. BELITUNG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1903', '19', 'KAB. BANGKA SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1904', '19', 'KAB. BANGKA TENGAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1905', '19', 'KAB. BANGKA BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1906', '19', 'KAB. BELITUNG TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('1971', '19', 'KOTA PANGKAL PINANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('2101', '21', 'KAB. BINTAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('2102', '21', 'KAB. KARIMUN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('2103', '21', 'KAB. NATUNA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('2104', '21', 'KAB. LINGGA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('2105', '21', 'KAB. KEPULAUAN ANAMBAS');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('2171', '21', 'KOTA BATAM');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('2172', '21', 'KOTA TANJUNG PINANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3101', '31', 'KAB. ADM. KEP. SERIBU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3171', '31', 'KOTA ADM. JAKARTA PUSAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3172', '31', 'KOTA ADM. JAKARTA UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3173', '31', 'KOTA ADM. JAKARTA BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3174', '31', 'KOTA ADM. JAKARTA SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3175', '31', 'KOTA ADM. JAKARTA TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3201', '32', 'KAB. BOGOR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3202', '32', 'KAB. SUKABUMI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3203', '32', 'KAB. CIANJUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3204', '32', 'KAB. BANDUNG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3205', '32', 'KAB. GARUT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3206', '32', 'KAB. TASIKMALAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3207', '32', 'KAB. CIAMIS');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3208', '32', 'KAB. KUNINGAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3209', '32', 'KAB. CIREBON');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3210', '32', 'KAB. MAJALENGKA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3211', '32', 'KAB. SUMEDANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3212', '32', 'KAB. INDRAMAYU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3213', '32', 'KAB. SUBANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3214', '32', 'KAB. PURWAKARTA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3215', '32', 'KAB. KARAWANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3216', '32', 'KAB. BEKASI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3217', '32', 'KAB. BANDUNG BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3218', '32', 'KAB. PANGANDARAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3271', '32', 'KOTA BOGOR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3272', '32', 'KOTA SUKABUMI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3273', '32', 'KOTA BANDUNG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3274', '32', 'KOTA CIREBON');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3275', '32', 'KOTA BEKASI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3276', '32', 'KOTA DEPOK');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3277', '32', 'KOTA CIMAHI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3278', '32', 'KOTA TASIKMALAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3279', '32', 'KOTA BANJAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3301', '33', 'KAB. CILACAP');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3302', '33', 'KAB. BANYUMAS');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3303', '33', 'KAB. PURBALINGGA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3304', '33', 'KAB. BANJARNEGARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3305', '33', 'KAB. KEBUMEN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3306', '33', 'KAB. PURWOREJO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3307', '33', 'KAB. WONOSOBO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3308', '33', 'KAB. MAGELANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3309', '33', 'KAB. BOYOLALI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3310', '33', 'KAB. KLATEN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3311', '33', 'KAB. SUKOHARJO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3312', '33', 'KAB. WONOGIRI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3313', '33', 'KAB. KARANGANYAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3314', '33', 'KAB. SRAGEN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3315', '33', 'KAB. GROBOGAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3316', '33', 'KAB. BLORA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3317', '33', 'KAB. REMBANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3318', '33', 'KAB. PATI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3319', '33', 'KAB. KUDUS');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3320', '33', 'KAB. JEPARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3321', '33', 'KAB. DEMAK');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3322', '33', 'KAB. SEMARANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3323', '33', 'KAB. TEMANGGUNG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3324', '33', 'KAB. KENDAL');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3325', '33', 'KAB. BATANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3326', '33', 'KAB. PEKALONGAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3327', '33', 'KAB. PEMALANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3328', '33', 'KAB. TEGAL');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3329', '33', 'KAB. BREBES');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3371', '33', 'KOTA MAGELANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3372', '33', 'KOTA SURAKARTA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3373', '33', 'KOTA SALATIGA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3374', '33', 'KOTA SEMARANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3375', '33', 'KOTA PEKALONGAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3376', '33', 'KOTA TEGAL');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3401', '34', 'KAB. KULON PROGO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3402', '34', 'KAB. BANTUL');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3403', '34', 'KAB. GUNUNG KIDUL');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3404', '34', 'KAB. SLEMAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3471', '34', 'KOTA YOGYAKARTA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3501', '35', 'KAB. PACITAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3502', '35', 'KAB. PONOROGO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3503', '35', 'KAB. TRENGGALEK');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3504', '35', 'KAB. TULUNGAGUNG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3505', '35', 'KAB. BLITAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3506', '35', 'KAB. KEDIRI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3507', '35', 'KAB. MALANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3508', '35', 'KAB. LUMAJANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3509', '35', 'KAB. JEMBER');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3510', '35', 'KAB. BANYUWANGI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3511', '35', 'KAB. BONDOWOSO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3512', '35', 'KAB. SITUBONDO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3513', '35', 'KAB. PROBOLINGGO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3514', '35', 'KAB. PASURUAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3515', '35', 'KAB. SIDOARJO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3516', '35', 'KAB. MOJOKERTO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3517', '35', 'KAB. JOMBANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3518', '35', 'KAB. NGANJUK');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3519', '35', 'KAB. MADIUN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3520', '35', 'KAB. MAGETAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3521', '35', 'KAB. NGAWI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3522', '35', 'KAB. BOJONEGORO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3523', '35', 'KAB. TUBAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3524', '35', 'KAB. LAMONGAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3525', '35', 'KAB. GRESIK');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3526', '35', 'KAB. BANGKALAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3527', '35', 'KAB. SAMPANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3528', '35', 'KAB. PAMEKASAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3529', '35', 'KAB. SUMENEP');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3571', '35', 'KOTA KEDIRI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3572', '35', 'KOTA BLITAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3573', '35', 'KOTA MALANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3574', '35', 'KOTA PROBOLINGGO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3575', '35', 'KOTA PASURUAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3576', '35', 'KOTA MOJOKERTO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3577', '35', 'KOTA MADIUN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3578', '35', 'KOTA SURABAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3579', '35', 'KOTA BATU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3601', '36', 'KAB. PANDEGLANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3602', '36', 'KAB. LEBAK');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3603', '36', 'KAB. TANGERANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3604', '36', 'KAB. SERANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3671', '36', 'KOTA TANGERANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3672', '36', 'KOTA CILEGON');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3673', '36', 'KOTA SERANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('3674', '36', 'KOTA TANGERANG SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5101', '51', 'KAB. JEMBRANA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5102', '51', 'KAB. TABANAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5103', '51', 'KAB. BADUNG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5104', '51', 'KAB. GIANYAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5105', '51', 'KAB. KLUNGKUNG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5106', '51', 'KAB. BANGLI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5107', '51', 'KAB. KARANGASEM');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5108', '51', 'KAB. BULELENG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5171', '51', 'KOTA DENPASAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5201', '52', 'KAB. LOMBOK BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5202', '52', 'KAB. LOMBOK TENGAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5203', '52', 'KAB. LOMBOK TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5204', '52', 'KAB. SUMBAWA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5205', '52', 'KAB. DOMPU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5206', '52', 'KAB. BIMA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5207', '52', 'KAB. SUMBAWA BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5208', '52', 'KAB. LOMBOK UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5271', '52', 'KOTA MATARAM');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5272', '52', 'KOTA BIMA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5301', '53', 'KAB. KUPANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5302', '53', 'KAB TIMOR TENGAH SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5303', '53', 'KAB. TIMOR TENGAH UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5304', '53', 'KAB. BELU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5305', '53', 'KAB. ALOR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5306', '53', 'KAB. FLORES TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5307', '53', 'KAB. SIKKA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5308', '53', 'KAB. ENDE');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5309', '53', 'KAB. NGADA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5310', '53', 'KAB. MANGGARAI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5311', '53', 'KAB. SUMBA TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5312', '53', 'KAB. SUMBA BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5313', '53', 'KAB. LEMBATA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5314', '53', 'KAB. ROTE NDAO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5315', '53', 'KAB. MANGGARAI BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5316', '53', 'KAB. NAGEKEO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5317', '53', 'KAB. SUMBA TENGAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5318', '53', 'KAB. SUMBA BARAT DAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5319', '53', 'KAB. MANGGARAI TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5320', '53', 'KAB. SABU RAIJUA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5321', '53', 'KAB. MALAKA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('5371', '53', 'KOTA KUPANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6101', '61', 'KAB. SAMBAS');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6102', '61', 'KAB. MEMPAWAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6103', '61', 'KAB. SANGGAU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6104', '61', 'KAB. KETAPANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6105', '61', 'KAB. SINTANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6106', '61', 'KAB. KAPUAS HULU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6107', '61', 'KAB. BENGKAYANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6108', '61', 'KAB. LANDAK');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6109', '61', 'KAB. SEKADAU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6110', '61', 'KAB. MELAWI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6111', '61', 'KAB. KAYONG UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6112', '61', 'KAB. KUBU RAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6171', '61', 'KOTA PONTIANAK');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6172', '61', 'KOTA SINGKAWANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6201', '62', 'KAB. KOTAWARINGIN BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6202', '62', 'KAB. KOTAWARINGIN TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6203', '62', 'KAB. KAPUAS');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6204', '62', 'KAB. BARITO SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6205', '62', 'KAB. BARITO UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6206', '62', 'KAB. KATINGAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6207', '62', 'KAB. SERUYAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6208', '62', 'KAB. SUKAMARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6209', '62', 'KAB. LAMANDAU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6210', '62', 'KAB. GUNUNG MAS');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6211', '62', 'KAB. PULANG PISAU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6212', '62', 'KAB. MURUNG RAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6213', '62', 'KAB. BARITO TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6271', '62', 'KOTA PALANGKARAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6301', '63', 'KAB. TANAH LAUT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6302', '63', 'KAB. KOTABARU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6303', '63', 'KAB. BANJAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6304', '63', 'KAB. BARITO KUALA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6305', '63', 'KAB. TAPIN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6306', '63', 'KAB. HULU SUNGAI SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6307', '63', 'KAB. HULU SUNGAI TENGAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6308', '63', 'KAB. HULU SUNGAI UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6309', '63', 'KAB. TABALONG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6310', '63', 'KAB. TANAH BUMBU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6311', '63', 'KAB. BALANGAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6371', '63', 'KOTA BANJARMASIN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6372', '63', 'KOTA BANJARBARU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6401', '64', 'KAB. PASER');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6402', '64', 'KAB. KUTAI KARTANEGARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6403', '64', 'KAB. BERAU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6407', '64', 'KAB. KUTAI BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6408', '64', 'KAB. KUTAI TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6409', '64', 'KAB. PENAJAM PASER UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6411', '64', 'KAB. MAHAKAM ULU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6471', '64', 'KOTA BALIKPAPAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6472', '64', 'KOTA SAMARINDA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6474', '64', 'KOTA BONTANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6501', '65', 'KAB. BULUNGAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6502', '65', 'KAB. MALINAU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6503', '65', 'KAB. NUNUKAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6504', '65', 'KAB. TANA TIDUNG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('6571', '65', 'KOTA TARAKAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7101', '71', 'KAB. BOLAANG MONGONDOW');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7102', '71', 'KAB. MINAHASA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7103', '71', 'KAB. KEPULAUAN SANGIHE');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7104', '71', 'KAB. KEPULAUAN TALAUD');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7105', '71', 'KAB. MINAHASA SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7106', '71', 'KAB. MINAHASA UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7107', '71', 'KAB. MINAHASA TENGGARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7108', '71', 'KAB. BOLAANG MONGONDOW UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7109', '71', 'KAB. KEP. SIAU TAGULANDANG BIARO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7110', '71', 'KAB. BOLAANG MONGONDOW TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7111', '71', 'KAB. BOLAANG MONGONDOW SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7171', '71', 'KOTA MANADO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7172', '71', 'KOTA BITUNG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7173', '71', 'KOTA TOMOHON');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7174', '71', 'KOTA KOTAMOBAGU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7201', '72', 'KAB. BANGGAI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7202', '72', 'KAB. POSO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7203', '72', 'KAB. DONGGALA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7204', '72', 'KAB. TOLI TOLI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7205', '72', 'KAB. BUOL');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7206', '72', 'KAB. MOROWALI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7207', '72', 'KAB. BANGGAI KEPULAUAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7208', '72', 'KAB. PARIGI MOUTONG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7209', '72', 'KAB. TOJO UNA UNA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7210', '72', 'KAB. SIGI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7211', '72', 'KAB. BANGGAI LAUT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7212', '72', 'KAB. MOROWALI UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7271', '72', 'KOTA PALU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7301', '73', 'KAB. KEPULAUAN SELAYAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7302', '73', 'KAB. BULUKUMBA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7303', '73', 'KAB. BANTAENG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7304', '73', 'KAB. JENEPONTO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7305', '73', 'KAB. TAKALAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7306', '73', 'KAB. GOWA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7307', '73', 'KAB. SINJAI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7308', '73', 'KAB. BONE');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7309', '73', 'KAB. MAROS');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7310', '73', 'KAB. PANGKAJENE KEPULAUAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7311', '73', 'KAB. BARRU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7312', '73', 'KAB. SOPPENG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7313', '73', 'KAB. WAJO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7314', '73', 'KAB. SIDENRENG RAPPANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7315', '73', 'KAB. PINRANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7316', '73', 'KAB. ENREKANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7317', '73', 'KAB. LUWU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7318', '73', 'KAB. TANA TORAJA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7322', '73', 'KAB. LUWU UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7324', '73', 'KAB. LUWU TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7326', '73', 'KAB. TORAJA UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7371', '73', 'KOTA MAKASSAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7372', '73', 'KOTA PARE PARE');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7373', '73', 'KOTA PALOPO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7401', '74', 'KAB. KOLAKA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7402', '74', 'KAB. KONAWE');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7403', '74', 'KAB. MUNA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7404', '74', 'KAB. BUTON');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7405', '74', 'KAB. KONAWE SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7406', '74', 'KAB. BOMBANA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7407', '74', 'KAB. WAKATOBI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7408', '74', 'KAB. KOLAKA UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7409', '74', 'KAB. KONAWE UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7410', '74', 'KAB. BUTON UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7411', '74', 'KAB. KOLAKA TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7412', '74', 'KAB. KONAWE KEPULAUAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7413', '74', 'KAB. MUNA BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7414', '74', 'KAB. BUTON TENGAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7415', '74', 'KAB. BUTON SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7471', '74', 'KOTA KENDARI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7472', '74', 'KOTA BAU BAU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7501', '75', 'KAB. GORONTALO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7502', '75', 'KAB. BOALEMO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7503', '75', 'KAB. BONE BOLANGO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7504', '75', 'KAB. PAHUWATO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7505', '75', 'KAB. GORONTALO UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7571', '75', 'KOTA GORONTALO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7601', '76', 'KAB. MAMUJU UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7602', '76', 'KAB. MAMUJU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7603', '76', 'KAB. MAMASA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7604', '76', 'KAB. POLEWALI MANDAR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7605', '76', 'KAB. MAJENE');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('7606', '76', 'KAB. MAMUJU TENGAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8101', '81', 'KAB. MALUKU TENGAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8102', '81', 'KAB. MALUKU TENGGARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8103', '81', 'KAB MALUKU TENGGARA BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8104', '81', 'KAB. BURU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8105', '81', 'KAB. SERAM BAGIAN TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8106', '81', 'KAB. SERAM BAGIAN BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8107', '81', 'KAB. KEPULAUAN ARU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8108', '81', 'KAB. MALUKU BARAT DAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8109', '81', 'KAB. BURU SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8171', '81', 'KOTA AMBON');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8172', '81', 'KOTA TUAL');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8201', '82', 'KAB. HALMAHERA BARAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8202', '82', 'KAB. HALMAHERA TENGAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8203', '82', 'KAB. HALMAHERA UTARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8204', '82', 'KAB. HALMAHERA SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8205', '82', 'KAB. KEPULAUAN SULA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8206', '82', 'KAB. HALMAHERA TIMUR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8207', '82', 'KAB. PULAU MOROTAI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8208', '82', 'KAB. PULAU TALIABU');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8271', '82', 'KOTA TERNATE');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('8272', '82', 'KOTA TIDORE KEPULAUAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9101', '91', 'KAB. MERAUKE');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9102', '91', 'KAB. JAYAWIJAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9103', '91', 'KAB. JAYAPURA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9104', '91', 'KAB. NABIRE');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9105', '91', 'KAB. KEPULAUAN YAPEN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9106', '91', 'KAB. BIAK NUMFOR');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9107', '91', 'KAB. PUNCAK JAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9108', '91', 'KAB. PANIAI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9109', '91', 'KAB. MIMIKA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9110', '91', 'KAB. SARMI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9111', '91', 'KAB. KEEROM');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9112', '91', 'KAB PEGUNUNGAN BINTANG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9113', '91', 'KAB. YAHUKIMO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9114', '91', 'KAB. TOLIKARA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9115', '91', 'KAB. WAROPEN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9116', '91', 'KAB. BOVEN DIGOEL');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9117', '91', 'KAB. MAPPI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9118', '91', 'KAB. ASMAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9119', '91', 'KAB. SUPIORI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9120', '91', 'KAB. MAMBERAMO RAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9121', '91', 'KAB. MAMBERAMO TENGAH');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9122', '91', 'KAB. YALIMO');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9123', '91', 'KAB. LANNY JAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9124', '91', 'KAB. NDUGA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9125', '91', 'KAB. PUNCAK');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9126', '91', 'KAB. DOGIYAI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9127', '91', 'KAB. INTAN JAYA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9128', '91', 'KAB. DEIYAI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9171', '91', 'KOTA JAYAPURA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9201', '92', 'KAB. SORONG');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9202', '92', 'KAB. MANOKWARI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9203', '92', 'KAB. FAK FAK');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9204', '92', 'KAB. SORONG SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9205', '92', 'KAB. RAJA AMPAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9206', '92', 'KAB. TELUK BINTUNI');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9207', '92', 'KAB. TELUK WONDAMA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9208', '92', 'KAB. KAIMANA');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9209', '92', 'KAB. TAMBRAUW');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9210', '92', 'KAB. MAYBRAT');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9211', '92', 'KAB. MANOKWARI SELATAN');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9212', '92', 'KAB. PEGUNUNGAN ARFAK');
INSERT INTO `tbl_kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
	('9271', '92', 'KOTA SORONG');
/*!40000 ALTER TABLE `tbl_kabupaten` ENABLE KEYS */;


-- Dumping structure for table mule7148_treemap.tbl_mahasiswa
CREATE TABLE IF NOT EXISTS `tbl_mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT,
  `no_pendaftar` varchar(25) DEFAULT NULL,
  `no_mahasiswa` varchar(25) NOT NULL,
  `semester` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_mahasiswa`),
  UNIQUE KEY `nim_mahasiswa` (`no_mahasiswa`),
  KEY `FK_no_pendaftar_mahasiswa` (`no_pendaftar`),
  CONSTRAINT `FK_no_pendaftar_mahasiswa` FOREIGN KEY (`no_pendaftar`) REFERENCES `tbl_pendaftar` (`no_pendaftar`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table mule7148_treemap.tbl_mahasiswa: ~1 rows (approximately)
/*!40000 ALTER TABLE `tbl_mahasiswa` DISABLE KEYS */;
INSERT INTO `tbl_mahasiswa` (`id_mahasiswa`, `no_pendaftar`, `no_mahasiswa`, `semester`) VALUES
	(4, '2018-05-27001', '12222', 2);
/*!40000 ALTER TABLE `tbl_mahasiswa` ENABLE KEYS */;


-- Dumping structure for table mule7148_treemap.tbl_pendaftar
CREATE TABLE IF NOT EXISTS `tbl_pendaftar` (
  `id_pendaftar` int(11) NOT NULL AUTO_INCREMENT,
  `no_pendaftar` varchar(25) NOT NULL,
  `waktu_mendaftar` date NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `no_telepon` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `kota_lahir` char(4) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat_rumah` text DEFAULT NULL,
  `jenjang_pendidikan` varchar(15) DEFAULT NULL,
  `sekolah` int(11) DEFAULT NULL,
  `asal_jurusan` varchar(50) DEFAULT NULL,
  `tahun_lulus` year(4) DEFAULT NULL,
  `subjalur` int(11) DEFAULT NULL,
  `prodi_pilihan1` int(11) DEFAULT NULL,
  `prodi_pilihan2` int(11) DEFAULT NULL,
  `prodi_lulus` int(11) DEFAULT NULL,
  `status_kelulusan` int(1) DEFAULT 0,
  PRIMARY KEY (`id_pendaftar`),
  UNIQUE KEY `no_pendaftar` (`no_pendaftar`),
  KEY `FK_kota_lahir` (`kota_lahir`),
  KEY `FK_sekolah` (`sekolah`),
  KEY `FK_subjalur` (`subjalur`),
  KEY `FK_prodi_pilihan1` (`prodi_pilihan1`),
  KEY `FK_prodi_pilihan2` (`prodi_pilihan2`),
  KEY `FK_prodi_lulus` (`prodi_lulus`),
  CONSTRAINT `FK_kota_lahir` FOREIGN KEY (`kota_lahir`) REFERENCES `tbl_kabupaten` (`id_kab`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_prodi_lulus` FOREIGN KEY (`prodi_lulus`) REFERENCES `tbl_prodi` (`id_prodi`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_prodi_pilihan1` FOREIGN KEY (`prodi_pilihan1`) REFERENCES `tbl_prodi` (`id_prodi`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_prodi_pilihan2` FOREIGN KEY (`prodi_pilihan2`) REFERENCES `tbl_prodi` (`id_prodi`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_sekolah` FOREIGN KEY (`sekolah`) REFERENCES `tbl_sekolah` (`id_sekolah`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_subjalur` FOREIGN KEY (`subjalur`) REFERENCES `tbl_subjalur` (`id_subjalur`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table mule7148_treemap.tbl_pendaftar: ~9 rows (approximately)
/*!40000 ALTER TABLE `tbl_pendaftar` DISABLE KEYS */;
INSERT INTO `tbl_pendaftar` (`id_pendaftar`, `no_pendaftar`, `waktu_mendaftar`, `nama_lengkap`, `jenis_kelamin`, `no_telepon`, `email`, `kota_lahir`, `tanggal_lahir`, `alamat_rumah`, `jenjang_pendidikan`, `sekolah`, `asal_jurusan`, `tahun_lulus`, `subjalur`, `prodi_pilihan1`, `prodi_pilihan2`, `prodi_lulus`, `status_kelulusan`) VALUES
	(1, '2018-05-27001', '2018-05-27', 'Kalium', 'L', '0832343322323', 'kalim@ko.com', '3602', '2020-03-30', 'Kakaka', 'SLTA', 254, 'IPA', '2019', 1, 19, 4, 4, 1);
INSERT INTO `tbl_pendaftar` (`id_pendaftar`, `no_pendaftar`, `waktu_mendaftar`, `nama_lengkap`, `jenis_kelamin`, `no_telepon`, `email`, `kota_lahir`, `tanggal_lahir`, `alamat_rumah`, `jenjang_pendidikan`, `sekolah`, `asal_jurusan`, `tahun_lulus`, `subjalur`, `prodi_pilihan1`, `prodi_pilihan2`, `prodi_lulus`, `status_kelulusan`) VALUES
	(2, '2017-05-27002', '2017-05-27', 'Kalium', 'L', '123456789', 'sds@sds.com', '3602', '2020-03-30', 'Kakaka', 'SLTA', 254, 'IPA', '2019', 1, 19, 4, 4, 1);
INSERT INTO `tbl_pendaftar` (`id_pendaftar`, `no_pendaftar`, `waktu_mendaftar`, `nama_lengkap`, `jenis_kelamin`, `no_telepon`, `email`, `kota_lahir`, `tanggal_lahir`, `alamat_rumah`, `jenjang_pendidikan`, `sekolah`, `asal_jurusan`, `tahun_lulus`, `subjalur`, `prodi_pilihan1`, `prodi_pilihan2`, `prodi_lulus`, `status_kelulusan`) VALUES
	(3, '2017-05-27003', '2017-05-27', 'Kalium', 'L', '123456789', 'sds@sds.com', '3602', '2020-03-30', 'Kakaka', 'SLTA', 254, 'IPA', '2019', 1, 19, 4, 4, 1);
INSERT INTO `tbl_pendaftar` (`id_pendaftar`, `no_pendaftar`, `waktu_mendaftar`, `nama_lengkap`, `jenis_kelamin`, `no_telepon`, `email`, `kota_lahir`, `tanggal_lahir`, `alamat_rumah`, `jenjang_pendidikan`, `sekolah`, `asal_jurusan`, `tahun_lulus`, `subjalur`, `prodi_pilihan1`, `prodi_pilihan2`, `prodi_lulus`, `status_kelulusan`) VALUES
	(4, '2016-05-27004', '2016-05-27', 'Kalium', 'L', '123456789', 'sds@sds.com', '3602', '2020-03-30', 'Kakaka', 'SLTA', 254, 'IPA', '2019', 1, 19, 4, 4, 1);
INSERT INTO `tbl_pendaftar` (`id_pendaftar`, `no_pendaftar`, `waktu_mendaftar`, `nama_lengkap`, `jenis_kelamin`, `no_telepon`, `email`, `kota_lahir`, `tanggal_lahir`, `alamat_rumah`, `jenjang_pendidikan`, `sekolah`, `asal_jurusan`, `tahun_lulus`, `subjalur`, `prodi_pilihan1`, `prodi_pilihan2`, `prodi_lulus`, `status_kelulusan`) VALUES
	(5, '2016-05-27005', '2016-05-27', 'Kalium', 'L', '123456789', 'sds@sds.com', '3602', '2020-03-30', 'Kakaka', 'SLTA', 254, 'IPA', '2019', 1, 19, 4, 4, 1);
INSERT INTO `tbl_pendaftar` (`id_pendaftar`, `no_pendaftar`, `waktu_mendaftar`, `nama_lengkap`, `jenis_kelamin`, `no_telepon`, `email`, `kota_lahir`, `tanggal_lahir`, `alamat_rumah`, `jenjang_pendidikan`, `sekolah`, `asal_jurusan`, `tahun_lulus`, `subjalur`, `prodi_pilihan1`, `prodi_pilihan2`, `prodi_lulus`, `status_kelulusan`) VALUES
	(6, '2016-05-27006', '2016-05-27', 'Kalium', 'L', '123456789', 'sds@sds.com', '3602', '2020-03-30', 'Kakaka', 'SLTA', 254, 'IPA', '2019', 1, 19, 4, 4, 1);
INSERT INTO `tbl_pendaftar` (`id_pendaftar`, `no_pendaftar`, `waktu_mendaftar`, `nama_lengkap`, `jenis_kelamin`, `no_telepon`, `email`, `kota_lahir`, `tanggal_lahir`, `alamat_rumah`, `jenjang_pendidikan`, `sekolah`, `asal_jurusan`, `tahun_lulus`, `subjalur`, `prodi_pilihan1`, `prodi_pilihan2`, `prodi_lulus`, `status_kelulusan`) VALUES
	(7, '2016-05-27007', '2016-05-27', 'Kalium', 'L', '123456789', 'sds@sds.com', '3602', '2020-03-30', 'Kakaka', 'SLTA', 254, 'IPA', '2019', 1, 19, 4, 4, 1);
INSERT INTO `tbl_pendaftar` (`id_pendaftar`, `no_pendaftar`, `waktu_mendaftar`, `nama_lengkap`, `jenis_kelamin`, `no_telepon`, `email`, `kota_lahir`, `tanggal_lahir`, `alamat_rumah`, `jenjang_pendidikan`, `sekolah`, `asal_jurusan`, `tahun_lulus`, `subjalur`, `prodi_pilihan1`, `prodi_pilihan2`, `prodi_lulus`, `status_kelulusan`) VALUES
	(8, '2019-05-27007', '2019-05-27', 'Kalium', 'L', '123456789', 'sds@sds.com', '3602', '2020-03-30', 'Kakaka', 'SLTA', 254, 'IPA', '2019', 1, 19, 4, 4, 1);
INSERT INTO `tbl_pendaftar` (`id_pendaftar`, `no_pendaftar`, `waktu_mendaftar`, `nama_lengkap`, `jenis_kelamin`, `no_telepon`, `email`, `kota_lahir`, `tanggal_lahir`, `alamat_rumah`, `jenjang_pendidikan`, `sekolah`, `asal_jurusan`, `tahun_lulus`, `subjalur`, `prodi_pilihan1`, `prodi_pilihan2`, `prodi_lulus`, `status_kelulusan`) VALUES
	(9, '2019-05-27008', '2019-05-27', 'Kalium', 'L', '123456789', 'sds@sds.com', '3602', '2020-03-30', 'Kakaka', 'SLTA', 254, 'IPA', '2019', 1, 19, 4, 4, 1);
/*!40000 ALTER TABLE `tbl_pendaftar` ENABLE KEYS */;


-- Dumping structure for table mule7148_treemap.tbl_prodi
CREATE TABLE IF NOT EXISTS `tbl_prodi` (
  `id_prodi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_prodi` varchar(50) NOT NULL,
  `nama_fakultas` varchar(40) NOT NULL,
  `jenjang` varchar(25) NOT NULL,
  `jenis` char(3) NOT NULL,
  PRIMARY KEY (`id_prodi`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table mule7148_treemap.tbl_prodi: ~22 rows (approximately)
/*!40000 ALTER TABLE `tbl_prodi` DISABLE KEYS */;
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(1, 'Manajemen', 'Fakultas Ekonomi', 'S1', 'IPS');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(2, 'Akuntansi', 'Fakultas Ekonomi', 'S1', 'IPS');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(3, 'Ilmu Hukum', 'Fakultas Hukum', 'S1', 'IPS');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(4, 'Ilmu Administrasi Negara', 'Fakultas Ilmu Administrasi', 'S1', 'IPS');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(5, 'Ilmu Administrasi Niaga', 'Fakultas Ilmu Administrasi', 'S1', 'IPS');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(6, 'Ilmu Perpustakaan', 'Fakultas Ilmu Budaya', 'S1', 'IPS');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(7, 'Sastra Indonesia', 'Fakultas Ilmu Budaya', 'S1', 'IPS');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(8, 'Sastra Inggris', 'Fakultas Ilmu Budaya', 'S1', 'IPS');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(9, 'Sastra Daerah', 'Fakultas Ilmu Budaya', 'S1', 'IPS');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(10, 'Pendidikan Biologi', 'Fakultas Keguruan dan Ilmu Pendidikan', 'S1', 'IPA');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(11, 'Pendidikan Guru Pendidikan Anak Usia Dini', 'Fakultas Keguruan dan Ilmu Pendidikan', 'S1', 'IPS');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(12, 'Pendidikan Bahasa Inggris', 'Fakultas Keguruan dan Ilmu Pendidikan', 'S1', 'IPS');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(13, 'Teknik Informatika', 'Fakultas Ilmu Komputer', 'S1', 'IPA');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(14, 'Sistem Informasi', 'Fakultas Ilmu Komputer', 'S1', 'IPA');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(15, 'Agribisnis', 'Fakultas Pertanian', 'S1', 'IPA');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(16, 'Agroteknologi', 'Fakultas Pertanian', 'S1', 'IPA');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(17, 'Teknik Elektro', 'Fakultas Teknik', 'S1', 'IPA');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(18, 'Teknik Sipil', 'Fakultas Teknik', 'S1', 'IPA');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(19, 'Arsitektur', 'Fakultas Teknik', 'S1', 'IPS');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(20, 'Kehutanan', 'Fakultas Kehutanan', 'S1', 'IPA');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(21, 'Manajemen', 'Pasca Sarjana', 'S2', 'IPS');
INSERT INTO `tbl_prodi` (`id_prodi`, `nama_prodi`, `nama_fakultas`, `jenjang`, `jenis`) VALUES
	(22, 'Ilmu Hukum', 'Pasca Sarjana', 'S2', 'IPS');
/*!40000 ALTER TABLE `tbl_prodi` ENABLE KEYS */;


-- Dumping structure for table mule7148_treemap.tbl_provinsi
CREATE TABLE IF NOT EXISTS `tbl_provinsi` (
  `id_prov` char(2) NOT NULL,
  `nama` tinytext NOT NULL,
  PRIMARY KEY (`id_prov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table mule7148_treemap.tbl_provinsi: ~34 rows (approximately)
/*!40000 ALTER TABLE `tbl_provinsi` DISABLE KEYS */;
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('11', 'Aceh');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('12', 'Sumatera Utara');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('13', 'Sumatera Barat');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('14', 'Riau');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('15', 'Jambi');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('16', 'Sumatera Selatan');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('17', 'Bengkulu');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('18', 'Lampung');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('19', 'Kepulauan Bangka Belitung');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('21', 'Kepulauan Riau');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('31', 'DKI Jakarta');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('32', 'Jawa Barat');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('33', 'Jawa Tengah');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('34', 'DI Yogyakarta');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('35', 'Jawa Timur');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('36', 'Banten');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('51', 'Bali');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('52', 'Nusa Tenggara Barat');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('53', 'Nusa Tenggara Timur');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('61', 'Kalimantan Barat');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('62', 'Kalimantan Tengah');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('63', 'Kalimantan Selatan');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('64', 'Kalimantan Timur');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('65', 'Kalimantan Utara');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('71', 'Sulawesi Utara');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('72', 'Sulawesi Tengah');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('73', 'Sulawesi Selatan');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('74', 'Sulawesi Tenggara');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('75', 'Gorontalo');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('76', 'Sulawesi Barat');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('81', 'Maluku');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('82', 'Maluku Utara');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('91', 'Papua Barat');
INSERT INTO `tbl_provinsi` (`id_prov`, `nama`) VALUES
	('92', 'Papua');
/*!40000 ALTER TABLE `tbl_provinsi` ENABLE KEYS */;


-- Dumping structure for table mule7148_treemap.tbl_sekolah
CREATE TABLE IF NOT EXISTS `tbl_sekolah` (
  `id_sekolah` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sekolah` varchar(25) NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `kota_sekolah` char(4) DEFAULT NULL,
  `jenis_sekolah` varchar(25) NOT NULL,
  `telp` varchar(25) NOT NULL,
  PRIMARY KEY (`id_sekolah`),
  KEY `FK_kota_sekolah_sekolah` (`kota_sekolah`),
  CONSTRAINT `FK_kota_sekolah_sekolah` FOREIGN KEY (`kota_sekolah`) REFERENCES `tbl_kabupaten` (`id_kab`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=733 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table mule7148_treemap.tbl_sekolah: ~731 rows (approximately)
/*!40000 ALTER TABLE `tbl_sekolah` DISABLE KEYS */;
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(1, 'MA AL FALAH', 'AIR TIRIS', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(2, 'MA AL FITRAH BALUNG', 'BALUNG', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(3, 'MA ANSHARULLAH', 'PL.BIRANDANG', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(4, 'MA DARUL WASI\'AH SIMALINY', 'SIMALINYANG', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(5, 'MA PP DARUL FATAH', 'KAMPAU UTARA', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(6, 'MA PP UBUDIYATUL SALAM', 'KAMPAR KIRI', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(7, 'MA PPS.SYEH BURHANUDDDIN', 'KAMPAR KIRI', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(8, 'MA. HIMMATUL UMMAH', 'TAPUNG', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(9, 'MA.AL-FALAH TAPUNG MAKMUR', 'TAPUNG HILIR', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(10, 'MAN KAMPAR', 'Desa Tanjung Rambutan', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(11, 'MAN KUOK', 'Jl. A. Rahman Samad Kuok', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(12, 'MAN LIPAT KAIN', 'Sungai Jalai Lipat Kain', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(13, 'MAS AL FITRAH BALUNG', 'BALUNG', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(14, 'MAS AL-ISLAM RUMBIO', 'Jl. Pulau Silanag Rumbio', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(15, 'MAS ALAM PANJANG', 'ALAM PANJANG', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(16, 'MAS AN SORUSSUNNAH', 'LK III Kel. Air Tiris', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(17, 'MAS ASY SYAFI\'YAH', 'Air Tiris', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(18, 'MAS BABUNNAJAH', 'Jl. DT. Marajo Jamin', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(19, 'MAS DARUSSAKINAH', 'Jl. Raya Candi Muara Takus', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(20, 'MAS ISLAMIC CENTRE', 'Jl. Negara Pekanbaru - Bangkinang', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(21, 'MAS KAMPAR TIMUR', 'KM 35 PEKANBARU-BANGKINANG', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(22, 'MAS KAMPUNG GADANG', 'Jl. Peltu Syaidan', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(23, 'MAS KUNTU', 'KAMPAR KIRI', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(24, 'MAS MIFTAHUL HUDA', 'Jl. Kenanta', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(25, 'MAS MUALIMIN MUHAMMADYAH', 'Jl. Prof. M. Yamin No.53', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(26, 'MAS MUHAMMADIYAH', 'Desa Penyesawan', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(27, 'MAS NAHDLATUL ULUM', 'Sei Putih', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(28, 'MAS PLUS SUNGAI TONANG', 'Desa Sungai Tonang', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(29, 'MAS PP AT-TAUFIK', 'JL.RAYA PETAPAHAN', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(30, 'MAS PP BAHRUL ULUM', 'Jl. Pantai Raja', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(31, 'MAS PP DARUL HUDA', 'Jl. Pulau Masjid', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(32, 'MAS PP MTI BERULAK', 'Tg Berulak', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(33, 'MAS PP. AL BADR BANGKINAN', 'Jl. Jend. Sudirman', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(34, 'MAS PP. AL HIKMAH PUALU', 'LK III Kelurahan Pualu', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(35, 'MAS PP. DARUN NAHDHAH', 'Jl Syarifuddin Syarif. I', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(36, 'MAS PP. TAHFIZUL QUR\'AN', 'KM. 28 Sungai Pinang', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(37, 'MAS PPTIDARUL WASIA\'H', 'Simalinyang', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(38, 'MAS TERANTANG', 'DESA TERANTANG', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(39, 'MAS YPUI TERATAK', 'Desa Teratak', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(40, 'SMA 1 TAPUNG HULU', 'TAPUNG HULU', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(41, 'SMA 3 TAPUNG', 'TAPUNG', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(42, 'SMA 3 XIII KOTO KAMPAR', 'XIII KOTO KAMPAR', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(43, 'SMA IT Bangkinang', 'Jl.Bangkinag- Raya Lipat Kain', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(44, 'SMA MUHAMMADIYAH BANGKINA', 'BANGKINANG', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(45, 'SMA N 1 BANGKINANG SEBERA', 'Bangkinang Seberang', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(46, 'SMA N 2 SIAK HULU', 'SIAK HULU', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(47, 'SMA PURNA MANUNGGAL', 'PURNA MANUNGGAL', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(48, 'SMA SUNGAI PUTIH', 'KAMPAR KIRI TENGAH', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(49, 'SMA SUNGAI PUTIH', 'Jl. Teratai Raya Desa Sungai Putih Kec. Tapung', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(50, 'SMALB Bangkinang', 'Bangkinang', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(51, 'SMAN 1 BANGKINANG', 'JL. SUDIRMAN NO.65 KAMPAR RIAU', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(52, 'SMAN 1 BANGKINANG BARAT', 'SUNGAI MAKI KUOK KM 72', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(53, 'SMAN 1 KAMPAR', 'KAMPAR', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(54, 'SMAN 1 KAMPAR KIRI', 'KAMPAR KIRI', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(55, 'SMAN 1 KAMPAR KIRI HILIR', 'SUNGAI PAGAR', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(56, 'SMAN 1 KAMPAR KIRI HULU', 'GEMA', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(57, 'SMAN 1 PERHENTIAN RAJA', 'DESA PANTAI RAJA', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(58, 'SMAN 1 RUMBIO JAYA', 'RUMBIO JAYA', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(59, 'SMAN 1 SIAK HULU', 'DEPNAKER No. 10 PANGKALAN BARU', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(60, 'SMAN 1 SIAK HULU', 'JLN DEPNAKER NO 10', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(61, 'SMAN 1 TAMBANG', 'TAMBANG', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(62, 'SMAN 1 TAPUNG', 'TAPUNG', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(63, 'SMAN 1 TAPUNG HILIR', 'TAPUNG HILIR', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(64, 'SMAN 1 XIII KOTO KAMPAR', 'XIII KOTO KAMPAR', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(65, 'SMAN 2 BANGKINANG', 'Jl. Dra RAHMAN SALEH NO.55', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(66, 'SMAN 2 BANGKINANG BARAT', 'DUSUN LERENG MERANGIN', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(67, 'SMAN 2 KAMPAR', 'JL. RAYA AIR TIRIS KAMPAR RIAU', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(68, 'SMAN 2 KAMPAR KIRI', 'BINA BARU', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(69, 'SMAN 2 TAMBANG', 'TAMBANG', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(70, 'SMAN 2 TAPUNG', 'TAPUNG', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(71, 'SMAN 2 XIII KOTO KAMPAR', 'XIII KOTO KAMPAR', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(72, 'SMAN 3 BANGKINANG', 'SALO', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(73, 'SMAN 3 KAMPAR', 'KAMPAR', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(74, 'SMAN 3 KAMPAR KIRI', 'GUNUNG SAHILAN', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(75, 'SMAN 4 KAMPAR', 'KAMPAR UTARA', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(76, 'SMAS ISLAM AL HASANAH SIA', 'SIAK HULU', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(77, 'SMAS KUNTU', 'KUNTU', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(78, 'SMAS LKMD GUNUNG SARI', 'GUNUNG SARI', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(79, 'SMAS LKMD SUKARAMAI', 'SUKARAMAI', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(80, 'SMAS LPM GUNUNG SAHILAN', 'GUNUNG SAHILAN', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(81, 'SMAS LPM KIJANG MAKMUR', 'TAPUNG HILIR', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(82, 'SMAS LPM MUARA MAHAT BARU', 'MUARA MAHAT BARU', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(83, 'SMAS PERSIAPAN TAPUNG HUL', 'TAPUNG HULU', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(84, 'SMAS YLPK BANGKINANG', 'BANGKINANG', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(85, 'SMK 1 XIII KOTO KAMPAR', 'XIII KOTO KAMPAR', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(86, 'SMK AMANAH', 'KAMPAR KIRI TENGAH', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(87, 'SMK DHARMA ASIH', 'TAPUNG HILIR', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(88, 'SMK DWI DHARMA', 'Bangkinang', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(89, 'SMK MUHAMMADIYAH KUOK', 'KUOK', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(90, 'SMK YPLP PGRI', 'Bangkinang', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(91, 'SMKN 1 GUNUNG SAHILAN', 'GUNUNG SAHILAN', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(92, 'SMKS LPM SENAMA NENEK', 'TAPUNG HULU', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(93, 'SMKS LPM PETAPAHAN JAYA', 'PETAPAHAN JAYA', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(94, 'SMKS YLPM KOTA GARO', 'TAPUNG HILIR', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(95, 'SMK ASY-SYAFI\'IYAH AIR TI', 'JL. NEGARA PEKANBARU - BANGKINANG', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(96, 'SMK DWI DHARMA', 'JL. SIMPANG SIABU KM 1.5', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(97, 'SMK NEGERI 1 BANGKINANG', 'JL.Tuanku Tambusai No.20 Telp/Fax. (0762)21310, E-mail smkn1_bkn@yahoo.com', '1401', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(98, 'SMK PGRI BANGKINANG', 'JL. DI PANJAITAN NO. 58A', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(99, 'SMK YPTN BANGKINANG', 'JL. DR. A. RAHMAN SALEH', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(100, 'SMKS LPM PETAPAHAN', 'Jalan Pelajar', '1401', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(101, 'MA DARUL SULUH CENAKU KEC', 'DESA CENAKU KECIL', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(102, 'MAN RENGAT', 'Jl. Gerbang Sari', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(103, 'MAS AL IHSAN', 'Dusun Bumi Asih', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(104, 'MAS AL ISLAM', 'Petala Bumi', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(105, 'MAS HIDAYATULLAH', 'Kuala Cenaku KM 22', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(106, 'MAS MADINATUN NAJAH RENGA', 'Jl. Narasinga No. 72', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(107, 'MAS MIFTAHUL JANNAH PERAN', 'Jalan Jendral Sudirman', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(108, 'MAS NURUL FALAH', 'Jl. Jendral Sudirman', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(109, 'MAS NURUL IMAN', 'Sei Beringin', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(110, 'MAS PONPES SHIROTUL HUDA', 'Jl. Negara Simpang Selanjut', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(111, 'MAS PP KHAIRUL UMMAH', 'Jl. Raya Air Molek', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(112, 'MAS PP. AYYSYAAKIRIIN', 'Jl. Sudirman Sungai Lala', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(113, 'SMA 1 RENGAT', 'Jl.Sultan Km 4 Rengat Indragiri Hulu', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(114, 'SMA 1 SUNGAI LALA', 'PERKEBUNAN SUNGAI LALA', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(115, 'SMA Islam Darul Huda', 'Jl. Pesantren Desa Sei. Sagu', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(116, 'SMA MUHAMMADIYAH SEBERIDA', 'DESA BULUH RAMPAI', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(117, 'SMA S MUHAMMADDIYAH RENGA', 'Jl. R. Suprapto No. 81 Rengat', '1402', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(118, 'SMA S PGRI RENGAT', 'Jl. Sultan KM. 3 Rengat', '1402', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(119, 'SMA Serumpun Pasir Penyu', 'Desa Serumpun Jaya', '1402', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(120, 'SMAN 1 BATANG CENAKU', 'JL.LINTAS SELATAN AUR CINA', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(121, 'SMAN 1 KELAYANG', 'KEL. SIMPANG KELAYANG', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(122, 'SMAN 1 LIRIK', 'JL.LINTAS TIMUR', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(123, 'SMAN 1 PASIR PENYU', 'Air Molek. Indragiri Hulu', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(124, 'SMAN 1 PERANAP', 'Peranap. Indragiri Hulu', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(125, 'SMAN 1 RENGAT BARAT', 'Rengat. Indragiri Hulu', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(126, 'SMAN 1 SEBERIDA', 'JL. LINTAS TIMUR BELILAS', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(127, 'SMAN 2 KELAYANG', 'DESA KOTA MEDAN', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(128, 'SMAN 2 PERANAP', 'JL.PENDIDIKAN BATURIJAL HULU', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(129, 'SMAN 2 RENGAT', 'Rengat. Indragiri Hulu', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(130, 'SMK (SMEA) PATRA NUSA', 'Jl. Ukui Camp 11 Lirik', '1402', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(131, 'SMK (STM) MULTI PROGRAM D', 'Jend. Sudirman', '1402', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(132, 'SMK (STM) TEKNOLOGI YPL L', 'Jl. Lintas Timur', '1402', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(133, 'SMK BINA BANGSA MUHAMMADI', 'AIR MOLEK I', '1402', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(134, 'SMK NEGERI 1 LUBUK BATU J', 'JL. NARA SINGA DS. LUBUK BATU JAYA', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(135, 'SMKN 1 BATANG PERANAP', 'PEMATANG', '1402', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(136, 'SMKN 1 KELAYANG', 'Jl. Simpang Mangga', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(137, 'SMKN 1 KUALA CENAKU', 'DESA KUALA CENAKU', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(138, 'SMKN 1 PASIR PENYU', 'Jenderal Sudirman', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(139, 'SMKN 1 PERANAP', 'DESA GUMANTI', '1402', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(140, 'SMKN 1 RENGAT BARAT', 'DESA TALANG JERINJING', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(141, 'SMKN 1 SEBERIDA', 'Jenderal Sudirman', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(142, 'SMKN I RENGAT', 'JL.SULTAN KM.4 RENGAT RIAU', '1402', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(143, 'MA Darul Falah Pematang D', 'Jl. Pesantren Pematang Duku', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(144, 'MA Raudhatul Tholibin Ked', 'Kedabu Rapat', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(145, 'MA S Al-Ikhsan Mandau', 'Jl. Duri', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(146, 'MA S Fahrul Islam Rupat', 'Soebrantas Terkul', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(147, 'MAN BENGKALIS', 'Jl. Pembangunan I - Bengkalis', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(148, 'MAN Bukit Batu', 'Jl. Sudirman Pkl. Jambi', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(149, 'MAN SELAT PANJANG', 'Jl. Banglas Selatpanjang', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(150, 'MAS AL HIDAYAH', 'Jl. Sriwijaya Parit 2', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(151, 'MAS AL JAUHAR', 'Jl. Asrama Tribrata (Mandau)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(152, 'MAS AL KHAIRIYAH', 'Jl. M. Rustam Desa Sungai Cina (Rangsang Barat)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(153, 'MAS AL MUNAWARAH', 'Jl. Utama No. 25 Desa Bagan Melibur (Merbau)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(154, 'MAS AL-ISTIQOMAH', 'Jl. A. Yani Desa Teluk Lecah (Rupat)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(155, 'MAS AL-Ikhwan Duri', 'Jl. Duri', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(156, 'MAS AL-ULUM', 'Jl. Jaya Porna Desa Bantan Tengah (Bantan)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(157, 'MAS AR-RASYIDIYAH', 'Jl. Awang Mahmuda Gg. Pelajar Desa Sei Alam (Bengkalis)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(158, 'MAS AR-RIDHO', 'Jl. Mesjid K. Jawa Kel. Batu Panjang', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(159, 'MAS ASY-SYUHADA', 'Jl. Nusantara I Gg. Jambu Desa Sebangar (Mandau)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(160, 'MAS Al-Hidayah Bantan', 'Jl. Sriwijaya', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(161, 'MAS Al-Huda Penampi', 'Jl. Utama Penampi', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(162, 'MAS Al-Mukaromah Merbau', 'Jl. Merbau', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(163, 'MAS DARUL AIMAN', 'Jl. H. Ibrahim Desa Muntai (Bantan)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(164, 'MAS DARUL IHSAN', 'Jl. Jend. Sudirman Kel. Teluk Belitung (Merbau)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(165, 'MAS DARUL ULUM', 'Jl. Tok Lebai Gg. Karya No.1 Bantan Desa Bantan Tua (Bantan)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(166, 'MAS DARUN NA`IM', 'Jl. Sentosa Desa Sungai Tohor (Tebing Tinggi)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(167, 'MAS DARUSSALAM', 'Jl. Sentosa Desa Pematang Duku (Bengkalis)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(168, 'MAS Darul Aiman Bantan', 'Jl. Bantan', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(169, 'MAS HIDAYATUL MUBTADIIN', 'Jl. Mesjid Desa Semukut (Merbau)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(170, 'MAS HIDAYATUL MUTA\'ALLIM', 'Jl. Pelajar Desa Mengkirau (Merbau)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(171, 'MAS HUBBUL WATHAN', 'Jl. Jenderal Sudirman', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(172, 'MAS Hidayatul Rahmah Merb', 'Centai', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(173, 'MAS MIFTAHUL JANNAH', 'Jl. Sultan Syarif Qasim Desa Selat Baru (Bantan)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(174, 'MAS MIFTAHUL ULUM', 'Jl. Jenderal Sudirman Desa Bantan Air (Bantan)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(175, 'MAS MU\'ALLIMIN', 'Jl. Mesjid Taqwa Kel. selat Panjang Selatan (Tebing Tinggi)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(176, 'MAS Miftahul Huda Pinggir', 'Tasik Serai', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(177, 'MAS Mujahiddin Pinggir', 'Jl. Sukamaju RT. 03 RW 06', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(178, 'MAS NAHDATUL ISLAM', 'Jl. K. H. Maskur Kaban Desa Harapan Baru (Mandau)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(179, 'MAS Nurul Hidayah Bantan', 'Jl. Bantan', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(180, 'MAS RAUDHATUL HIDAYAH', 'Jl. Pelajar Desa Tanjung Samak (Rangsang)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(181, 'MAS RAUDHATUL MUBTADIIN', 'Jl. Masjid Desa Kundur (Tebing Tinggi Barat)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(182, 'MAS RAUDHATUT THULLAB', 'Jl. Parit I Desa Sepotong (Siak Kecil)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(183, 'MAS RAUDLATUT THALIBIN', 'Jl. Mesjid Desa Kundur (Rangsang Barat)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(184, 'MAS SYARIF HIDAYATULLAH', 'Jl. KH. Abdul Mukti No. 1 Desa Topang (Rangsang)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(185, 'MAS YASMI DURI', 'Jl. Jenderal Sudirman No 34 Kel. Duri Barat (Mandau)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(186, 'MAS YPPI BENGKALIS', 'Jl. A. Yani No.063 Bengkalis Kota (Bengkalis)', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(187, 'SMA KRISTEN KALAM KUDUS', 'JL.KARTINI NO.13 SELAT PANJANG', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(188, 'SMA KURNIA JAYA LKMD', 'JL. PELAJAR', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(189, 'SMA S DHARMA BHAKTI MANDA', 'JL. KARET', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(190, 'SMA SWASTA CENDANA MANDAU', 'Jl. Komplek Krakatau Duri Bengkalis Riau', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(191, 'SMALB Cendana', 'Jl. Komp. Talang . P. pudu', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(192, 'SMAN 1 ALAI', 'ALAI DESA MEKAUNG', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(193, 'SMAN 1 BANTAN', 'JL.SUKARNO-HATTA SELAT BARU', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(194, 'SMAN 1 BENGKALIS', 'JL. ARIF RAHMAN HAKIM', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(195, 'SMAN 1 BUKIT BATU', 'JL. AHMAD YANI', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(196, 'SMAN 1 DURI KEC.MANDAU', 'JL.SEBANGA II DURI KOMPLEK PENDIDIKAN', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(197, 'SMAN 1 PINGGIR KEC. PINGG', 'JL. BATIN TARAK NO. 27', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(198, 'SMAN 1 RANGSANG', 'Jl. Pelajar', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(199, 'SMAN 1 RUPAT', 'JL. MASJID KAMPUNG JAWA', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(200, 'SMAN 1 Rangsang Barat', 'Bantar', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(201, 'SMAN 1 SIAK KECIL', 'JL.PEMBANGUNAN', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(202, 'SMAN 1 TANJUNG MEDANG KEC', 'JL. PELAJAR', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(203, 'SMAN 1 TELUK BELITUNG KEC', 'JL. D.I. PANJAITAN', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(204, 'SMAN 1 Tebing Tinggi', 'JL. PEMBANGUNAN II', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(205, 'SMAN 2 BANTAN', 'JL.BUDI LUHUR', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(206, 'SMAN 2 BENGKALIS', 'JL.PRAMUKA BENGKALIS', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(207, 'SMAN 2 DURI', 'JL.JEND.SUDIRMAN SIMP.PADANG DURI', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(208, 'SMAN 2 MERBAU', 'Jl. Husni Tamrin', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(209, 'SMAN 2 Pinggir', 'Jl. Bhatin Muajalelo', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(210, 'SMAN 2 RANGSANG', 'Jl. Syarif Normat', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(211, 'SMAN 2 Rangsang Barat', 'Peranggas', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(212, 'SMAN 2 Rupat', 'Jl. H. Sihi', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(213, 'SMAN 2 SIAK KECIL', 'Jl. Jend. Sudirman Sadar Jaya', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(214, 'SMAN 2 TEBING TINGGI', 'JL. HANDAYANI SELAT PANJANG', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(215, 'SMAN 2 TEMIANG KEC.BUKIT ', 'JL.PELAJAR', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(216, 'SMAN 3 BENGKALIS', 'JL.PATIMURA NO.44 BENGKALIS', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(217, 'SMAN 3 Bukit Batu', 'Simpang Kulim Bukit Krikil', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(218, 'SMAN 3 MAndau', 'Jl. Tuanku Tambusai', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(219, 'SMAN 3 Merbau', 'JL. AMPUAN', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(220, 'SMAN 3 Pinggir', 'Jl. Kesehatan', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(221, 'SMAN 3 SELAT PANJANG', 'JL. PELAJAR NO. 1 DORAK', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(222, 'SMAN 4 BENGKALIS', 'JL.UTAMA SEBAUK', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(223, 'SMAN 4 DURI', 'BATIN BETUAH BULU KASAP', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(224, 'SMAN 4 Pinggir', 'Jl. Gajah Mada Km 31', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(225, 'SMAN 4 SELATPANJANG', 'DESA NIPAH SENDANU', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(226, 'SMAN 5 Bengkalis', 'Jl. Utama Ketam Putih', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(227, 'SMAN 5 DURI KEC.MANDAU', 'JL.SIDEREJO RT IV/RW III', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(228, 'SMAN 6 Mandau', 'Jl. Lintas Duri Dumai', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(229, 'SMAN 7 DURI', 'Duri', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(230, 'SMAS 2 PEMDA PERANGGAS KE', 'JL. H. MUHAMMAD ALI', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(231, 'SMAS 8 HUBBUL WHATTAN KEC', 'JL.JEND.SUDIRMAN', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(232, 'SMAS 9 NUSANTARA KEC.MAND', 'JL.LINTAS DURI DUMAI KM.17', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(233, 'SMAS AL MUSLIMIN DURI', 'Jl. Duri Dumai', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(234, 'SMAS AL-MA\'ARIF NU ALAH A', 'J. Utama Alah Air', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(235, 'SMAS IT MUTIARA KEC. PING', 'KOMPLEK CPI SEBANGA DURI', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(236, 'SMAS KARYA MANDAU', 'JL.PAHLAWAN TAMBUSAI KM. 4 KULIM DURI', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(237, 'SMK (STM) PATRIA DHARMA', 'JLN RUMBIA NO 08', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(238, 'SMK AWANG MAHMUDA', 'Jalan Pramuka', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(239, 'SMK KORPRI DURI', 'HAJI ABDUL MANAN NO.07', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(240, 'SMK MUHAMMIYAH DURI', 'SEJATERA', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(241, 'SMK N 1 Rupat', 'Jl. Taman Siswa', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(242, 'SMKN 1TEBING TINGGI', 'JLN DORAK SLT PANJANG', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(243, 'SMKN 1 BENGKALIS', 'Jl. Simpang Ayam Meskom', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(244, 'SMKN 1 Bukit Batu', 'Jl. Sudirman Pkl. Jambi', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(245, 'SMKN 1 MANDAU', 'JLN PIPA AIR BERSIH', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(246, 'SMKN 1 Merbau', 'Jl. Penipahan Baru', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(247, 'SMKN 1 Meskom Bengkalis', 'Jl. Simpanng Ayam Meskom', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(248, 'SMKN 1 Pertanian Siak Kec', 'Jl. Lintas Pekanbaru', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(249, 'SMKN 1 Pinggir', 'Jl. Bengkalis Indah', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(250, 'SMKN 2 BENGKALIS', 'Jl. Masjid Kelapapati Laut', '1403', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(251, 'SMKS AISYIYAH Duri', 'Jl. Duri', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(252, 'SMKS KASIH MAITREYA', 'JL. TELADAN NO 6A SELATPANJANG', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(253, 'SMKS Yaspin Pinggir', 'Jl. Bhatin Tomat No. 50', '1403', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(254, 'MA HIZBUL WATHAN', 'Desa Keritang', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(255, 'MAN KUALA ENOK', 'Jl. Pendidikan No. 113', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(256, 'MAN MANDAH', 'Jl. Datok Thalib No. 183', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(257, 'MAN TEMBILAHAN', 'Jl. Pelajar No.39', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(258, 'MAS ABBASIYAH', 'Jl. Telaga Musim No. 50', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(259, 'MAS AL HUDA AL ILAHIYAH', 'Jl. Pendidikan Mugomulyo', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(260, 'MAS AL IKHLAS', 'Jl. Jendral Sudirman', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(261, 'MAS DARUL ULUM', 'Jl. Sunan Ampel Rt.5', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(262, 'MAS DARUSSALAM', 'Jl. Raya Lintas Propinsi', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(263, 'MAS DDI BENTENG', 'Jl. Pendidikan No.8', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(264, 'MAS DDI INDRAGIRI', 'Sungai Terab', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(265, 'MAS HIDAYATUL ISLAMIYAH', 'Kuala Lahang', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(266, 'MAS HIDAYATUL MUBTADIIN', 'Jl. H.A Baijuri PRT No. 7', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(267, 'MAS MIFTAHUL HUDA', 'Sebernag Tembilahan', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(268, 'MAS MIFTAHUL HUDA', 'Jl. Parit Surau Darul Huda', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(269, 'MAS NAHDLATUS SHIBYAN', 'Teluk Kiambang', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(270, 'MAS NAILUL AMANI', 'Jl. Bhakti Sosial Rt5 Rw2', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(271, 'MAS NURUL HIDAYAH', 'Jl. Lintas Propinsi Rt X 11', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(272, 'MAS NURUL HUDA', 'Jl. M. Boya No.51 Enok', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(273, 'MAS NURUL HUDA', 'Parit 5 Sungai Luar', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(274, 'MAS NURUL IMAN', 'Jl. Lintas Enok KM 13', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(275, 'MAS NURUL ISLAM', 'Desa Selantaraya', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(276, 'MAS NURUL JAMA`AH', 'Jl. Pinang Ps Pebenaan', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(277, 'MAS NURUL JIHAD', 'Jl. Sapta Marga No. 44', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(278, 'MAS NURUL MUBTADIIN', 'Jl. Pendidikan Km. 01', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(279, 'MAS NURUL WATHAN', 'Pelangiran Besar', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(280, 'MAS NURUL WATHAN', 'Jl. F4 Gg. Pendidikan', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(281, 'MAS NURUL YAQIN', 'Teluk Kabung', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(282, 'MAS NURUL YAQIN', 'Jl. Mangkubumi', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(283, 'MAS PP AL-ISHLAHIYAH', 'Parit Dapat Desa Pancur', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(284, 'MAS PP TUNAS HARAPAN', 'Jl. Pendidikan 14 Hilir', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(285, 'MAS PP. AL RASYID', 'Simpang Tiga sei Luar', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(286, 'MAS PP. INDRAGIRI AL ISLA', 'Tanjung Makmur', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(287, 'MAS SABILAL MUHTADIN', 'Jl. Sabilal Muhtadin', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(288, 'MAS SABILIL HUDA', 'Jl. Penunjang Sanglar', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(289, 'MAS SABILUL HUDA', 'Jl. Pelajar Sungai Empat', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(290, 'MAS TARBIYAH ISLAMIYAH', 'Jl. Pemuda Kota Baru', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(291, 'MAS TARBIYAH ISLAMIYAH', 'Jl. Tunas Harapan Gg. Santri I', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(292, 'MAS TARBIYAH ISLAMIYAH', 'Jl. Persatuan Parit 3', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(293, 'MAS YAYASAN BIN DAHLAN', 'Jl. KH. M. Nasir', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(294, 'MAS YPP ANWAR ULUM', 'Mugomulyo km. 10', '1404', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(295, 'MAS YPP NURUL ISLAM', 'Prt. No. 18 Paseanggrahan', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(296, 'SMA 1 GAUNG ANAK SERKA', 'JL.MERDEKA TIMUR INDRAGIRI HILIR', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(297, 'SMA 2 TEMBILAHAN', 'JL.SAPTA MARGA NO.70', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(298, 'SMA ASHABUL MUKMININ', 'Jln. KH. Dewantara', '1404', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(299, 'SMA ISLAM ALHUSNIYAH', 'Kelapa Gading No. 4', '1404', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(300, 'SMA KARYA PENGALIHAN', 'Jl. Pemuda No. 09 Pengalihan', '1404', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(301, 'SMA MUHAMMADIYAH', 'Jl. Pendidikan No. 03 Tembilahan', '1404', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(302, 'SMA PALAPA', 'Jl. Pendidikan No. 07 Bagan Jaya', '1404', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(303, 'SMA PELITA ENOK', 'KESEHATAN', '1404', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(304, 'SMA PGRI TEMBILAHAN', 'Jl. Pendidikan No. 2', '1404', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(305, 'SMA TRI TUNGGAL', 'RSTM Pulau Burung', '1404', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(306, 'SMA TUAH KEMUNING', 'JL. LINTAS TIMUR', '1404', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(307, 'SMA TUNAS BANGSA', 'Jl. Propinsi No. 1 Pulau Burung', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(308, 'SMA TUNAS BANGSA', 'JL. PROVINSI NO. 1', '1404', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(309, 'SMAN 1 ENOK', 'JLN KESEHATAN', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(310, 'SMAN 1 GAUNG', 'Jl. Riau Kuala Lahang', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(311, 'SMAN 1 GAUNG ANAK SERKA', 'Jl. Merdeka Timur No. 90', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(312, 'SMAN 1 KATEMAN', 'Jl. Pendidikan Sei Guntung', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(313, 'SMAN 1 KERITANG', 'Jl. H. Usman No. 04 Kotabaru', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(314, 'SMAN 1 MANDAH', 'JL. M.SHALEH THALHA', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(315, 'SMAN 1 RETEH', 'Jl. H. Sanusi Pulau Kijang', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(316, 'SMAN 1 TANAH MERAH', 'Jl. Perintis Utama NO. 02', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(317, 'SMAN 1 TEMBILAHAN', 'Jl. Pendidikan Tembilahan', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(318, 'SMAN 1 TEMBILAHAN HULU', 'Jl. Sapta Marga No. 70 Tembilahan Hulu', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(319, 'SMAN 1 TEMPULING', 'Jl. 21 Maret Sungai Salak', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(320, 'SMAN BHAKTI SAPAT', 'Jl. Pertanian Sapat', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(321, 'SMAN DHARMA PENDIDIKAN', 'Jl. Pendidikan No. 03 Kel. Kempas Jaya', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(322, 'SMAN TUAH GEMILANG', 'Jl. Batang Tuaka', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(323, 'SMAN TUAH KEMUNING', 'Jl. Lintas Timur Selensen', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(324, 'SMATRI TUNGGAL PULAU BURU', 'JL. PENDIDIKAN', '1404', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(325, 'SMK 2 TEMBILAHAN', 'JL. SKB TEMBILAHAN', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(326, 'SMKN 1 KEMPAS', 'Jl. Pendidikan Block D Rumbai Jaya', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(327, 'SMKN 1 RETEH', 'JL. Kelurahan Pulau Kijang', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(328, 'SMKN 1 TEMBILAHAN', 'Jl. Baharuddin Yusuf', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(329, 'SMKN 1 TEMBILAHAN HULU', 'Jl. Propinsi Pulau Palas', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(330, 'SMKN I KUANTUM TENGAH', 'JL.BELIBIS SEI JERING RIAU', '1404', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(331, 'MA. Al-Islamiah', 'Jl. Desa Kampung Baru', '1405', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(332, 'MA. Alqosymiah', 'Jl. Sorek Satu', '1405', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(333, 'MA. PPYHM', 'Jl. Lintas Timur pasar Baru', '1405', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(334, 'MAS AL-AN NUAR AL AMANSYA', 'Jl. Besar, Teluk Dalam', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(335, 'MTs AL-HAMIDIYAH', 'DESA PKL. BUNUT', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(336, 'MTs.Darul Falah Langgam', 'Jl.M.Yusuf', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(337, 'SMA 1 KUALA KAMPAR', 'JL. MELUR TELUK DALAM KAMPAR RIAU', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(338, 'SMA 1 LANGGAM', 'Jl. Utama', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(339, 'SMA 1 PANGKALAN KURAS', 'JL. PASIR PUTIH SOREK SATU', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(340, 'SMA Almuslimun Sekijang', 'Jl. Lintas Timur Sekijang', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(341, 'SMA BERNAS', 'Komplek Bakti Praja', '1405', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(342, 'SMA Cadangan', 'Kerinci', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(343, 'SMA PLUS TARUNA ANDALAN', 'Komp. Perumahan II PT RAPP', '1405', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(344, 'SMAN 1 Bandar Petalangan', 'Jl. Datuk Kenali', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(345, 'SMAN 1 Bunut', 'Jl.Pelajar No.1 Pkl.Bunut', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(346, 'SMAN 1 KERUMUTAN', 'JLN EXSPAN', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(347, 'SMAN 1 Langgam Kelas Jauh', 'Langkan', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(348, 'SMAN 1 PANGKALAN KERINCI', 'JLN LINTAS TIMUR', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(349, 'SMAN 1 Pelalawan', 'Jl. Tugu Kemerdekan', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(350, 'SMAN 1 Teluk Meranti', 'Jl. Teluk Meranti', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(351, 'SMAN 1 UKUI', 'JLN LINTAS TIMUR', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(352, 'SMAN 1 pangkalan Lesung', 'Jl. Lintas Genduang', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(353, 'SMAN 2 Pangkalan Kuras', 'Jalan Lintas Timur', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(354, 'SMAN1 Bandar sekijang', 'Jl. Lintas timur Simpang Beringin', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(355, 'SMAN1 PELALAWAN', 'PELALAWAN', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(356, 'SMK MAKMUR', 'Pangkalan Kerinci', '1405', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(357, 'SMK Negeri 1 Pangkalan Ke', 'Jl.Hangtuah SP6', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(358, 'SMKN 1 BUNUT', 'Jl. Lintas Bono', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(359, 'SMKN1 Kuala Kampar', 'Jl. Lintas Pantai Bono', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(360, 'SMUN 2 Pangkalan Kerinci', 'Terusan Baru', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(361, 'SMK Kerumutan', 'Banjar Panjang SP 2', '1405', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(362, 'SMK NEGERI 1 BANDAR SEI K', 'JL. LINTAS TIMUR SEKIJANG', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(363, 'SMK Negeri 1 Pangkalan Le', 'Jl. Lintas Timur Pangkalan Lesung', '1405', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(364, 'SMK PERTANIAN Sialang', 'JLN FLAMBOYAN NO 01', '1405', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(365, 'SMK PP YHM', 'Jl. Lintas Timur pasar Baru', '1405', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(366, 'SMK Putra Mandiri YPPM', 'Kebun Lubuk Raja', '1405', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(367, 'MA ANNA BAWIYAH ROKAN', 'ROKAN', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(368, 'MA JABAL RAHMAH RANTAU KA', 'MAHATO', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(369, 'MA MIFTAHUL ULUM', 'KEPENUHAN JAYA', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(370, 'MA PP RAUDATUSSALAM', 'KM.9 PASIR PENGARAIAN-UJUNGBATU', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(371, 'MA RAMBAH HILIR', 'MUARA RAMBAH HILIR', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(372, 'MA S AL FATA', 'Pasir Agung', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(373, 'MA S AL MAARIF MUBTADIN', 'Desa Muara Intan', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(374, 'MA S DARUL ULUM TANDUN', 'TANDUN', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(375, 'MA S DARUSSALAM', 'KABUN', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(376, 'MA S KEPENUHAN', 'Kota Tengah', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(377, 'MA S PP ASSHOHWAH ISLAMIY', 'Desa Ujung Batu', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(378, 'MA S TMI PP KHOLID BIN WA', 'Jl. Raya Pasir Pengarayan', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(379, 'MAN 1 RAMBAH', 'Jl. Diponogoro No 910 PASIR PENGARAIAN', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(380, 'SMA ANA MUSLIM KUNTO DARU', 'KUNTO DARUSSALAM', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(381, 'SMA ISLAM RAMBAH', 'PASIR PENGARAIAN', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(382, 'SMA ISLAM TAMBUSAI', 'DALU-DALU', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(383, 'SMA LPMD BONAI DARUSSALAM', 'BONAI', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(384, 'SMA N 1 BANGUN PURBA', 'TANGUN', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(385, 'SMA N 1 KABUN', 'JL.KH.AHMAD DAHLAN NO.55', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(386, 'SMA N 1 KEPENUHAN', 'JL. SUDIRMAN KOTA TENGAH', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(387, 'SMA N 1 KEPENUHAN HULU', 'KEPENUHAN HULU', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(388, 'SMA N 1 KUNTO DARUSSALAM', 'JL. SEI.RUMBAI NO 88', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(389, 'SMA N 1 PAGARAN TAPAH', 'PAGARAN TAPAH', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(390, 'SMA N 1 RAMBAH', 'PASIR PENGARAIAN', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(391, 'SMA N 1 RAMBAH HILIR', 'JL. RAYA MUARA RUMBAI', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(392, 'SMA N 1 RAMBAH SAMO', 'OKAK', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(393, 'SMA N 1 ROKAN IV KOTO', 'ROKAN', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(394, 'SMA N 1 TAMBUSAI', 'DALU-DALU', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(395, 'SMA N 1 TAMBUSAI UTARA', 'JL. PELAJAR', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(396, 'SMA N 1 TANDUN', 'TANDUN', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(397, 'SMA N 1 UJUNGBATU', 'JL.JEND.SUDIRMAN', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(398, 'SMA N 2 RAMBAH HILIR', 'JL.RAYA KUMU', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(399, 'SMA N 2 ROKAN IV KOTO', 'LUBUK BENDAHARA TIMUR', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(400, 'SMA N 2 TAMBUSAI UTARA', 'TAMBUSAI UTARA', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(401, 'SMA N 2 UJUNGBATU', 'PEMATANG TEBIH', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(402, 'SMA S AL KHAIRIYAH RAMBAH', 'MURA MUSU', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(403, 'SMA S MUHAMMADIYAH', 'KM. 2 PASIR PENGARAIAN', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(404, 'SMA S MUHAMMADYAH UJUNG B', 'Jl. Durian Sebatang', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(405, 'SMA S PAGARAN TAPAH', 'PAGARAN TAPAH', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(406, 'SMA S SALAFIAH TANDUN', 'TANDUN', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(407, 'SMA S SWADAYA MANDIRI', 'JL.BANDAR SELAMAT.KM.24', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(408, 'SMA S TAMBUSAI TIMUR', 'TAMBUSAI TIMUR', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(409, 'SMA S TIGA PUTRA PERSADA ', 'PT. HUTAHAEAN DALU-DALU', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(410, 'SMA S YPLKMD DAYO', 'DESA DAYO', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(411, 'SMA S YPPM BANGUN JAYA', 'JL.TUANKU TAMBUSAI', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(412, 'SMK YAPIM TAMBUSAI UTARA', 'TAMBUSAI UTARA', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(413, 'SMK PEMDES UJUNG BATU', 'Jl. Jend. Sudirman KM. 04 Ujung Batu', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(414, 'SMK INAYAH UJUNGBATU', 'UJUNG BATU TIMUR', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(415, 'SMK MIFTAHUL ULUM', 'KEPENUHAN', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(416, 'SMK N 1 RAMBAH', 'JALAN KELOMPOK TANI', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(417, 'SMK N 1 TAMBUSAI', 'TALI KUMAIN', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(418, 'SMK N 1 TANDUN', 'KUKUN TANDUN', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(419, 'SMK N 2 RAMBAH', 'KM 6 PASIR PENGARAIAN', '1406', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(420, 'SMK SWADAYA MENAMING RAMB', 'JALAN PAWAN-MENAMING', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(421, 'SMK TEKHNOLOGI TAMBUSAI U', 'BANGUN JAYA', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(422, 'SMK TERPADU ISMAILIYAH', 'MUARA NIKUM', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(423, 'SMK TERPADU UJUNG BATU', 'LINTAM', '1406', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(424, 'MA Al-Adhalah', 'Panipahan. Pasir Limau Kapas', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(425, 'MAS AL- Falah', 'Simpang Kanan', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(426, 'MAS AL- Hikmah Darussalam', 'Bagan Batu', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(427, 'MAS AL- Husna', 'Bagan Sinembah', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(428, 'MAS AL- Majidiyah', 'Bagan Batu', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(429, 'MAS AL- Mujahidin', 'Dusun Bakti', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(430, 'MAS AN Nuur', 'Bagan Batu', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(431, 'MAS Al Husna', 'Jl. Besar Salak', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(432, 'MAS Al Ikhlas', 'Bagan Barat', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(433, 'MAS Al Majidiyah', 'Jl. H. Badiah No 99', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(434, 'MAS Al Muhajirin', 'Sekeladi', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(435, 'MAS Al Mujahidin', 'Dusun Bhakti', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(436, 'MAS Al Usmaniyah', 'Jl. H. Imam Munandar', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(437, 'MAS At Thohiriyah', 'Sri Kayangan', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(438, 'MAS Bustanul Ulum', 'Panca Mukti', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(439, 'MAS Dar Aswaja', 'Sei. Pinang', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(440, 'MAS Darul Arofah', 'Tanjung Medan', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(441, 'MAS Darul Falah', 'Tanjung Medan', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(442, 'MAS Dinul Hasanah', 'Pasir Putih', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(443, 'MAS Ihwatun Hasanah', 'Bangko Sempurna', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(444, 'MAS Ikhlasiyah', 'Bangko Sakti', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(445, 'MAS Irsyadul Islam', 'Bahtera Makmur', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(446, 'MAS Islahiyah', 'Panipahan', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(447, 'MAS Islamiyah', 'Rokan Baru', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(448, 'MAS Mualimin', 'Rantau Panjang Kiri', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(449, 'MAS Muhsinin', 'Rimba Melintang', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(450, 'MAS Nurul Hasanah', 'Sungai Besar', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(451, 'MAS Raodatul Jannah', 'Bagan Barat', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(452, 'MAS Tarbiyah Islamiyah', 'Panipahan', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(453, 'MAS Usmaniyah', 'Bagan Batu', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(454, 'MAS Yahusda', 'Lenggadai Hulu', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(455, 'SMA S HUBBUL WATHAN', '', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(456, 'SMA S Nur Hasanah Dusun B', 'Jl. Lintas Tanjung Medan Dusun Bakti Pasar II', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(457, 'SMAN 1 Bagan Sinembah', 'Bagan Batu', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(458, 'SMAN 1 Bangko', 'JL. GEDUNG NASIONAL', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(459, 'SMAN 1 Bangko Pusako', 'Bangko Kiri', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(460, 'SMAN 1 Batu Hampar', 'Bantaian', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(461, 'SMAN 1 Kubu', 'Teluk Merbau', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(462, 'SMAN 1 Pasir Limau Kapas', 'Panipahan', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(463, 'SMAN 1 Pujud', 'P u j u d', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(464, 'SMAN 1 Rimba Melintang', 'Rimba Melintang', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(465, 'SMAN 1 Simpang Kanan', 'Simpang Kanan', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(466, 'SMAN 1 Sinaboi', 'Raja Bejamu', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(467, 'SMAN 1 TP. TJ. Melawan', 'Melayu Besar', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(468, 'SMAN 1 Tanah Putih', 'Sedinginan', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(469, 'SMAN 2 Bagan Sinembah', 'Bagan Batu', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(470, 'SMAN 2 Bangko', 'JL. SMA Bagan Hulu', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(471, 'SMAN 2 Bangko Pusako', 'Bangko Kanan', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(472, 'SMAN 2 Kubu', 'Teluk Nilap', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(473, 'SMAN 2 Pujud', 'Siarang-Arang', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(474, 'SMAN 2 Tanah Putih', 'Ujung Tanjung', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(475, 'SMAN 3 Bangko', 'Lb. Tangga Kecil', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(476, 'SMAN 3 Bangko pusako', 'Bangko Jaya', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(477, 'SMAN 3 Tanah Putih', 'Sintong', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(478, 'SMAS Cikditiro', 'P. Halang Muka', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(479, 'SMAS Methodist', 'P. Halang Muka', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(480, 'SMAS Methodist', 'Teluk Pulai', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(481, 'SMAS Bina Siswa', 'Balam Sempurna', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(482, 'SMAS Bintang Laut', 'Bagan Jawa', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(483, 'SMAS Darul Ulum', 'Tanah Putih', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(484, 'SMAS Datuk Paduka', 'Simpang Kanan', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(485, 'SMAS Dharma Pertiwi', 'Bangko Sempurna', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(486, 'SMAS Harapan', 'Bangko Jaya', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(487, 'SMAS Harapan', 'Tanjung Medan', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(488, 'SMAS Jarama', 'Bagan Jawa', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(489, 'SMAS Kartini Panipahan', 'Panipahan', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(490, 'SMAS LKMD Sei Rangau', 'Rantau Kopar', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(491, 'SMAS Lelo-Ajuo', 'Tanjung Medan', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(492, 'SMAS Methodist', 'Balam Sempurna', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(493, 'SMAS Methodist', 'Bagan Barat', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(494, 'SMAS Muhammadiyah', 'Bangko', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(495, 'SMAS Pembangunan', 'Bagan Batu', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(496, 'SMAS Perguruan Wahidin', 'Jl. Pahlawan Bengkalis Riau', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(497, 'SMAS Rokan', 'Teluk Pulau Hulu', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(498, 'SMAS Rokan Sejahtera', 'Sekeladi', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(499, 'SMAS Tunas Bangsa', 'Balai Jaya', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(500, 'SMAS YPDP Sim. Kanan', 'Simpang Kanan', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(501, 'SMKS Dua Desa', 'JL. Panipahan', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(502, 'SMKS Teknologi Balam', 'Bagan Batu', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(503, 'SMK MARITIM', 'RAJA ALI HAJI', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(504, 'SMK Muhammadiyah', 'Tanjung Medan', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(505, 'SMK WIDYA KARYA', 'JL. Lintas Sei Dua Km. 37', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(506, 'SMKN 1 Bangko', 'Bagan Barat', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(507, 'SMKN I Tanah Putih', 'Sedinginan', '1407', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(508, 'SMKS ATMAR Rantau Bais', 'Rantau Bais', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(509, 'SMKS Cendana', 'Bangko Sempurna', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(510, 'SMKS Karya Agung', 'Bagan Batu', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(511, 'SMKS Terpadu Abdi Negara', 'Bangko Jaya', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(512, 'SMKS H. Ujang Kalijah', 'Bagan hulu', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(513, 'SMKS Hibban Halim', 'Sekeladi', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(514, 'SMKS Muhajirin', 'Sekeladi', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(515, 'SMKS Nusantara', 'Bangko Sempurna', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(516, 'SMKS Pembangunan', 'Bagan Batu', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(517, 'SMKS Rokan', 'Bagan Punak', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(518, 'SMKS SPP- SPMA Pertanian', 'T. Pulau Hilir', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(519, 'SMKS Tri Erlangga', 'Kencana', '1407', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(520, 'MA AL-FALAH', 'Pencing Lestari Desa Belutu Garut', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(521, 'MA AL-IKHLAS', 'Jl. Suka Damai Dusun Libo Jaya Desa Sam-Sam', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(522, 'MA DARUL MUKMININ', 'Buatan II', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(523, 'MA HIDAYATUL MUBTADIIN', 'Jl. Jaya Mukti No. 9 Bandar Sungai', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(524, 'MA JABAL NUR', 'Jl. Sultan Syarif Kasim Kel. simpang Belutu', '1408', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(525, 'MA MUHAMMADIYAH', 'Jl. Jend. Sudirman', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(526, 'MA NURUL HIDAYAH', 'Jl. Jend. Sudirman', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(527, 'MA NURUL IKHSAN', 'Karya Utama', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(528, 'MA NURUL YAKIN', 'Jl. Raya Siak-Perawang KM 71', '1408', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(529, 'MA PERSIAPAN NEGERI', 'Jl. DR. Sutomo Kampung Dalam', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(530, 'MA PP AMTI REMPAK', 'Jl. Pasar Lama Rempak', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(531, 'MAS ALMUTAQIEN', 'Jatibaru', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(532, 'MAS BUSTANUL ULUM', 'Ds. sialang Sakti', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(533, 'MAS DARUL HIKMAH', 'Jl. Sultan Syarif Hasyim', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(534, 'MAS DARUS SHOFA', 'Kandis', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(535, 'MAS HIDAYATULLAH', 'Jalur 2 Sialang baru', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(536, 'MAS HIDAYATUNNAJAH', 'Jl. Balam No. 18', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(537, 'MAS ITTIHADUL MUSLIMIN', 'Pangkal Pisang', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(538, 'MAS I`AANATUTH THALIBIIN', 'Km. 08 Perawang', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(539, 'SMA ISLAM DARUL HIKMAH', 'Jl. Sultan Syarif Hasyim', '1408', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(540, 'SMA LKMD KANDIS', 'Jl. Hangtuah Simpang Libo Lama Sam-Sam', '1408', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(541, 'SMA PERSIAPAN NEGERI SIAK', 'Suak Lanjut-Siak Sri Indrapura', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(542, 'SMAN 1 BUNGARAYA', 'Jl. Sultan Syarif Qasim', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(543, 'SMAN 1 DAYUN', 'Jl. KH. A. Dahlan Sialang Sakti', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(544, 'SMAN 1 KANDIS', 'Jl. Cut Nyak Dien Sam-Sam', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(545, 'SMAN 1 KERINCI KANAN', 'Jl. Pertamina Kerinci Kanan', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(546, 'SMAN 1 KOTO GASIB', 'Jl. Raya KM. 1 Buatan II', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(547, 'SMAN 1 LUBUK DALAM', 'AFD II', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(548, 'SMAN 1 MEMPURA', 'Jl. Setia Benteng Hilir', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(549, 'SMAN 1 MINAS', 'Jl. Suman. HS Minas Jaya', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(550, 'SMAN 1 SABAK AUH', 'Jl. BOB Desa Belading', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(551, 'SMAN 1 SIAK', 'Jl. Hangtuah Kampung Rempak', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(552, 'SMAN 1 SUNGAI APIT', 'Jl. Gajah Mada', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(553, 'SMAN 1 TUALANG', 'Jl. SMA KM. 7 Perawang', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(554, 'SMAN 2 DAYUN', 'Jl. Datuk Lima Puluh', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(555, 'SMAN 2 KERINCI KANAN', 'JL. Lintas timur KM. 58 Bukit Agung', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(556, 'SMAN 2 SUNGAI APIT', 'DESA LALANG', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(557, 'SMAN 2 TUALANG', 'Jl. Kayu Batu Tualang', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(558, 'SMAN 3 TUALANG', 'Jl. AMD Pinang Sebatang Timur', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(559, 'SMAN I SUNGAI MANDAU', 'Sungai Selodang', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(560, 'SMK MUTIARA', 'Jl. Yos Sudarso Minas', '1408', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(561, 'SMK YAMATU', 'JL. RAUDHAH KM.01', '1408', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(562, 'SMKN 1 BUNGARAYA', 'Jl. Sultan Syarif Qasim Bungaraya', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(563, 'SMKN 1 LUBUK DALAM', 'Sialang Baru', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(564, 'SMKN 1 MEMPURA', 'Jl. Pelajar Benteng Hulu', '1408', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(565, 'SMKN 1 SUNGAI APIT', 'Jl. Imam Salam-Sungai Kayu Ara', '1408', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(566, 'SMKS BAITURRAHMAN KANDIS', 'Jl. Datuk Setia Amanah', '1408', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(567, 'SMKS PAYUNG NEGERI', 'Jl. Raya KM. 6 Perawang', '1408', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(568, 'SMKS SULTAN SYARIF KASIM ', 'Jl. Hangtuah', '1408', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(569, 'MA YPKM Lubuk Jambi', 'Koto Lubuk Jambi', '1409', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(570, 'MAN 1 Teluk Kuantan', 'Desa Beringin', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(571, 'MAS Al Hidayah', 'Desa Suka Maju', '1409', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(572, 'MAS Babussalam Benai', 'Simandolak', '1409', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(573, 'MAS Darussalam Pangean', 'Jl. Dt Giando Rajo Pangean', '1409', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(574, 'MAS Gerbang Sari', 'Baserah', '1409', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(575, 'MAS PP Nurul Islam', 'Kampung Baru Toar', '1409', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(576, 'MAS Singingi', 'Singingi', '1409', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(577, 'MAS Syafaaturrasul', 'Batu Ampar Beringin', '1409', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(578, 'SMA Pintar Teluk Kuantan', 'Teluk Kuantan', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(579, 'SMA YPKK Kopah', 'Kopah', '1409', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(580, 'SMAN 1 Benai', 'Benai', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(581, 'SMAN 1 Cerenti', 'Cerenti', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(582, 'SMAN 1 Gunung Toar', 'Jl.Jend.Sudirman Km.3', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(583, 'SMAN 1 Hulu Kuantan', 'Lubuk Ambacang', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(584, 'SMAN 1 Inuman', 'Inuman', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(585, 'SMAN 1 Kuantan Hilir', 'Baserah', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(586, 'SMAN 1 Kuantan Mudik', 'Lubuk Jambi', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(587, 'SMAN 1 Pangean', 'Pangean', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(588, 'SMAN 1 Singingi', 'Singingi', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(589, 'SMAN 1 Singingi Hilir', 'Singingi Hilir', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(590, 'SMAN 1 Teluk Kuantan', 'Simp. Tiga Teluk Kuantan', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(591, 'SMAN 2 Benai', 'Marsawa', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(592, 'SMAN 2 Kuantan Hilir', 'Baserah', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(593, 'SMAN 2 Singingi', 'Singingi', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(594, 'SMAN 2 Teluk Kuantan', 'Sentajo', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(595, 'SMK Kecil Logas Tanah Dar', 'Perhentian Luas', '1409', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(596, 'SMK Terpadu TBS', 'T B S', '1409', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(597, 'SMK YPKM Lubuk Jambi', 'Pasar Lubuk Jambi', '1409', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(598, 'SMKN 1 Benai', 'Jl. Juhum Ismail 2 Pasar Benai', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(599, 'SMKN 1 Logas Tanah Darat', 'Logas Tanah Darat', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(600, 'SMKN 1 Singingi Hilir', 'Singingi Hilir', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(601, 'SMKN 1 Teluk Kuantan', 'Teluk Kuantan', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(602, 'SMKN 2 Teluk Kuantan', 'Teluk Kuantan', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(603, 'SMKN 3 Teluk Kuantan', 'Sinambek', '1409', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(604, 'SMKS Muhammadiyah Cerenti', 'Cerenti', '1409', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(605, 'MAN 1 PEKANBARU', 'Jl. Bandeng No. 51 A', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(606, 'MAN 2 PEKANBARU', 'Jl. Diponogoro No.55', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(607, 'MAS AL IKHWAN', 'Jl. Pesantren Kulim Atas', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(608, 'MAS AL KAUTSAR', 'Jl. Hang Tuah Ujung Km 6.5', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(609, 'MAS DARUL HIKMAH', 'Jl. Manyar Sakti', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(610, 'MAS DINIYAH PUTERI', 'Jl. KH. Ahmad Dahlan No.100', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(611, 'MAS HASANAH', 'Jl. Cempedak No.37', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(612, 'MAS MASMUR', 'Jl. K.H Ahmad Dahlan No 96', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(613, 'MAS MIFTAHUL HIDAYAH', 'Jl. Handayani No. 25', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(614, 'MAS MUHAMMADIYAH', 'Jl. KH. Ahmad Dahlan No.90', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(615, 'MAS MUNAWWARAH PEKANBARU', 'Jl. Pesantren No.42', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(616, 'MAS PP.ULUL ALBAB', 'Jl.Amanah Palas Kiri', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(617, 'MAS UMMATAN WASATHAN', '', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(618, 'SMA AL AZHAR SYIFA BUDHI', 'Jl. Katamso', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(619, 'SMA AL HUDA PEKAN BARU', 'PEKAN BARU - BANGKINANG', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(620, 'SMA AN NAAS', 'ARENGKA GANG DAMAI', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(621, 'SMA ANNUR PEKANBARU', 'Jl.Sisinga Mangaraja', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(622, 'SMA AS SHOFA', 'JL. TUANKU TAMBUSAI UJUNG', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(623, 'SMA BABUSSALAM PEKANBARU', 'Jl.H.R.Soebrantas KM.9', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(624, 'SMA BUDHI LUHUR', 'Jl.Pramuka Rumbai Pekan Baru Riau', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(625, 'SMA CENDANA PEKANBARU', 'Jl.Komplek Palem', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(626, 'SMA DATUK BATU HAMPAR', 'Jl.Hangtuah Gg.Soponyono No.1', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(627, 'SMA DHARMA LOKA', 'Jl. Soekarno Hatta', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(628, 'SMA DHARMA YUDA', 'JL. SOEKARNO HATTA NO. 18', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(629, 'SMA DJUWITA', 'JL. SOEKARNO HATTA', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(630, 'SMA HANDAYANI PEKANBARU', 'Jl.Kapten Fadilah No.1', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(631, 'SMA INSAN TERPUJI', 'Jl. Indrapuri No. 17', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(632, 'SMA KRISTEN KALAM KUDUS', 'LOKOMOTIF 118', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(633, 'SMA KUSUMA', 'Jl. Bukit Barisan', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(634, 'SMA LANCANG KUNING DUMAI', 'GUNUNG MERAPI BUMI AYU', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(635, 'SMA MUHAMMADIYAH P.BARU', 'JL. K.H. A.DAHLAN NO.90-RIAU', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(636, 'SMA NURUL FALAH', 'JL.MASJID RAYA PEKANBARU-RIAU', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(637, 'SMA PGRI PEKANBARU', 'Jl.Brigjend.Katamso No.44 Tangkerang', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(638, 'SMA PLUS BINA BANGSA', '', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(639, 'SMA SANTA MARIA PEKANBARU', 'Jl.Ronggowarsito', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(640, 'SMA SERIRAMA YLPI PEKANBA', 'Jl.Teratai No.29', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(641, 'SMA SETIA DHARMA PEKANBAR', 'Jl.Prof.M.Yamin.SH No.67', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(642, 'SMA TARUNA PEKANBARU', 'Jl.Melur Gg.Lili No.40', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(643, 'SMA TRI BHAKTI PEKANBARU', 'Jl.Tuanku Tambusai No.12', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(644, 'SMA WIDYA GRAHA YKWI', 'Jl.Banda Aceh / Sakuntala Ujung Gg.Nangka', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(645, 'SMA WITAMA NASIONAL PLUS', 'JL. TANJUNG DATUK NO.339', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(646, 'SMA YLPI P. MARPOYAN', 'Jl.Kaharuddin Nasution Km. 11', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(647, 'SMAN 1 PEKANBARU', 'Jl. Sultan Syarif Qasim No.159 Pekanbaru', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(648, 'SMAN 10 PEKANBARU', 'Jl. Bukit Barisan', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(649, 'SMAN 11 PEKANBARU', 'Jl.Segar No.40', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(650, 'SMAN 12 PEKANBARU', 'Jl.Garuda Sakti KM.3', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(651, 'SMAN 13 PEKANBARU', 'JL. MUARA FAJAR', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(652, 'SMAN 14 PEKANBARU', 'JL. TENGKU BEY', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(653, 'SMAN 2 PEKANBARU', 'Jl.Nusa Indah No.4', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(654, 'SMAN 3 PEKANBARU', 'Jl. Yos Sudarso No.100 A Rumbai', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(655, 'SMAN 4 PEKANBARU', 'Jl. Adi Sucipto 67', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(656, 'SMAN 5 PEKANBARU', 'Jl. Bawal No.43', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(657, 'SMAN 6 PEKANBARU', 'JL. BAMBUKUNING NO. 28', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(658, 'SMAN 7 PEKANBARU', 'Jl.Kapur Gg.Kapur III No.7', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(659, 'SMAN 8 PEKANBARU', 'Jl. Abdul Muis No.14', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(660, 'SMAN 9 PEKANBARU', 'Jl. Semeru No.12', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(661, 'SMAN PLUS RIAU', '', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(662, 'SMK INSAN TERPUJI', 'Jl,. Indrapuri No.17', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(663, 'SMK NEGERI 6', 'JL. SEROJA PEMBATUAN', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(664, 'SMK NEGERI 7', 'Jl. Yos Sudarso', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(665, 'SMK PERTANIAN TERPADU', 'JL. KAHARUDIN NASUTION KM 10', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(666, 'SMK 1 PEKANBARU', 'JL.SEMERU 16 PEKANBARU', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(667, 'SMK 3 PEKAN BARU', 'Jln. Dr.Sutomo Pekanbaru No.110', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(668, 'SMK AL KHALIS', '', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(669, 'SMK ANALIS KESEHARAN ABDU', '', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(670, 'SMK BINA TEKAMPIL', 'JL.HANGTUAH UJUNG KULIM', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(671, 'SMK DAR EL HIKMAH', 'Jl.Manyar Sakti', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(672, 'SMK DHARMA LOKA', 'JL. ARENGKA GG. PERMATA I/99', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(673, 'SMK DWI SEJAHTERA', 'Jl.Dirgantara No.4 Arengka', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(674, 'SMK DWI SEJAHTERA RIAU', 'JL. DIRGANTARA NO. 4 ARENGKA', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(675, 'SMK EKATAMA', 'JL. PAUS NO. 89', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(676, 'SMK EKATAMA', 'Jl.Surabaya No.96/56', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(677, 'SMK FARMASI IKASARI', '', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(678, 'SMK HASANAH PEKANBARU', 'Jl.Cempedak No.37', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(679, 'SMK IBNU TAIMIYAH', 'Jl.Angkatan 66 No.63', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(680, 'SMK KANSAI PEKANBARU', 'Jl.Damai Ujung No.120', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(681, 'SMK LABOR BINAAN FKIP UNR', 'JL. THAMRIN NO. 97', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(682, 'SMK MUHAMMADIYAH I', 'Jl.Senapelan', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(683, 'SMK MUHAMMADIYAH II', 'Jl.K.H.Ahmad Dahlan No.90', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(684, 'SMK MULTI MEKANIK MASMUR', 'Jl.K.H.Ahmad Dahlan No.96', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(685, 'SMK NURUL FALAH PEKANBARU', 'MESJID RAYA', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(686, 'SMK PELAYARAN', 'Jl.Kamboja', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(687, 'SMK PERBANKAN RIAU', '', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(688, 'SMK PGRI PEKANBARU', 'JL. PANDAN NO. 46', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(689, 'SMK SAINTIKA', 'JL. HANGTUAH UJUNG', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(690, 'SMK SMK HASANAH PEKANBARU', 'CEMPEDAK', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(691, 'SMK TARUNA', 'MELUR GG LILI II NO.40', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(692, 'SMK TARUNA SATRIA', 'Jl.Delima No.8', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(693, 'SMK TEKNOLOGI PELAYARAN R', '', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(694, 'SMK TEKNOLOGI RIAU', 'Jl.Kayu Putih No.05', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(695, 'SMK TELKOM', '', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(696, 'SMK TIGAMA PEKANBARU', 'Jl.Soekarno Hatta', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(697, 'SMK TUNAS KARYA PEKANBARU', 'JL. KETITIRAN NO. 24', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(698, 'SMK TUNASBAKTI PEKANBARU', 'Dr.SUTOMO', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(699, 'SMK YKWI', '', '1471', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(700, 'SMKN 2', 'JL.PATTIMURA NO.14 PEKANBARU RIAU', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(701, 'SMKN 4 PEKANBARU', 'JL.PURWODADI-PANAM PEKAN BARU RIAU', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(702, 'SMKN 5 PEKANBARU', 'Jl.D.I.Panjaitan', '1471', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(703, 'MA YAZBY', 'Jl.Pawang', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(704, 'MAN DUMAI', 'Jl. Bukit Datuk Lama', '1472', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(705, 'MAS AL HUDA', 'Jl. Hayam Wuruk No.3', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(706, 'MAS AL PURQON', 'Jl. Infres Bagan Besar', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(707, 'MAS ARROZAK', 'Mekar Sari KM. 11', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(708, 'MAS BAITURRAHMAN', 'Jl. Inpres Dua Bagan Besar', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(709, 'MAS MADINATUL ILMI', 'Jl. Landaeng Taugi Gg. YAPMI', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(710, 'MAS NURUL ISLAM', 'Jl. Lubuk Gaung', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(711, 'SMA BUDI DARMA DUMAI', 'JL.BINTAN', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(712, 'SMA I DUMAI', 'JL. PINANGKAMPAI DUMAI RIAU', '1472', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(713, 'SMA LANCANG KUNING DUMAI', 'GUNUNG MERAPI BUMI AYU', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(714, 'SMA MUHAMMADIYAH DUMAI', 'Jl.JANUR KUNING DUMAI RIAU', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(715, 'SMA NEGERI 5 DUMAI', 'JL.DUMAI PAKNING', '1472', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(716, 'SMA PGRI DUMAI', 'JL.KUSUMA', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(717, 'SMA SANTO TARCISIUS', 'PULAU PAYUNG', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(718, 'SMA YPP 7 DUMAI', 'KOMPLEK PERTAMINA BUKIT DATUK', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(719, 'SMALBN', 'JL.TANJUNG JATI', '1472', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(720, 'SMAN 2 DUMAI', 'JL. PUTERI TUJUH DUMAI', '1472', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(721, 'SMAN 3', 'TANGKI JEPANG', '1472', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(722, 'SMAN BINAAN KHUSUS', 'JL.INPRES', '1472', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(723, 'SMAN4 DUMAI', 'JL.PESANTREN', '1472', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(724, 'SMK ALMUNAWARAH', 'JL.PESANTREN', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(725, 'SMK ERNA DUMAI', 'SUKAJADI GANG SALAK', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(726, 'SMK HANG TUAH DUMAI', 'JL.MELATI', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(727, 'SMK TARUNA PERSADA DUMAI', 'JL.POMROY BUKIT TIMAH', '1472', 'Swasta', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(728, 'SMKN 2 DUMAI', 'JL.BUKIT DATUK LAMA DUMAI RIAU', '1472', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(729, 'SMKN1 DUMAI', 'JL.BATU BINTANG', '1472', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(730, 'SMKN3 DUMAI', 'JL.KEBUN KARET', '1472', 'Negeri', '');
INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `kota_sekolah`, `jenis_sekolah`, `telp`) VALUES
	(731, 'SMKN4 DUMAI', 'JL.PESANTREN', '1472', 'Negeri', '');
/*!40000 ALTER TABLE `tbl_sekolah` ENABLE KEYS */;


-- Dumping structure for table mule7148_treemap.tbl_subjalur
CREATE TABLE IF NOT EXISTS `tbl_subjalur` (
  `id_subjalur` int(11) NOT NULL AUTO_INCREMENT,
  `jalur` varchar(25) NOT NULL,
  `subjalur` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_subjalur`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table mule7148_treemap.tbl_subjalur: ~5 rows (approximately)
/*!40000 ALTER TABLE `tbl_subjalur` DISABLE KEYS */;
INSERT INTO `tbl_subjalur` (`id_subjalur`, `jalur`, `subjalur`, `keterangan`) VALUES
	(1, 'Reguler', 'Mandiri', 'Mandiri');
INSERT INTO `tbl_subjalur` (`id_subjalur`, `jalur`, `subjalur`, `keterangan`) VALUES
	(2, 'Reguler', 'PSUD', 'Penjaringan Siswa Unggul Daerah ');
INSERT INTO `tbl_subjalur` (`id_subjalur`, `jalur`, `subjalur`, `keterangan`) VALUES
	(3, 'Reguler', 'PI', 'Pindahan Internal');
INSERT INTO `tbl_subjalur` (`id_subjalur`, `jalur`, `subjalur`, `keterangan`) VALUES
	(4, 'Reguler', 'PE', 'Pindahan Eksternal');
INSERT INTO `tbl_subjalur` (`id_subjalur`, `jalur`, `subjalur`, `keterangan`) VALUES
	(5, 'Reguler', 'CBT', 'Computer Based Test');
/*!40000 ALTER TABLE `tbl_subjalur` ENABLE KEYS */;


-- Dumping structure for table mule7148_treemap.tbl_user
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `level_user` varchar(50) DEFAULT NULL,
  `nama_user` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `foto_user` varchar(50) DEFAULT 'default/user.png',
  `nomorinduk_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table mule7148_treemap.tbl_user: ~2 rows (approximately)
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` (`id_user`, `level_user`, `nama_user`, `user_name`, `user_password`, `foto_user`, `nomorinduk_user`) VALUES
	(1, 'admin', 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1585756262d158e1ec8b300512e7538810c7bdc6da.jpg', '123');
INSERT INTO `tbl_user` (`id_user`, `level_user`, `nama_user`, `user_name`, `user_password`, `foto_user`, `nomorinduk_user`) VALUES
	(2, 'mahasiswa', 'Jabbar', 'mahasiswa', '5787be38ee03a9ae5360f54d9026465f', '1585759849d158e1ec8b300512e7538810c7bdc6da.jpg', '12222');
INSERT INTO `tbl_user` (`id_user`, `level_user`, `nama_user`, `user_name`, `user_password`, `foto_user`, `nomorinduk_user`) VALUES
	(3, 'pimpinan', 'Abdul', 'pimpinan', '90973652b88fe07d05a4304f0a945de8', '1585762614d158e1ec8b300512e7538810c7bdc6da.jpg', '125');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
