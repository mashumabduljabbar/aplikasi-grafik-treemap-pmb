<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan extends CI_Controller {
	public function __construct(){
		parent::__construct();
		if($this->session->userdata('status') != "login"){
			redirect(base_url("login"));
		}
		date_default_timezone_set("Asia/Bangkok");
		$this->load->model('m_general'); // Load model/m_general ke controller ini
	}

	public function pendaftaran(){
		$tahun = $_POST['tahun'];
		$data['tanggalcetak'] = $this->m_general->getTanggalIndo(date("Y-m-d"));
		if($tahun=="" || $tahun=="Semua"){
			$where = "";
		}else{
			$where = "WHERE LEFT(a.waktu_mendaftar,4)='$tahun'";
		}
			$data['tbl_pendaftar'] = $this->db->query("SELECT a.id_pendaftar, a.no_pendaftar, YEAR(a.waktu_mendaftar) as tahun_regis, a.nama_lengkap, 
a.jenis_kelamin, a.no_telepon, a.email, b.nama as kota_lahir, a.tanggal_lahir, CONCAT(LEFT(a.alamat_rumah,30),'...') as alamat_rumah, 
a.jenjang_pendidikan, f.nama_sekolah as sekolah, a.asal_jurusan, a.tahun_lulus, e.subjalur as subjalur, 
CONCAT(c.jenjang,' ',c.nama_prodi) as prodi_pilihan1, CONCAT(d.jenjang,' ',d.nama_prodi) as prodi_pilihan2, 
CONCAT(h.jenjang,' ',h.nama_prodi) as prodi_lulus, 
CASE
	WHEN a.status_kelulusan='0' THEN ''
	WHEN a.status_kelulusan='1' THEN 'Lulus'
	WHEN a.status_kelulusan='2' THEN 'Tidak Lulus'
END as status_kelulusan
FROM tbl_pendaftar a
LEFT JOIN tbl_kabupaten b ON a.kota_lahir=b.id_kab
LEFT JOIN tbl_prodi c ON c.id_prodi=a.prodi_pilihan1
LEFT JOIN tbl_prodi d ON d.id_prodi=a.prodi_pilihan2
LEFT JOIN tbl_subjalur e ON e.id_subjalur=a.subjalur
LEFT JOIN tbl_sekolah f ON f.id_sekolah=a.sekolah
LEFT JOIN tbl_kabupaten g ON g.id_kab=f.kota_sekolah
LEFT JOIN tbl_prodi h ON h.id_prodi=a.prodi_lulus $where order by a.no_pendaftar ASC")->result();		
		
		$mpdf = new \Mpdf\Mpdf([
		'mode' => 'utf-8', 
		'format' => 'A4-L',
		'margin_left' => 12,
		'margin_right' => 12,
		'margin_top' => 5,
		'margin_bottom' => 10,
		'margin_header' => 3,
		'margin_footer' => 3,
		]); //L For Landscape , P for Portrait
        $mpdf->SetTitle("Laporan Pendaftaran");
		$halaman = $this->load->view('v_laporan_pendaftaran',$data,true);
		$mpdf->setFooter('{PAGENO}');
        $mpdf->WriteHTML($halaman);
        $mpdf->Output();
	}
	
	public function mahasiswa(){
		$tahun = $_POST['tahun'];
		$data['tanggalcetak'] = $this->m_general->getTanggalIndo(date("Y-m-d"));
		if($tahun=="" || $tahun=="Semua"){
			$where = "";
		}else{
			$where = "WHERE LEFT(b.waktu_mendaftar,4)='$tahun'";
		}
			$data['tbl_pendaftar'] = $this->db->query("select a.id_mahasiswa, a.no_mahasiswa, a.semester, YEAR(b.waktu_mendaftar) as tahun_regis, 
b.nama_lengkap, b.no_telepon, b.email, b.alamat_rumah, CONCAT(c.jenjang, ' ',c.nama_prodi) as prodi_lulus
from tbl_mahasiswa a
LEFT JOIN tbl_pendaftar b ON a.no_pendaftar=b.no_pendaftar
LEFT JOIN tbl_prodi c ON c.id_prodi=b.prodi_lulus $where order by b.no_pendaftar ASC")->result();		
		
		$mpdf = new \Mpdf\Mpdf([
		'mode' => 'utf-8', 
		'format' => 'A4-L',
		'margin_left' => 12,
		'margin_right' => 12,
		'margin_top' => 5,
		'margin_bottom' => 10,
		'margin_header' => 3,
		'margin_footer' => 3,
		]); //L For Landscape , P for Portrait
        $mpdf->SetTitle("Laporan Pendaftaran");
		$halaman = $this->load->view('v_laporan_mahasiswa',$data,true);
		$mpdf->setFooter('{PAGENO}');
        $mpdf->WriteHTML($halaman);
        $mpdf->Output();
	}
	
	public function visualisasi_pdf(){
		$tahun = $_POST['tahun'];
		$data['tahun'] = $tahun;
		$data['tanggalcetak'] = $this->m_general->getTanggalIndo(date("Y-m-d"));
		if($tahun=="" || $tahun=="Semua"){
			$where = "";
		}else{
			$where = "WHERE LEFT(a.waktu_mendaftar,4)='$tahun'";
		}
			$data['tbl_pendaftar_order'] = $this->db->query("select LEFT(a.waktu_mendaftar,4) as 'tahun', count(a.no_pendaftar) as 'jumlah'
from tbl_pendaftar a $where 
group by LEFT(a.waktu_mendaftar,4) order by count(a.no_pendaftar) DESC")->result();		
			$data['tbl_pendaftar'] = $this->db->query("select LEFT(a.waktu_mendaftar,4) as 'tahun', count(a.no_pendaftar) as 'jumlah'
from tbl_pendaftar a $where 
group by LEFT(a.waktu_mendaftar,4) order by LEFT(a.waktu_mendaftar,4) ASC")->result();		
		
		$mpdf = new \Mpdf\Mpdf([
		'mode' => 'utf-8', 
		'format' => 'A4-L',
		'margin_left' => 12,
		'margin_right' => 12,
		'margin_top' => 5,
		'margin_bottom' => 10,
		'margin_header' => 3,
		'margin_footer' => 3,
		]); //L For Landscape , P for Portrait
        $mpdf->SetTitle("Laporan Pendaftaran");
		$halaman = $this->load->view('v_laporan_visualisasi',$data,true);
		$mpdf->setFooter('{PAGENO}');
        $mpdf->WriteHTML($halaman);
        $mpdf->Output();
	}
	
	public function visualisasi(){
		$tahun = $_POST['tahun'];
		$data['tahun'] = $tahun;
		$data['tanggalcetak'] = $this->m_general->getTanggalIndo(date("Y-m-d"));
		if($tahun=="" || $tahun=="Semua"){
			$where = "";
		}else{
			$where = "WHERE LEFT(a.waktu_mendaftar,4)='$tahun'";
		}
			$data['tbl_pendaftar_order'] = $this->db->query("select LEFT(a.waktu_mendaftar,4) as 'tahun', count(a.no_pendaftar) as 'jumlah'
from tbl_pendaftar a $where 
group by LEFT(a.waktu_mendaftar,4) order by count(a.no_pendaftar) DESC")->result();		
			$data['tbl_pendaftar'] = $this->db->query("select LEFT(a.waktu_mendaftar,4) as 'tahun', count(a.no_pendaftar) as 'jumlah'
from tbl_pendaftar a $where 
group by LEFT(a.waktu_mendaftar,4) order by LEFT(a.waktu_mendaftar,4) ASC")->result();		
		
		$this->load->view('v_laporan_visualisasi',$data);
	}
}