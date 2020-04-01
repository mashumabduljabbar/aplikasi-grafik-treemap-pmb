<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include APPPATH . 'third_party/ssp.php';
class Pimpinan extends CI_Controller {
	public function __construct(){
		parent::__construct();
		if($this->session->userdata('status') != "login" or $this->session->userdata('level') != "pimpinan"){
			redirect(base_url("login"));
		}
		date_default_timezone_set("Asia/Bangkok");
		$this->load->model('m_general');
	}
	
	////////////////////////////////////
	
	public function index()
    {
		$this->load->view("v_admin_header");
        $this->load->view("v_pimpinan_index");
        $this->load->view("v_admin_footer");
    }
	
	////////////////////////////////////
	
	////////////////////////////////////
	
	public function profile()
    {
		$id_user = $this->session->userdata("userid");
		$data['tbl_user'] = $this->db->query("select * from tbl_user where id_user='$id_user'")->row();
		$this->load->view("v_admin_header");
        $this->load->view("v_pimpinan_profile", $data);
        $this->load->view("v_admin_footer");
    }		

	public function profile_ubah()
	{
		if(isset($_POST['id_user'])){	
			$id_user = $_POST['id_user'];
			$data['tbl_user'] = $this->db->query("select * from tbl_user where id_user='$id_user'")->row();
			
			$this->load->view("v_admin_header");
			$this->load->view('v_pimpinan_profile_edit', $data);
			$this->load->view("v_admin_footer");
		}else{
			redirect('pimpinan/profile');
		}
	}	
	
	public function profile_aksi_ubah()
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
				redirect('pimpinan/profile');
			}else{
				$_POST['username_eksis'] = "1";
				$where = array("id_user" => $_POST['id_user']);
				$_POST['tbl_user'] = $this->m_general->view_by("tbl_user",$where);
				$this->load->view("v_admin_header");
				$this->load->view("v_pimpinan_profile_edit", $_POST);
				$this->load->view("v_admin_footer");
			}
		}else{
			redirect('pimpinan/profile_ubah/');
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
}