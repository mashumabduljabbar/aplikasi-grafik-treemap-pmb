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
	
	public function grafik_tahun($tahun="")
    {
		if($tahun=="" || $tahun=="Semua"){
			$where = "";
		}else{
			$where = "WHERE LEFT(a.waktu_mendaftar,4)='$tahun'";
		}
		
		$tbl_pendaftar = $this->db->query("select LEFT(a.waktu_mendaftar,4) as 'Tahun masuk', count(a.no_pendaftar) as 'Jumlah Data'
from tbl_pendaftar a $where 
group by LEFT(a.waktu_mendaftar,4)")->result_array();
		echo json_encode($tbl_pendaftar, JSON_NUMERIC_CHECK);
    }
	
	public function grafik_tahun_masuk()
    {
		$tbl_pendaftar = $this->db->query("select LEFT(a.waktu_mendaftar,4) as 'tahun' from tbl_pendaftar a
group by LEFT(a.waktu_mendaftar,4)")->result_array();
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