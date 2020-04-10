<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include APPPATH . 'third_party/ssp.php';
class Data extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('m_general');
	}
	
	public function prodi()
    {
		$tbl_prodi = $this->db->query("select * from tbl_prodi order by jenjang ASC, nama_fakultas ASC, nama_prodi ASC")->result_array();
		echo json_encode($tbl_prodi);
    }
	
	public function subjalur()
    {
		$tbl_subjalur = $this->db->query("select * from tbl_subjalur order by id_subjalur ASC")->result_array();
		echo json_encode($tbl_subjalur);
    }
	
	public function program()
    {
		$jenis = $_POST['jenis'];
		$tbl_prodi = $this->m_general->view_where("tbl_prodi", array("jenis" => $jenis), "nama_prodi ASC");
		foreach($tbl_prodi as $prodi){
			echo "<option value='$prodi->id_prodi'>$prodi->nama_prodi</option>";
		}
    }
	
	public function program2()
    {
		$jenis = $_POST['jenis'];
		$tbl_prodi = $this->m_general->view_where("tbl_prodi", array("jenis" => $jenis), "nama_prodi DESC");
		foreach($tbl_prodi as $prodi){
			echo "<option value='$prodi->id_prodi'>$prodi->nama_prodi</option>";
		}
    }
	
	public function program_all()
    {
		$tbl_prodi = $this->db->query("select * from tbl_prodi order by nama_prodi ASC")->result_array();
		echo json_encode($tbl_prodi);
    }
	
	public function program_pilihan($id_prodi1, $id_prodi2)
    {
		$tbl_prodi = $this->db->query("select * from tbl_prodi where id_prodi IN ('$id_prodi1','$id_prodi2')")->result_array();
		echo json_encode($tbl_prodi);
    }
	
	public function provinsi()
    {
		$tbl_provinsi = $this->db->query("select id_prov, UPPER(nama) as nama from tbl_provinsi order by nama ASC")->result_array();
		echo json_encode($tbl_provinsi);
    }
	
	public function kabupaten()
    {
		$id_prov = $_POST['id_prov'];
		$tbl_kabupaten = $this->m_general->view_where("tbl_kabupaten", array("id_prov" => $id_prov), "nama ASC");
		foreach($tbl_kabupaten as $kabupaten){
			echo "<option value='$kabupaten->id_kab'>$kabupaten->nama</option>";
		}
    }
	
	public function kabupaten_all()
    {
		$tbl_kabupaten = $this->db->query("select * from tbl_kabupaten order by nama ASC")->result_array();
		echo json_encode($tbl_kabupaten);
    }
	
	public function sekolah()
    {
		$kota_sekolah = $_POST['id_kab'];
		$tbl_sekolah = $this->m_general->view_where("tbl_sekolah", array("kota_sekolah" => $kota_sekolah), "nama_sekolah ASC");
		foreach($tbl_sekolah as $tbl_sekolah){
			echo "<option value='$tbl_sekolah->id_sekolah'>$tbl_sekolah->nama_sekolah</option>";
		}
    }
	
	public function sekolah_all()
    {
		$tbl_sekolah = $this->db->query("select * from tbl_sekolah order by nama_sekolah ASC")->result_array();
		echo json_encode($tbl_sekolah);
    }
	
	public function pendaftar_all()
    {
		$tbl_pendaftar = $this->db->query("select * from tbl_pendaftar order by no_pendaftar ASC")->result_array();
		echo json_encode($tbl_pendaftar);
    }
	
	public function pendaftar_lulus()
    {
		$tbl_pendaftar = $this->db->query("select * from tbl_pendaftar where status_kelulusan='1' order by no_pendaftar ASC")->result_array();
		echo json_encode($tbl_pendaftar);
    }	
	
	public function mahasiswa()
    {
		$tbl_mahasiswa = $this->db->query("select * from tbl_mahasiswa a left join tbl_pendaftar b on a.no_pendaftar=b.no_pendaftar order by a.no_mahasiswa ASC")->result_array();
		echo json_encode($tbl_mahasiswa);
    }
	
	public function nama_mahasiswa()
    {
		$no_mahasiswa = $_POST['no_mahasiswa'];
		$tbl_mahasiswa = $this->db->query("select nama_lengkap from tbl_mahasiswa a left join tbl_pendaftar b on a.no_pendaftar=b.no_pendaftar where a.no_mahasiswa='$no_mahasiswa'")->row();
		echo $tbl_mahasiswa->nama_lengkap;
    }
	
	///////////////////////////////////
	///////////////////////////////////
	
	public function grafik_tahun($tahun="")
    {
		$tbl_pendaftar = $this->db->query("select LEFT(a.waktu_mendaftar,4) as 'Tahun', count(a.no_pendaftar) as 'Jumlah'
from tbl_pendaftar a where a.waktu_mendaftar BETWEEN date(concat(Year(DATE_SUB(curdate(), INTERVAL 11 YEAR)), '-01-01')) AND date(concat(Year(CURDATE()), '-12-31'))
group by LEFT(a.waktu_mendaftar,4)")->result_array();
		echo json_encode($tbl_pendaftar, JSON_NUMERIC_CHECK);
    }
	
	public function grafik_subjalur($tahun="")
    {
		$tbl_pendaftar = $this->db->query("select count(a.no_pendaftar) as 'Jumlah', b.keterangan as 'Jalur'
from tbl_pendaftar a
left join tbl_subjalur b on a.subjalur=b.id_subjalur
where LEFT(a.waktu_mendaftar,4)='$tahun'
group by a.subjalur
")->result_array();
		echo json_encode($tbl_pendaftar, JSON_NUMERIC_CHECK);
    }
	
	public function grafik_prodi1($tahun="", $jalure="")
    {
		$jalur = str_replace("%20"," ",$jalure);
		$tbl_pendaftar = $this->db->query("select count(a.no_pendaftar) as 'Jumlah', c.nama_prodi as 'Prodi'
from tbl_pendaftar a
left join tbl_subjalur b on a.subjalur=b.id_subjalur
left join tbl_prodi c on a.prodi_pilihan1=c.id_prodi
where LEFT(a.waktu_mendaftar,4)='$tahun' and b.keterangan='$jalur'
group by c.nama_prodi
")->result_array();
		echo json_encode($tbl_pendaftar, JSON_NUMERIC_CHECK);
    }
	
	public function grafik_sekolah1($tahun="", $jalure="", $prodie="")
    {
		$jalur = str_replace("%20"," ",$jalure);
		$prodi = str_replace("%20"," ",$prodie);
		
		$tbl_pendaftar = $this->db->query("select count(a.no_pendaftar) as 'Jumlah', CONCAT(d.nama_sekolah,' ',d.kota_sekolah) as 'Sekolah'
from tbl_pendaftar a
left join tbl_subjalur b on a.subjalur=b.id_subjalur
left join tbl_prodi c on a.prodi_pilihan1=c.id_prodi
left join tbl_sekolah d on a.sekolah=d.id_sekolah
where LEFT(a.waktu_mendaftar,4)='$tahun' and b.keterangan='$jalur' and c.nama_prodi='$prodi'
group by d.id_sekolah
")->result_array();
		echo json_encode($tbl_pendaftar, JSON_NUMERIC_CHECK);
    }
	
	public function grafik_prodi2($tahun="", $jalure="")
    {
		$jalur = str_replace("%20"," ",$jalure);
		$tbl_pendaftar = $this->db->query("select count(a.no_pendaftar) as 'Jumlah', c.nama_prodi as 'Prodi'
from tbl_pendaftar a
left join tbl_subjalur b on a.subjalur=b.id_subjalur
left join tbl_prodi c on a.prodi_pilihan2=c.id_prodi
where LEFT(a.waktu_mendaftar,4)='$tahun' and b.keterangan='$jalur'
group by c.nama_prodi
")->result_array();
		echo json_encode($tbl_pendaftar, JSON_NUMERIC_CHECK);
    }
	
	public function grafik_sekolah2($tahun="", $jalure="", $prodie="")
    {
		$jalur = str_replace("%20"," ",$jalure);
		$prodi = str_replace("%20"," ",$prodie);
		
		$tbl_pendaftar = $this->db->query("select count(a.no_pendaftar) as 'Jumlah', CONCAT(d.nama_sekolah,' ',d.kota_sekolah) as 'Sekolah'
from tbl_pendaftar a
left join tbl_subjalur b on a.subjalur=b.id_subjalur
left join tbl_prodi c on a.prodi_pilihan2=c.id_prodi
left join tbl_sekolah d on a.sekolah=d.id_sekolah
where LEFT(a.waktu_mendaftar,4)='$tahun' and b.keterangan='$jalur' and c.nama_prodi='$prodi'
group by d.id_sekolah
")->result_array();
		echo json_encode($tbl_pendaftar, JSON_NUMERIC_CHECK);
    }
	
	public function grafik_maba()
    {
		$grafik_maba = $this->db->query("select LEFT(a.waktu_mendaftar,4) as 'Tahun', count(a.no_pendaftar) as 'Jumlah'
from tbl_pendaftar a where a.status_kelulusan='1' 
and a.waktu_mendaftar BETWEEN date(concat(Year(DATE_SUB(curdate(), INTERVAL 11 YEAR)), '-01-01')) AND date(concat(Year(CURDATE()), '-12-31'))
group by LEFT(a.waktu_mendaftar,4)
")->result_array();
		
		$results = ["maba" => $grafik_maba];
		
		echo json_encode($results);
    }
	
	public function grafik_tahun_masuk()
    {
		$tbl_pendaftar = $this->db->query("select LEFT(a.waktu_mendaftar,4) as 'tahun' from tbl_pendaftar a
group by LEFT(a.waktu_mendaftar,4)")->result_array();
		echo json_encode($tbl_pendaftar, JSON_NUMERIC_CHECK);
    }
	///////////////////////////////////
	///////////////////////////////////
	public function grafik_tahun_mahasiswa($tahun="")
    {
		$tbl_pendaftar = $this->db->query("select LEFT(a.waktu_mendaftar,4) as 'Tahun', count(a.no_pendaftar) as 'Jumlah'
from tbl_pendaftar a 
join tbl_mahasiswa b on a.no_pendaftar=b.no_pendaftar
where a.waktu_mendaftar BETWEEN date(concat(Year(DATE_SUB(curdate(), INTERVAL 11 YEAR)), '-01-01')) AND date(concat(Year(CURDATE()), '-12-31'))
group by LEFT(a.waktu_mendaftar,4)")->result_array();
		echo json_encode($tbl_pendaftar, JSON_NUMERIC_CHECK);
    }
	
	public function grafik_subjalur_mahasiswa($tahun="")
    {
		$tbl_pendaftar = $this->db->query("select count(a.no_pendaftar) as 'Jumlah', b.keterangan as 'Jalur'
from tbl_pendaftar a
join tbl_mahasiswa c on a.no_pendaftar=c.no_pendaftar
left join tbl_subjalur b on a.subjalur=b.id_subjalur
where LEFT(a.waktu_mendaftar,4)='$tahun'
group by a.subjalur
")->result_array();
		echo json_encode($tbl_pendaftar, JSON_NUMERIC_CHECK);
    }
	
	public function grafik_prodi_mahasiswa($tahun="", $jalure="")
    {
		$jalur = str_replace("%20"," ",$jalure);
		$tbl_pendaftar = $this->db->query("select count(a.no_pendaftar) as 'Jumlah', c.nama_prodi as 'Prodi'
from tbl_pendaftar a
join tbl_mahasiswa d on a.no_pendaftar=d.no_pendaftar
left join tbl_subjalur b on a.subjalur=b.id_subjalur
left join tbl_prodi c on a.prodi_lulus=c.id_prodi
where LEFT(a.waktu_mendaftar,4)='$tahun' and b.keterangan='$jalur'
group by c.nama_prodi
")->result_array();
		echo json_encode($tbl_pendaftar, JSON_NUMERIC_CHECK);
    }
	
	public function grafik_sekolah_mahasiswa($tahun="", $jalure="", $prodie="")
    {
		$jalur = str_replace("%20"," ",$jalure);
		$prodi = str_replace("%20"," ",$prodie);
		
		$tbl_pendaftar = $this->db->query("select count(a.no_pendaftar) as 'Jumlah', CONCAT(d.nama_sekolah,' ',d.kota_sekolah) as 'Sekolah'
from tbl_pendaftar a
join tbl_mahasiswa e on a.no_pendaftar=e.no_pendaftar
left join tbl_subjalur b on a.subjalur=b.id_subjalur
left join tbl_prodi c on a.prodi_lulus=c.id_prodi
left join tbl_sekolah d on a.sekolah=d.id_sekolah
where LEFT(a.waktu_mendaftar,4)='$tahun' and b.keterangan='$jalur' and c.nama_prodi='$prodi'
group by d.id_sekolah
")->result_array();
		echo json_encode($tbl_pendaftar, JSON_NUMERIC_CHECK);
    }
	
	public function grafik_tahun_masuk_mahasiswa()
    {
		$tbl_pendaftar = $this->db->query("select LEFT(a.waktu_mendaftar,4) as 'tahun' from tbl_mahasiswa b
left join tbl_pendaftar a ON a.no_pendaftar=b.no_pendaftar
group by LEFT(a.waktu_mendaftar,4)")->result_array();
		echo json_encode($tbl_pendaftar, JSON_NUMERIC_CHECK);
    }
}