<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include APPPATH . 'third_party/ssp.php';
class Admin extends CI_Controller {
	public function __construct(){
		parent::__construct();
		if($this->session->userdata('status') != "login" or $this->session->userdata('level') != "admin"){
			redirect(base_url("login"));
		}
		date_default_timezone_set("Asia/Bangkok");
		$this->load->model('m_general');
	}
	
	////////////////////////////////////
	
	public function index()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_index");
        $this->load->view("v_admin_footer");
    }

	////////////////////////////////////
	
	////////////////////////////////////
	
	public function get_data_master_pendaftar()
	{
		$table = "
        (
           SELECT a.id_pendaftar, a.no_pendaftar, YEAR(a.waktu_mendaftar) as tahun_regis, a.nama_lengkap, 
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
LEFT JOIN tbl_prodi h ON h.id_prodi=a.prodi_lulus
        )temp";
		
        $primaryKey = 'id_pendaftar';
        $columns = array(
        array( 'db' => 'no_pendaftar',     'dt' => 'no_pendaftar' ),
        array( 'db' => 'tahun_regis',     'dt' => 'tahun_regis' ),
        array( 'db' => 'nama_lengkap',        'dt' => 'nama_lengkap' ),
        array( 'db' => 'jenis_kelamin',     'dt' => 'jenis_kelamin' ),
        array( 'db' => 'no_telepon',        'dt' => 'no_telepon' ),
        array( 'db' => 'email',        'dt' => 'email' ),
        array( 'db' => 'kota_lahir',     'dt' => 'kota_lahir' ),
        array( 'db' => 'tanggal_lahir',     'dt' => 'tanggal_lahir' ),
        array( 'db' => 'alamat_rumah',     'dt' => 'alamat_rumah' ),
        array( 'db' => 'jenjang_pendidikan',     'dt' => 'jenjang_pendidikan' ),
        array( 'db' => 'sekolah',     'dt' => 'sekolah' ),
        array( 'db' => 'asal_jurusan',     'dt' => 'asal_jurusan' ),
        array( 'db' => 'tahun_lulus',     'dt' => 'tahun_lulus' ),
        array( 'db' => 'subjalur',     'dt' => 'subjalur' ),
        array( 'db' => 'prodi_pilihan1',     'dt' => 'prodi_pilihan1' ),
        array( 'db' => 'prodi_pilihan2',     'dt' => 'prodi_pilihan2' ),
        array( 'db' => 'prodi_lulus',     'dt' => 'prodi_lulus' ),
        array( 'db' => 'status_kelulusan',     'dt' => 'status_kelulusan' ),
        array( 'db' => 'id_pendaftar',     'dt' => 'id_pendaftar' ),
        );

        $sql_details = array(
            'user' => $this->db->username,
            'pass' => $this->db->password,
            'db'   => $this->db->database,
            'host' => $this->db->hostname
        );
        echo json_encode(
            SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns)
        );
	}	
	
	public function pendaftar()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_pendaftar");
        $this->load->view("v_admin_footer");
    }		
	public function pendaftar_tambah()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_pendaftar_add");
		$this->load->view("v_admin_footer");
    }
	public function pendaftar_ubah($id_pendaftar="")
	{
		if($id_pendaftar!=""){
			$where = array("id_pendaftar" => $id_pendaftar);
			$data['tbl_pendaftar'] = $this->m_general->view_by("tbl_pendaftar",$where);
			$this->load->view("v_admin_header");
			$this->load->view('v_admin_pendaftar_edit', $data);
			$this->load->view("v_admin_footer");
		}else{
			redirect('admin/pendaftar');
		}
	}	
	public function pendaftar_aksi_tambah()
    {
		$id_terakhir = $this->m_general->bacaidterakhir("tbl_pendaftar", "id_pendaftar");
		$_POST['id_pendaftar'] = $id_terakhir;
		$_POST['no_pendaftar'] = $_POST['waktu_mendaftar'].sprintf("%03d",$id_terakhir);
		$this->m_general->add("tbl_pendaftar", $_POST);
		redirect('admin/pendaftar');
    }	
	public function pendaftar_aksi_ubah()
    {
		if(isset($_POST['id_pendaftar'])){
			if($_POST['prodi_lulus']==''){
				$_POST['prodi_lulus'] = null;
			}
			$where['id_pendaftar'] = $_POST['id_pendaftar'];
			$this->m_general->edit("tbl_pendaftar", $where, $_POST);
			redirect('admin/pendaftar');
		}else{
			redirect('admin/pendaftar_ubah/');
		}
    }	
	public function pendaftar_aksi_hapus($id_pendaftar=""){
		if($id_pendaftar!=""){
			$where['id_pendaftar'] = $id_pendaftar;
			$this->m_general->hapus("tbl_pendaftar", $where); // Panggil fungsi hapus() yang ada di m_general.php
			redirect('admin/pendaftar');
		}else{
			redirect('admin/pendaftar');
		}
	}
	
	////////////////////////////////////
	
	////////////////////////////////////
	
	public function get_data_master_mahasiswa()
	{
		$table = "
        (
           select a.id_mahasiswa, a.no_mahasiswa, a.semester, YEAR(b.waktu_mendaftar) as tahun_regis, 
b.nama_lengkap, b.no_telepon, b.email, b.alamat_rumah, CONCAT(c.jenjang, ' ',c.nama_prodi) as prodi_lulus
from tbl_mahasiswa a
LEFT JOIN tbl_pendaftar b ON a.no_pendaftar=b.no_pendaftar
LEFT JOIN tbl_prodi c ON c.id_prodi=b.prodi_lulus
        )temp";
		
        $primaryKey = 'id_mahasiswa';
        $columns = array(
        array( 'db' => 'no_mahasiswa',     'dt' => 'no_mahasiswa' ),
        array( 'db' => 'tahun_regis',     'dt' => 'tahun_regis' ),
        array( 'db' => 'nama_lengkap',        'dt' => 'nama_lengkap' ),
        array( 'db' => 'no_telepon',        'dt' => 'no_telepon' ),
        array( 'db' => 'email',        'dt' => 'email' ),
        array( 'db' => 'alamat_rumah',     'dt' => 'alamat_rumah' ),
        array( 'db' => 'prodi_lulus',     'dt' => 'prodi_lulus' ),
        array( 'db' => 'semester',     'dt' => 'semester' ),
        array( 'db' => 'id_mahasiswa',     'dt' => 'id_mahasiswa' ),
        );

        $sql_details = array(
            'user' => $this->db->username,
            'pass' => $this->db->password,
            'db'   => $this->db->database,
            'host' => $this->db->hostname
        );
        echo json_encode(
            SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns)
        );
	}	
	
	public function mahasiswa()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_mahasiswa");
        $this->load->view("v_admin_footer");
    }		
	public function mahasiswa_tambah()
    {
		$_POST['nim_eksis'] = "0";
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_mahasiswa_add", $_POST);
		$this->load->view("v_admin_footer");
    }
	public function mahasiswa_ubah($id_mahasiswa="")
	{
		if($id_mahasiswa!=""){
			$where = array("id_mahasiswa" => $id_mahasiswa);
			$data['tbl_mahasiswa'] = $this->m_general->view_by("tbl_mahasiswa",$where);
			$this->load->view("v_admin_header");
			$this->load->view('v_admin_mahasiswa_edit', $data);
			$this->load->view("v_admin_footer");
		}else{
			redirect('admin/mahasiswa');
		}
	}	
	public function mahasiswa_aksi_tambah()
    {
		$id_terakhir = $this->m_general->bacaidterakhir("tbl_mahasiswa", "id_mahasiswa");
		$_POST['id_mahasiswa'] = $id_terakhir;
		$no_mahasiswa = $this->m_general->countdata("tbl_mahasiswa", array("no_mahasiswa" => $_POST['no_mahasiswa']));
		if($no_mahasiswa=="0"){
			$this->m_general->add("tbl_mahasiswa", $_POST);
			redirect('admin/mahasiswa');
		}else{
			$_POST['nim_eksis'] = "1";
			$this->load->view("v_admin_header");
			$this->load->view("v_admin_mahasiswa_add", $_POST);
			$this->load->view("v_admin_footer");
		}
    }	
	public function mahasiswa_aksi_ubah()
    {
		if(isset($_POST['id_mahasiswa'])){			
			$no_mahasiswa = $this->input->post('no_mahasiswa')[0];
			$no_mahasiswa_old = $this->input->post('no_mahasiswa')[1];
			
			if($no_mahasiswa!=$no_mahasiswa_old){
				$check_no_mahasiswa = $this->m_general->countdata("tbl_mahasiswa", array("no_mahasiswa" => $no_mahasiswa));
				$_POST['no_mahasiswa'] = $no_mahasiswa;
			}else{
				$check_no_mahasiswa = 0;
				$_POST['no_mahasiswa'] = $no_mahasiswa;
			}
			
			if($check_no_mahasiswa==0){			
				$where['id_mahasiswa'] = $_POST['id_mahasiswa'];
				$this->m_general->edit("tbl_mahasiswa", $where, $_POST);
				redirect('admin/mahasiswa');
			}else{
				$_POST['nim_eksis'] = "1";
				$where = array("id_mahasiswa" => $_POST['id_mahasiswa']);
				$_POST['tbl_mahasiswa'] = $this->m_general->view_by("tbl_mahasiswa",$where);
				$this->load->view("v_admin_header");
				$this->load->view("v_admin_mahasiswa_edit", $_POST);
				$this->load->view("v_admin_footer");
			}
		}else{
			redirect('admin/mahasiswa_ubah/');
		}
    }	
	public function mahasiswa_aksi_hapus($id_mahasiswa=""){
		if($id_mahasiswa!=""){
			$where['id_mahasiswa'] = $id_mahasiswa;
			$this->m_general->hapus("tbl_mahasiswa", $where); // Panggil fungsi hapus() yang ada di m_general.php
			redirect('admin/mahasiswa');
		}else{
			redirect('admin/mahasiswa');
		}
	}
	
	////////////////////////////////////
	
	////////////////////////////////////
	
	public function get_data_master_prodi()
	{
		$table = "
        (
           select * from tbl_prodi order by nama_fakultas ASC, nama_prodi ASC
        )temp";
		
        $primaryKey = 'id_prodi';
        $columns = array(
        array( 'db' => 'nama_prodi',     'dt' => 'nama_prodi' ),
        array( 'db' => 'nama_fakultas',        'dt' => 'nama_fakultas' ),
        array( 'db' => 'jenjang',        'dt' => 'jenjang' ),
        array( 'db' => 'jenis',        'dt' => 'jenis' ),
        array( 'db' => 'id_prodi',        'dt' => 'id_prodi' ),
        );

        $sql_details = array(
            'user' => $this->db->username,
            'pass' => $this->db->password,
            'db'   => $this->db->database,
            'host' => $this->db->hostname
        );
        echo json_encode(
            SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns)
        );
	}	
	
	public function prodi()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_prodi");
        $this->load->view("v_admin_footer");
    }		
	public function prodi_tambah()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_prodi_add");
		$this->load->view("v_admin_footer");
    }
	public function prodi_ubah($id_prodi="")
	{
		if($id_prodi!=""){
			$where = array("id_prodi" => $id_prodi);
			$data['tbl_prodi'] = $this->m_general->view_by("tbl_prodi",$where);
			$this->load->view("v_admin_header");
			$this->load->view('v_admin_prodi_edit', $data);
			$this->load->view("v_admin_footer");
		}else{
			redirect('admin/prodi');
		}
	}	
	public function prodi_aksi_tambah()
    {
		$id_terakhir = $this->m_general->bacaidterakhir("tbl_prodi", "id_prodi");
		$_POST['id_prodi'] = $id_terakhir;
		$this->m_general->add("tbl_prodi", $_POST);
		redirect('admin/prodi');
    }	
	public function prodi_aksi_ubah()
    {
		if(isset($_POST['id_prodi'])){			
			$where['id_prodi'] = $_POST['id_prodi'];
			$this->m_general->edit("tbl_prodi", $where, $_POST);
			redirect('admin/prodi');
		}else{
			redirect('admin/prodi_ubah/');
		}
    }	
	public function prodi_aksi_hapus($id_prodi=""){
		if($id_prodi!=""){
			$where['id_prodi'] = $id_prodi;
			$this->m_general->hapus("tbl_prodi", $where); // Panggil fungsi hapus() yang ada di m_general.php
			redirect('admin/prodi');
		}else{
			redirect('admin/prodi');
		}
	}
	
	////////////////////////////////////
	
	////////////////////////////////////
	
	public function get_data_master_sekolah()
	{
		$table = "
        (
           select a.id_sekolah, a.nama_sekolah, a.alamat_sekolah, b.nama as kota_sekolah, a.jenis_sekolah, a.telp from tbl_sekolah a
			LEFT JOIN tbl_kabupaten b ON a.kota_sekolah=b.id_kab
			order by b.id_prov ASC, a.kota_sekolah ASC, a.nama_sekolah ASC
        )temp";
		
        $primaryKey = 'id_sekolah';
        $columns = array(
        array( 'db' => 'nama_sekolah',     'dt' => 'nama_sekolah' ),
        array( 'db' => 'alamat_sekolah',        'dt' => 'alamat_sekolah' ),
        array( 'db' => 'kota_sekolah',        'dt' => 'kota_sekolah' ),
        array( 'db' => 'jenis_sekolah',        'dt' => 'jenis_sekolah' ),
        array( 'db' => 'telp',        'dt' => 'telp' ),
        array( 'db' => 'id_sekolah',        'dt' => 'id_sekolah' ),
        );

        $sql_details = array(
            'user' => $this->db->username,
            'pass' => $this->db->password,
            'db'   => $this->db->database,
            'host' => $this->db->hostname
        );
        echo json_encode(
            SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns)
        );
	}	
	
	public function sekolah()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_sekolah");
        $this->load->view("v_admin_footer");
    }		
	public function sekolah_tambah()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_sekolah_add");
		$this->load->view("v_admin_footer");
    }
	public function sekolah_ubah($id_sekolah="")
	{
		if($id_sekolah!=""){
			$where = array("id_sekolah" => $id_sekolah);
			$data['tbl_sekolah'] = $this->m_general->view_by("tbl_sekolah",$where);
			$this->load->view("v_admin_header");
			$this->load->view('v_admin_sekolah_edit', $data);
			$this->load->view("v_admin_footer");
		}else{
			redirect('admin/sekolah');
		}
	}	
	public function sekolah_aksi_tambah()
    {
		$id_terakhir = $this->m_general->bacaidterakhir("tbl_sekolah", "id_sekolah");
		$_POST['id_sekolah'] = $id_terakhir;
		$this->m_general->add("tbl_sekolah", $_POST);
		redirect('admin/sekolah');
    }	
	public function sekolah_aksi_ubah()
    {
		if(isset($_POST['id_sekolah'])){			
			$where['id_sekolah'] = $_POST['id_sekolah'];
			$this->m_general->edit("tbl_sekolah", $where, $_POST);
			redirect('admin/sekolah');
		}else{
			redirect('admin/sekolah_ubah/');
		}
    }	
	public function sekolah_aksi_hapus($id_sekolah=""){
		if($id_sekolah!=""){
			$where['id_sekolah'] = $id_sekolah;
			$this->m_general->hapus("tbl_sekolah", $where); // Panggil fungsi hapus() yang ada di m_general.php
			redirect('admin/sekolah');
		}else{
			redirect('admin/sekolah');
		}
	}
	
	////////////////////////////////////
	
	////////////////////////////////////
	
	public function get_data_master_subjalur()
	{
		$table = "
        (
           select * from tbl_subjalur order by subjalur ASC
        )temp";
		
        $primaryKey = 'id_subjalur';
        $columns = array(
        array( 'db' => 'subjalur',        'dt' => 'subjalur' ),
        array( 'db' => 'jalur',     'dt' => 'jalur' ),
        array( 'db' => 'keterangan',        'dt' => 'keterangan' ),
        array( 'db' => 'id_subjalur',        'dt' => 'id_subjalur' ),
        );

        $sql_details = array(
            'user' => $this->db->username,
            'pass' => $this->db->password,
            'db'   => $this->db->database,
            'host' => $this->db->hostname
        );
        echo json_encode(
            SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns)
        );
	}	
	
	public function subjalur()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_subjalur");
        $this->load->view("v_admin_footer");
    }		
	public function subjalur_tambah()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_subjalur_add");
		$this->load->view("v_admin_footer");
    }
	public function subjalur_ubah($id_subjalur="")
	{
		if($id_subjalur!=""){
			$where = array("id_subjalur" => $id_subjalur);
			$data['tbl_subjalur'] = $this->m_general->view_by("tbl_subjalur",$where);
			$this->load->view("v_admin_header");
			$this->load->view('v_admin_subjalur_edit', $data);
			$this->load->view("v_admin_footer");
		}else{
			redirect('admin/subjalur');
		}
	}	
	public function subjalur_aksi_tambah()
    {
		$id_terakhir = $this->m_general->bacaidterakhir("tbl_subjalur", "id_subjalur");
		$_POST['id_subjalur'] = $id_terakhir;
		$this->m_general->add("tbl_subjalur", $_POST);
		redirect('admin/subjalur');
    }	
	public function subjalur_aksi_ubah()
    {
		if(isset($_POST['id_subjalur'])){			
			$where['id_subjalur'] = $_POST['id_subjalur'];
			$this->m_general->edit("tbl_subjalur", $where, $_POST);
			redirect('admin/subjalur');
		}else{
			redirect('admin/subjalur_ubah/');
		}
    }	
	public function subjalur_aksi_hapus($id_subjalur=""){
		if($id_subjalur!=""){
			$where['id_subjalur'] = $id_subjalur;
			$this->m_general->hapus("tbl_subjalur", $where); // Panggil fungsi hapus() yang ada di m_general.php
			redirect('admin/subjalur');
		}else{
			redirect('admin/subjalur');
		}
	}
	
	
	////////////////////////////////////
	
	////////////////////////////////////
	
	public function visualisasi()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_visualisasi");
        $this->load->view("v_admin_footer");
    }
	
	////////////////////////////////////
	
	////////////////////////////////////
	
	public function laporan()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_laporan");
        $this->load->view("v_admin_footer");
    }
	
	////////////////////////////////////
	
	////////////////////////////////////
	
	public function get_data_master_user()
	{
		$table = "
        (
          select * from tbl_user order by user_name ASC
        )temp";
		
        $primaryKey = 'id_user';
        $columns = array(
        array( 'db' => 'level_user',     'dt' => 'level_user' ),
        array( 'db' => 'nama_user',     'dt' => 'nama_user' ),
        array( 'db' => 'user_name',        'dt' => 'user_name' ),
        array( 'db' => 'foto_user',        'dt' => 'foto_user' ),
        array( 'db' => 'id_user',     'dt' => 'id_user' ),
        );

        $sql_details = array(
            'user' => $this->db->username,
            'pass' => $this->db->password,
            'db'   => $this->db->database,
            'host' => $this->db->hostname
        );
        echo json_encode(
            SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns)
        );
	}	
	
	public function user()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_user");
        $this->load->view("v_admin_footer");
    }		
	public function user_tambah()
    {
		$_POST['username_eksis'] = "0";
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_user_add", $_POST);
		$this->load->view("v_admin_footer");
    }		
	public function user_tambah_mahasiswa()
    {
		$_POST['username_eksis'] = "0";
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_user_mahasiswa_add", $_POST);
		$this->load->view("v_admin_footer");
    }
	public function user_ubah($id_user="")
	{
		if($id_user!=""){
			$where = array("id_user" => $id_user);
			$data['tbl_user'] = $this->m_general->view_by("tbl_user",$where);
			$this->load->view("v_admin_header");
			$this->load->view('v_admin_user_edit', $data);
			$this->load->view("v_admin_footer");
		}else{
			redirect('admin/user');
		}
	}
	public function user_ubah_mahasiswa($id_user="")
	{
		if($id_user!=""){
			$where = array("id_user" => $id_user);
			$data['tbl_user'] = $this->m_general->view_by("tbl_user",$where);
			$this->load->view("v_admin_header");
			$this->load->view('v_admin_user_mahasiswa_edit', $data);
			$this->load->view("v_admin_footer");
		}else{
			redirect('admin/user');
		}
	}	
	public function user_aksi_tambah()
    {
		$id_terakhir = $this->m_general->bacaidterakhir("tbl_user", "id_user");
		$_POST['id_user'] = $id_terakhir;
		$user_name = $this->m_general->countdata("tbl_user", array("user_name" => $_POST['user_name']));
		if($user_name=="0"){
			$folder = "avatar";
			$file_upload = $_FILES['userfiles'];
			$files = $file_upload;
					
			if($files['name'] != "" OR $files['name'] != NULL){
				$_POST['foto_user'] = $this->m_general->file_upload($files, $folder);
			}else{
				$_POST['foto_user'] = "";
			}
			$_POST['user_password'] = md5($_POST['user_password']);
			$this->m_general->add("tbl_user", $_POST);
			redirect('admin/user');
		}else{
			$_POST['username_eksis'] = "1";
			$this->load->view("v_admin_header");
			if(isset($_POST['nomorinduk_user'])){
				$this->load->view("v_admin_user_mahasiswa_add", $_POST);
			}else{
				$this->load->view("v_admin_user_add", $_POST);
			}
			$this->load->view("v_admin_footer");
		}
    }	
	public function user_aksi_ubah()
    {
		if(isset($_POST['id_user'])){			
			$user_name = $this->input->post('user_name')[0];
			$user_name_old = $this->input->post('user_name')[1];
			$where['id_user'] = $_POST['id_user'];
			$tbl_user = $this->m_general->view_by("tbl_user",$where);
			$user_password = $this->input->post('user_password')[0];
			$user_password_old = $this->input->post('user_password')[1];
			$foto_user = $this->input->post('foto_user');
			
			if($user_name!=$user_name_old){
				$check_no_user = $this->m_general->countdata("tbl_user", array("user_name" => $user_name));
			}else{
				$check_no_user = 0;
			}
			
			$_POST['user_name'] = $user_name;
			$_POST['user_password'] = $user_password;
			
			if($check_no_user==0){	
				if($user_password!=$user_password_old){
					$_POST['user_password'] = md5($user_password);
				}else{
					$_POST['user_password'] = $user_password;
				}
				
				$folder = "avatar";
				$file_upload = $_FILES['userfiles'];
				$files = $file_upload;
					
				if($files['name'] != "" OR $files['name'] != NULL){
					$file = './assets/dist/img/avatar/'.$tbl_user->foto_user;
						if($tbl_user->foto_user!="default/user.png" && is_readable($file)){
						unlink($file);
					}
					$_POST['foto_user'] = $this->m_general->file_upload($files, $folder);
				}else{
					$_POST['foto_user'] = $foto_user;
				}
				
				$this->m_general->edit("tbl_user", $where, $_POST);
				redirect('admin/user');
			}else{
				$_POST['username_eksis'] = "1";
				$where = array("id_user" => $_POST['id_user']);
				$_POST['tbl_user'] = $this->m_general->view_by("tbl_user",$where);
				$this->load->view("v_admin_header");
				$this->load->view("v_admin_user_edit", $_POST);
				$this->load->view("v_admin_footer");
			}
		}else{
			redirect('admin/user_ubah/');
		}
    }	
	public function user_aksi_hapus($id_user=""){
		if($id_user!=""){
			$where['id_user'] = $id_user;
			$this->m_general->hapus("tbl_user", $where); // Panggil fungsi hapus() yang ada di m_general.php
			redirect('admin/user');
		}else{
			redirect('admin/user');
		}
	}
}