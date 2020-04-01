  <div class="content-wrapper" >
    <section class="content-header">
      <h1>
        Ubah Pendaftar
      </h1>
      <ol class="breadcrumb">
        <li><a href="#">Pendaftar</a></li>
        <li class="active">Ubah Pendaftar</li>
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
				</div>
				<div class="box-body">
				  <div class="row">
				  <?php echo form_open_multipart("admin/pendaftar_aksi_ubah"); ?>
					<input type="hidden" name="id_pendaftar" value="<?php echo $tbl_pendaftar->id_pendaftar;?>">
					<div class="col-md-6">
						<div class="form-group">
							<label>Nama Lengkap</label>
							<input type="text" class="form-control" name="nama_lengkap" placeholder="Nama Lengkap" value="<?php echo $tbl_pendaftar->nama_lengkap;?>">
					  </div>
					</div>					
					<div class="col-md-6">					
						<div class="form-group">
							<label>Jenis Kelamin</label>
							<select name="jenis_kelamin" class="form-control select2">
								<?php
									if($tbl_pendaftar->jenis_kelamin=="P"){
										$keterangan_jk = "Perempuan";
										$option_jk = "<option value='L'>Laki-Laki</option>";
									}else{
										$keterangan_jk = "Laki-Laki";
										$option_jk = "<option value='P'>Perempuan</option>";
									}
								?>
								<option value="<?php echo $tbl_pendaftar->jenis_kelamin;?>"><?php echo $keterangan_jk;?></option>			
								<?php echo $option_jk;?>
							<select>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>No Telepon</label>
							<input type="text" class="form-control" name="no_telepon" placeholder="No Telepon" value="<?php echo $tbl_pendaftar->no_telepon;?>">
						</div>						
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>E-Mail</label>
							<input type="email" class="form-control" name="email" placeholder="E-Mail" value="<?php echo $tbl_pendaftar->email;?>">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Kota Lahir</label>
							<select name="kota_lahir" id="id_kab" class="form-control select2">
								<option value="<?php echo $tbl_pendaftar->kota_lahir;?>">
								<?php 
								$kota_lahir = $this->db->query("select nama from tbl_kabupaten where id_kab='$tbl_pendaftar->kota_lahir'")->row();
								echo $kota_lahir->nama;?>
								</option>
							</select>
						</div>	
						<div class="form-group">
							<label>Tanggal Lahir</label>
							<input type="date" class="form-control" name="tanggal_lahir" placeholder="Tanggal Lahir" value="<?php echo $tbl_pendaftar->tanggal_lahir;?>">
						</div>
						<div class="form-group">
							<label>Alamat Tempat Tinggal</label>
							<input type="text" class="form-control" name="alamat_rumah" placeholder="Alamat Tempat Tinggal" value="<?php echo $tbl_pendaftar->alamat_rumah;?>">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Asal Sekolah</label>
							<select name="sekolah" id="id_sekolah" class="form-control select2">
								<option value="<?php echo $tbl_pendaftar->sekolah;?>">
								<?php 
								$sekolah = $this->db->query("select nama_sekolah from tbl_sekolah where id_sekolah='$tbl_pendaftar->sekolah'")->row();
								echo $sekolah->nama_sekolah;?>
								</option>
							</select>
						</div>						
						<div class="form-group">
							<label>Tahun Lulus</label>
							<select name="tahun_lulus" class="form-control select2">
								<option value="<?php echo $tbl_pendaftar->tahun_lulus;?>"><?php echo $tbl_pendaftar->tahun_lulus;?></option>
								<?php
								  // Sets the top option to be the current year. (IE. the option that is chosen by default).
								  $currently_selected = date('Y'); 
								  // Year to start available options at
								  $earliest_year = 1982; 
								  // Set your latest year you want in the range, in this case we use PHP to just set it to the current year.
								  $latest_year = date('Y'); 
								  
								  // Loops over each int[year] from current year, back to the $earliest_year [1982]
								  foreach ( range( $latest_year, $earliest_year ) as $i ) {
									// Prints the option with the next year in range.
									print '<option value="'.$i.'"'.($i === $currently_selected ? ' selected="selected"' : '').'>'.$i.'</option>';
								  }								  
								?>
							</select>
						</div>		
					</div>		
					<div class="col-md-6">						
						<div class="form-group">
							<label>Jenjang Pendidikan</label>
							<select name="jenjang_pendidikan" class="form-control select2">
								<option value="<?php echo $tbl_pendaftar->jenjang_pendidikan;?>"><?php echo $tbl_pendaftar->jenjang_pendidikan;?></option>
								<option value="SLTA">SLTA</option>
								<option value="D-I">Diploma I</option>
								<option value="D-II">Diploma II</option>
								<option value="D-III">Diploma III</option>
								<option value="S-1">Strata I</option>
								<option value="S-2">Strata II</option>
								<option value="S-3">Doctor</option>
							</select>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Jurusan</label>
							<input type="text" class="form-control" name="asal_jurusan" placeholder="Jurusan" value="<?php echo $tbl_pendaftar->asal_jurusan;?>">
						</div>
					</div>		
					<div class="col-md-6">						
						<div class="form-group">
							<label>Jalur Pendaftaran</label>
							<select id="subjalur" name="subjalur" class="form-control select2">
								<option value="<?php echo $tbl_pendaftar->subjalur;?>">
								<?php 
								$subjalur = $this->db->query("select subjalur from tbl_subjalur where id_subjalur='$tbl_pendaftar->subjalur'")->row();
								echo $subjalur->subjalur;?>
								</option>
							</select>
						</div>
					</div>		
					<div class="col-md-6">						
						<div class="form-group">
							<label>Prodi Pilihan 1</label>
							<select id="prodi_pilihan1" name="prodi_pilihan1" class="form-control select2">
								<option value="<?php echo $tbl_pendaftar->prodi_pilihan1;?>">
								<?php 
								$nama_prodi = $this->db->query("select nama_prodi from tbl_prodi where id_prodi='$tbl_pendaftar->prodi_pilihan1'")->row();
								echo $nama_prodi->nama_prodi;?>
								</option>
							</select>
						</div>
					</div>	
					<div class="col-md-6">						
						<div class="form-group">
							<label>Prodi Pilihan 2</label>
							<select id="prodi_pilihan2" name="prodi_pilihan2" class="form-control select2">
								<option value="<?php echo $tbl_pendaftar->prodi_pilihan2;?>">
								<?php 
								$nama_prodi = $this->db->query("select nama_prodi from tbl_prodi where id_prodi='$tbl_pendaftar->prodi_pilihan2'")->row();
								echo $nama_prodi->nama_prodi;?>
								</option>
							</select>
						</div>
					</div>
					<div class="col-md-6">						
						<div class="form-group">
							<label>Prodi Lulus</label>
							<select id="prodi_lulus" name="prodi_lulus" class="form-control select2">
								<?php 
								if($tbl_pendaftar->prodi_lulus!=""){
									$nama_prodi = $this->db->query("select nama_prodi from tbl_prodi where id_prodi='$tbl_pendaftar->prodi_lulus'")->row();
									echo "<option value='$tbl_pendaftar->prodi_lulus'>$nama_prodi->nama_prodi</option>";
								}else{
									echo "<option value=''>Belum Ada</option>";
								}
								?>
							</select>
						</div>
					</div>	
					<div class="col-md-6">						
						<div class="form-group">
							<label>No Pendaftaran</label>
							<input type="text" class="form-control" name="no_pendaftar" placeholder="No Pendaftaran" value="<?php echo $tbl_pendaftar->no_pendaftar;?>">
						</div>
					</div>
					<div class="col-md-6">						
						<div class="form-group">
							<label>Tanggal Daftar</label>
							<input type="date" class="form-control" name="waktu_mendaftar" placeholder="Waktu Daftar" value="<?php echo $tbl_pendaftar->waktu_mendaftar;?>">
						</div>
					</div>
					<div class="col-md-6">						
						<div class="form-group">
							<label>Status Kelulusan</label>
							<select name="status_kelulusan" class="form-control select2">
								<option value="<?php echo $tbl_pendaftar->status_kelulusan;?>">
								<?php
								$status = array("Pendaftaran Baru","Lulus","Tidak Lulus");
								echo $status[$tbl_pendaftar->status_kelulusan];?></option>
								<option value="0">Pendaftaran Baru</option>
								<option value="1">Lulus</option>
								<option value="2">Tidak Lulus</option>
							</select>
						</div>
					</div>	
					<div class="col-md-6">
					  <div class="form-group">
						<input type="submit" onclick="return confirm('Apakah Yakin Menyimpan?');" value="Submit" class="btn btn-success">
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
	
	$.getJSON("<?php echo base_url('data/kabupaten_all');?>", function(data) {
		$.each(data, function(key, value) {
			$('#id_kab').append('<option value="' + value.id_kab + '">' + value.nama + '</option>');
		});
	});
	
	$.getJSON("<?php echo base_url('data/sekolah_all');?>", function(data) {
		$.each(data, function(key, value) {
			$('#id_sekolah').append('<option value="' + value.id_sekolah + '">' + value.nama_sekolah + '</option>');
		});
	});
	
	$.getJSON("<?php echo base_url('data/subjalur');?>", function(data) {
		$.each(data, function(key, value) {
			$('#subjalur').append('<option value="' + value.id_subjalur + '">' + value.subjalur + '</option>');
		});
	});
	
	$.getJSON("<?php echo base_url('data/program_all');?>", function(data) {
		$.each(data, function(key, value) {
			$('#prodi_pilihan1').append('<option value="' + value.id_prodi + '">' + value.nama_prodi + '</option>');
		});
		
		$.each(data, function(key, value) {
			$('#prodi_pilihan2').append('<option value="' + value.id_prodi + '">' + value.nama_prodi + '</option>');
		});
	});
	
	var pilihan1 = $("#prodi_pilihan1").val();
	var pilihan2 = $("#prodi_pilihan2").val();
	
	$.getJSON("<?php echo base_url('data/program_pilihan/"+pilihan1+"/"+pilihan2+"');?>", function(data) {
		$('#prodi_lulus').empty();
		$('#prodi_lulus').append('<option value="">Belum Ada</option>');
		$.each(data, function(key, value) {
			$('#prodi_lulus').append('<option value="' + value.id_prodi + '">' + value.nama_prodi + '</option>');
		});
	});
	
	$("#prodi_pilihan1").change(function(){
		var pilihan1 = $("#prodi_pilihan1").val();
		var pilihan2 = $("#prodi_pilihan2").val();		
		$('#prodi_lulus').empty();
		$('#prodi_lulus').append('<option value="">Belum Ada</option>');
		$.getJSON("<?php echo base_url('data/program_pilihan/"+pilihan1+"/"+pilihan2+"');?>", function(data) {
			$.each(data, function(key, value) {
				$('#prodi_lulus').append('<option value="' + value.id_prodi + '">' + value.nama_prodi + '</option>');
			});
		});
	});
	$("#prodi_pilihan2").change(function(){
		var pilihan1 = $("#prodi_pilihan1").val();
		var pilihan2 = $("#prodi_pilihan2").val();		
		$('#prodi_lulus').empty();
		$('#prodi_lulus').append('<option value="">Belum Ada</option>');
		$.getJSON("<?php echo base_url('data/program_pilihan/"+pilihan1+"/"+pilihan2+"');?>", function(data) {
			$.each(data, function(key, value) {
				$('#prodi_lulus').append('<option value="' + value.id_prodi + '">' + value.nama_prodi + '</option>');
			});
		});
	});
	
	
	
	
});	
</script>