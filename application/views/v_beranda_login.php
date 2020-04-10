  <div class="content-wrapper" >
    <section class="content-header">
      <h1>
        Login
      </h1>
    </section>
 <!-- Main content -->
    <section class="content" >
      <div class="row">
		<div class="col-xs-12">
			<div class="box">
				<div class="box-header">
					<h3 class="box-title">
						<?php if($no_pendaftar!==""){;?>
						  <span style="color:red; font-style:italic;">Silahkan catat nomor pendaftaran anda : <?php echo $no_pendaftar;?> untuk login berikutnya.</span>
						  <?php }else{ ?>
						<span>Silahkan melengkapi form berikut</span>
						  <?php } ?> 
						  <br>
						<i style="color:red; font-size:8pt;"><?php echo $hasillogin;?></i>
					</h3>
				</div>
				<div class="box-body">
				  <div class="row">
				  <?php echo form_open_multipart("beranda/login_action"); ?>
				  
					<div class="col-md-3">
						<div class="form-group">
							<label>Nomor Pendaftaran</label>
							<input type="text" class="form-control" name="no_pendaftar" placeholder="Contoh : 20xx-0x-xxxxx"
							value="<?php echo $no_pendaftar;?>">
						</div>
						<div class="form-group">
							<label>Tanggal Lahir</label>
							<input type="date" class="form-control" name="tanggal_lahir" placeholder="Tanggal Lahir" value="<?php echo $tanggal_lahir;?>">
						</div>	
						<div class="form-group">
							<input type="submit" onclick="return confirm('Apakah Yakin Login?');" value="Login" class="btn btn-success">
						</div>
					</div>
					<?php echo form_close(); ?>
				  </div>
				</div>
			</div>
		</div>
      </div>
    </section>
  </div>