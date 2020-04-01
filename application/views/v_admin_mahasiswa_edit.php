  <div class="content-wrapper" >
    <section class="content-header">
      <h1>
        Ubah Mahasiswa
      </h1>
      <ol class="breadcrumb">
        <li><a href="#">Mahasiswa</a></li>
        <li class="active">Ubah Mahasiswa</li>
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
					if(isset($_POST['nim_eksis'])==1){
							$no_mahasiswa = $_POST['no_mahasiswa'];
							$semester = "<option value='$_POST[semester]'>$_POST[semester]</option>";
							$pendaftar = $this->db->query("select * from tbl_pendaftar where no_pendaftar='$_POST[no_pendaftar]'")->row();
							$no_pendaftar = "<option value='$_POST[no_pendaftar]'>$_POST[no_pendaftar] $pendaftar->nama_lengkap</option>";
					?>
					<p style="color:red;"><i>NIM Mahasiswa sudah digunakan, silahkan coba yang lain.</i></p>
					<?php 
					}else{
							$no_mahasiswa = "$tbl_mahasiswa->no_mahasiswa";
							$semester = "<option value='$tbl_mahasiswa->semester'>$tbl_mahasiswa->semester</option>";
							$pendaftar = $this->db->query("select * from tbl_pendaftar where no_pendaftar='$tbl_mahasiswa->no_pendaftar'")->row();
							$no_pendaftar = "<option value='$tbl_mahasiswa->no_pendaftar'>$tbl_mahasiswa->no_pendaftar $pendaftar->nama_lengkap</option>";
					}?>
				</div>
				<div class="box-body">
				  <div class="row">
				  <?php echo form_open_multipart("admin/mahasiswa_aksi_ubah"); ?>
				  <input type="hidden" name="id_mahasiswa" value="<?php echo $tbl_mahasiswa->id_mahasiswa;?>">
					<div class="col-md-6">
						<div class="form-group">
							<label>	Pendaftar</label>
							<select id="no_pendaftar" name="no_pendaftar" class="form-control select2" required>
								<?php echo $no_pendaftar;?>
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
							<input type="text" class="form-control" name="no_mahasiswa[]" placeholder="NIM" value="<?php echo $no_mahasiswa;?>" required>
							<input type="hidden" class="form-control" name="no_mahasiswa[]" value="<?php echo $tbl_mahasiswa->no_mahasiswa;?>" required>
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