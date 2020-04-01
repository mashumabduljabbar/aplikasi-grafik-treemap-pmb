  <div class="content-wrapper" >
    <section class="content-header">
      <h1>
        Ubah Program Studi
      </h1>
      <ol class="breadcrumb">
        <li><a href="#">Program Studi</a></li>
        <li class="active">Ubah Program Studi</li>
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
				  <?php echo form_open_multipart("admin/prodi_aksi_ubah"); ?>
				  <input type="hidden" name="id_prodi" value="<?php echo $tbl_prodi->id_prodi;?>">
					 <div class="col-md-6">
						<div class="form-group">
							<label>	Nama Prodi</label>
							<input type="text" name="nama_prodi" placeholder="Nama Prodi" class="form-control" required value="<?php echo $tbl_prodi->nama_prodi;?>">
						</div>
					</div>	
					<div class="col-md-6">
						<div class="form-group">
							<label>	Nama Fakultas</label>
							<input type="text" name="nama_fakultas" placeholder="Nama Fakultas" class="form-control" required value="<?php echo $tbl_prodi->nama_fakultas;?>">
						</div>
					</div>	
					<div class="col-md-6">						
						<div class="form-group">
							<label> Jenjang</label>
							<select name="jenjang" class="form-control select2" required>
								<option value="<?php echo $tbl_prodi->jenjang;?>"><?php echo $tbl_prodi->jenjang;?></option>
								<option value="S1">S1</option>
								<option value="S2">S2</option>
							</select>
						</div>
					</div>
					<div class="col-md-6">						
						<div class="form-group">
							<label> Jenis</label>
							<select name="jenis" class="form-control select2" required>
								<option value="<?php echo $tbl_prodi->jenis;?>"><?php echo $tbl_prodi->jenis;?></option>
								<option value="IPA">IPA</option>
								<option value="IPS">IPS</option>
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
	$.getJSON("<?php echo base_url('data/pendaftar_lulus');?>", function(data) {
				$.each(data, function(key, value) {
					$('#no_pendaftar').append('<option value="' + value.no_pendaftar + '">' + value.no_pendaftar + ' ' + value.nama_lengkap + '</option>');
				});
	});
});	
</script>