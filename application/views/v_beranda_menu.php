  <header class="main-header">
    <a href="" class="logo">
      <span class="logo-mini"><b></b></span>
      <span class="logo-lg"><b></b></span>
    </a>
    <nav class="navbar navbar-static-top" >
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
			<span class="sr-only">Toggle navigation</span>
		</a>
		
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<li class="dropdown user user-menu">
					<a href="<?php echo base_url(); ?>login" >
						<i class="fa fa-key"></i>
					</a>
				</li>
			</ul>
		</div>
    </nav>
  </header>
  <?php
  $geturl = $this->uri->segment(2);
  $beranda = "";
  $login = "";
  $daftar = "";
  $beranda_detail = "";

  if($geturl=="" or strpos($geturl, "index")!== FALSE){
	  $beranda = "active";
  }
  
  if(strpos($geturl, "daftar")!== FALSE){
	  $daftar = "active";
  }
  
  if(strpos($geturl, "beranda_detail")!== FALSE){
	  $beranda_detail = "active";
  }
  
  if(strpos($geturl, "login")!== FALSE){
	  $login = "active";
  }
  ?>
  <aside class="main-sidebar">
    <section class="sidebar">
      <ul class="sidebar-menu">
        <li class="<?php echo $beranda;?>">
          <a href="<?php echo base_url(); ?>beranda">
            <span>Dashboard</span>
          </a>
        </li>
		<?php if($this->session->userdata('status') != "login_beranda"){ ?>
		<li class="<?php echo $daftar;?>">
          <a href="<?php echo base_url(); ?>beranda/daftar">
            <span>Daftar</span>
          </a>
        </li>
		<li class="<?php echo $login;?>">
          <a href="<?php echo base_url(); ?>beranda/login">
            <span>Login</span>
          </a>
        </li>
		<?php }else{ ?>
		<li class="<?php echo $beranda_detail;?>">
          <a href="<?php echo base_url(); ?>beranda/beranda_detail">
            <span>Detail Pendaftar</span>
          </a>
        </li>
		<li class="">
          <a href="<?php echo base_url(); ?>beranda/logout">
            <span>Logout</span>
          </a>
        </li>
		<?php } ?>
      </ul>
    </section>
  </aside>