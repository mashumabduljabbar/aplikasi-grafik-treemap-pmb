<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include APPPATH . 'third_party/ssp.php';
class Visualisasi extends CI_Controller {
	public function __construct(){
		parent::__construct();
		if($this->session->userdata('status') != "login"){
			redirect(base_url("login"));
		}
		date_default_timezone_set("Asia/Bangkok");
		$this->load->model('m_general');
	}
	
	////////////////////////////////////
	////////////////////////////////////
	
	public function index()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_admin_index");
        $this->load->view("v_admin_footer");
    }
	
	public function mahasiswa()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_visualisasi_mahasiswa");
        $this->load->view("v_admin_footer");
    }
	
	public function pendaftar()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_visualisasi_pendaftar");
        $this->load->view("v_admin_footer");
    }
	
}