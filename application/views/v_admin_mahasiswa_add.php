  <div class="content-wrapper" >
    <section class="content-header">
      <h1>
        Tambah Mahasiswa
      </h1>
      <ol class="breadcrumb">
        <li><a href="#">Mahasiswa</a></li>
        <li class="active">Tambah Mahasiswa</li>
      </ol>
    </section>
 <!-- Main content -->
    <section class="content" >
      <div class="row">
		<div class="col-xs-12">
			<div class="box">
				<div class="box-header">
					<h3 class="box-title">
						<span>Silahkan melengkapi form berikut</span>
					</h3>
					<?php 
					if($_POST['nim_eksis']==1){
							$no_mahasiswa = $_POST['no_mahasiswa'];
							$semester = "<option value='$_POST[semester]'>$_POST[semester]</option>";
					?>
					<p style="color:red;"><i>NIM Mahasiswa sudah digunakan, silahkan coba yang lain.</i></p>
					<?php 
					}else{
							$no_mahasiswa = "";
							$semester = "<option value=''>Pilih Semester</option>";
					}?>
				</div>
				<div class="box-body">
				  <div class="row">
				  <?php echo form_open_multipart("admin/mahasiswa_aksi_tambah"); ?>
					<div class="col-md-6">
						<div class="form-group">
							<label>	Pendaftar</label>
							<select id="no_pendaftar" name="no_pendaftar" class="form-control select2" required>
								<option value="">Pilih Pendaftar</option>
							</select>
						</div>
					</div>	
					<div class="col-md-6">						
						<div class="form-group">
							<label> Semester</label>
							<select name="semester" class="form-control select2" required>
								<?php echo $semester;?>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
							</select>
						</div>
					</div>	
					<div class="col-md-6">
						<div class="form-group">
							<label>	NIM</label>
							<input type="text" class="form-control" name="no_mahasiswa" placeholder="NIM" value="<?php echo $no_mahasiswa;?>" required>
						</div>
					</div>
					<div class="col-md-3">
					  <div class="form-group">
						<label>	&nbsp;</label>
						<input type="submit" onclick="return confirm('Apakah Yakin Menyimpan?');" value="Submit" class="btn btn-success form-control">
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
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
<script>  
$(document).ready(function() {	
	$.getJSON("<?php echo base_url('data/pendaftar_lulus');?>", function(data) {
				$.each(data, function(key, value) {
					$('#no_pendaftar').append('<option value="' + value.no_pendaftar + '">' + value.no_pendaftar + ' ' + value.nama_lengkap + '</option>');
				});
	});
});	
</script>