<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include APPPATH . 'third_party/ssp.php';
class Beranda extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('m_general');
	}
	
	////////////////////////////////////
	
	public function index()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_index");
        $this->load->view("v_admin_footer");
    }
	public function daftar()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_beranda_daftar");
        $this->load->view("v_admin_footer");
    }	
	public function login()
    {
		$data['no_pendaftar'] = "";
		$data['tanggal_lahir'] = "";
		$data['hasillogin'] = "";
		$this->load->view("v_admin_header");
        $this->load->view("v_beranda_login",$data);
        $this->load->view("v_admin_footer");
    }
	public function daftar_action()
    {
		$id_terakhir = $this->m_general->bacaidterakhir("tbl_pendaftar", "id_pendaftar");
		$_POST['id_pendaftar'] = $id_terakhir;
		$_POST['no_pendaftar'] = $_POST['waktu_mendaftar'].sprintf("%03d",$id_terakhir);
		$this->m_general->add("tbl_pendaftar", $_POST);
		
		$data['no_pendaftar']  = $_POST['no_pendaftar'];
		$data['tanggal_lahir']  = $_POST['tanggal_lahir'];
		$data['hasillogin'] = "";
		$this->load->view("v_admin_header");
        $this->load->view("v_beranda_login",$data);
        $this->load->view("v_admin_footer");
    }
	public function login_action()
    {
		$no_pendaftar = $this->input->post('no_pendaftar');
		$tanggal_lahir = $this->input->post('tanggal_lahir');
		$where = array(
			'no_pendaftar' => $no_pendaftar,
			'tanggal_lahir' => $tanggal_lahir
			);
		$checking = $this->m_general->countdata('tbl_pendaftar', $where);
		
		if($checking > 0){
			$tbl_pendaftar = $this->m_general->view_by("tbl_pendaftar",$where);
			
			$data_session = array(
				'no_pendaftar' => $tbl_pendaftar->no_pendaftar,
				'tanggal_lahir' => $tbl_pendaftar->tanggal_lahir,
				'status' => "login_beranda"
			);
			$this->session->set_userdata($data_session);
			redirect(base_url("beranda/beranda_detail"));
		}else{
			$data['no_pendaftar']  = $_POST['no_pendaftar'];
			$data['tanggal_lahir']  = $_POST['tanggal_lahir'];
			$data['hasillogin'] = "<i style='color:red;'>Username dan password salah !</i>";
			$this->load->view("v_admin_header");
			$this->load->view("v_beranda_login",$data);
			$this->load->view("v_admin_footer");
		}
    }
	public function beranda_detail()
    {	
		if($this->session->userdata('status') != "login_beranda"){
			redirect(base_url("beranda/login"));
		}else{
			$where = array(
			'no_pendaftar' => $this->session->userdata('no_pendaftar'),
			'tanggal_lahir' => $this->session->userdata('tanggal_lahir')
			);
			$data['tbl_pendaftar'] = $this->m_general->view_by("tbl_pendaftar",$where);
			$this->load->view("v_admin_header");
			$this->load->view('v_beranda_detail', $data);
			$this->load->view("v_admin_footer");
		}
    }

	public function logout()
	{
		$this->session->sess_destroy();
		redirect(base_url('beranda/login'));
	}
}