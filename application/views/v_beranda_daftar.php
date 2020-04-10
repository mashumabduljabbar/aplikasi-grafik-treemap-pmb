  <div class="content-wrapper" >
    <section class="content-header">
      <h1>
        Daftar
      </h1>
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
				  <?php echo form_open_multipart("beranda/daftar_action"); ?>
					<div class="col-md-6">
						<div class="form-group">
							<label>Nama Lengkap</label>
							<input type="text" class="form-control" name="nama_lengkap" placeholder="Nama Lengkap" required>
					  </div>
					</div>					
					<div class="col-md-6">					
						<div class="form-group">
							<label>Jenis Kelamin</label>
							<select name="jenis_kelamin" class="form-control select2">
							  <option value="">Pilih Jenis Kelamin</option>						  
							  <option value="L">Laki-Laki</option>						  
							  <option value="P">Perempuan</option>						  
							<select>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>No Telepon</label>
							<input type="text" class="form-control" name="no_telepon" placeholder="No Telepon">
						</div>						
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>E-Mail</label>
							<input type="email" class="form-control" name="email" placeholder="E-Mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Kota Lahir</label>
							<select id="id_prov" class="form-control select2" required>
								<option value="">Pilih Provinsi</option>						  
							<select>
						</div>
						<div class="form-group">
							<select name="kota_lahir" id="id_kab" class="form-control select2" required>
								<option value="">Pilih Kota</option>
							</select>
						</div>	
						<div class="form-group">
							<label>Tanggal Lahir</label>
							<input type="date" class="form-control" name="tanggal_lahir" placeholder="Tanggal Lahir">
						</div>
						<div class="form-group">
							<label>Alamat Tempat Tinggal</label>
							<input type="text" class="form-control" name="alamat_rumah" placeholder="Alamat Tempat Tinggal">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Asal Sekolah</label>
							<select id="id_prov2" class="form-control select2" required>
								<option value="">Pilih Provinsi</option>						  
							<select>
						</div>
						<div class="form-group">
							<select id="id_kab2" class="form-control select2" required>
								<option value="">Pilih Kota</option>
							</select>
						</div>						
						<div class="form-group">
							<label>Nama Sekolah</label>
							<select name="sekolah" id="id_sekolah" class="form-control select2" required>
								<option value="">Pilih Sekolah</option>
							</select>
						</div>						
						<div class="form-group">
							<label>Tahun Lulus</label>
							<select name="tahun_lulus" class="form-control select2">
								<option value="">Pilih Tahun Lulus</option>
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
								<option value="">Pilih Jenjang Pendidikan</option>
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
							<input type="text" class="form-control" name="asal_jurusan" placeholder="Jurusan">
						</div>
					</div>		
					<div class="col-md-6">						
						<div class="form-group">
							<label>Jalur Pendaftaran</label>
							<select id="subjalur" name="subjalur" class="form-control select2" required>
								<option value="">Pilih Jalur Pendaftaran</option>
							</select>
						</div>
					</div>	
					<div class="col-md-6">						
						<div class="form-group">
							<label>Jenis Program</label>
							<select id="jenisprogram" class="form-control select2">
								<option value="">Pilih Jenis Program</option>
								<option value="IPA">IPA</option>
								<option value="IPS">IPS</option>
							</select>
						</div>
					</div>	
					<div class="col-md-6">						
						<div class="form-group">
							<label>Prodi Pilihan 1</label>
							<select id="prodi_pilihan1" name="prodi_pilihan1" class="form-control select2" required>
								<option value="">Pilih Prodi Pilihan 1</option>
							</select>
						</div>
					</div>	
					<div class="col-md-6">						
						<div class="form-group">
							<label>Prodi Pilihan 2</label>
							<select id="prodi_pilihan2" name="prodi_pilihan2" class="form-control select2" required>
								<option value="">Pilih Prodi Pilihan 2</option>
							</select>
						</div>
					</div>
					<input type="hidden" name="waktu_mendaftar" value="<?php echo date("Y-m-d");?>">
					<input type="hidden" name="status_kelulusan" value="0">
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
	$.getJSON("<?php echo base_url('data/provinsi');?>", function(data) {
				$.each(data, function(key, value) {
					$('#id_prov').append('<option value="' + value.id_prov + '">' + value.nama + '</option>');
				});
	});
	
	$.getJSON("<?php echo base_url('data/provinsi');?>", function(data) {
				$.each(data, function(key, value) {
					$('#id_prov2').append('<option value="' + value.id_prov + '">' + value.nama + '</option>');
				});
	});
	
	$.getJSON("<?php echo base_url('data/prodi');?>", function(data) {
				$.each(data, function(key, value) {
					$('#id_prodi').append('<option value="' + value.id_prodi + '">' + value.nama_fakultas + ' - ' + value.nama_prodi + '</option>');
				});
	});
	
	$.getJSON("<?php echo base_url('data/subjalur');?>", function(data) {
				$.each(data, function(key, value) {
					$('#subjalur').append('<option value="' + value.id_subjalur + '">' + value.subjalur + ' (' + value.keterangan + ')</option>');
				});
	});

	$("#id_prov").change(function(){
		var id_prov = $("#id_prov").val();
		$.ajax({
			url: "<?php echo base_url('data/kabupaten');?>",
			type     : 'POST',
			dataType : 'html',
			data: 'id_prov='+id_prov,
			cache: false,
			success: function(response){
				$("#id_kab").html(response);
			}
		});
	});
	
	$("#id_prov2").change(function(){	
		var id_prov2 = $("#id_prov2").val();
		$.ajax({
			url: "<?php echo base_url('data/kabupaten');?>",
			type     : 'POST',
			dataType : 'html',
			data: 'id_prov='+id_prov2,
			cache: false,
			success: function(response){
				$("#id_kab2").html(response);
			}
		});
	});	
	
	$("#id_kab2").change(function(){	
		var id_kab2 = $("#id_kab2").val();
		$.ajax({
			url: "<?php echo base_url('data/sekolah');?>",
			type     : 'POST',
			dataType : 'html',
			data: 'id_kab='+id_kab2,
			cache: false,
			success: function(response){
				$("#id_sekolah").html(response);
			}
		});
	});
	
	$("#jenisprogram").change(function(){	
		var jenisprogram = $("#jenisprogram").val();
		$.ajax({
			url: "<?php echo base_url('data/program');?>",
			type     : 'POST',
			dataType : 'html',
			data: 'jenis='+jenisprogram,
			cache: false,
			success: function(response){
				$("#prodi_pilihan1").html(response);
			}
		});
		$.ajax({
			url: "<?php echo base_url('data/program2');?>",
			type     : 'POST',
			dataType : 'html',
			data: 'jenis='+jenisprogram,
			cache: false,
			success: function(response){
				$("#prodi_pilihan2").html(response);
			}
		});
	});	
});	
</script>