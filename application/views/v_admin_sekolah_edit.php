  <div class="content-wrapper" >
    <section class="content-header">
      <h1>
        Ubah Sekolah
      </h1>
      <ol class="breadcrumb">
        <li><a href="#">Sekolah</a></li>
        <li class="active">Ubah Sekolah</li>
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
				  <?php echo form_open_multipart("admin/sekolah_aksi_ubah"); ?>
				  <input type="hidden" name="id_sekolah" value="<?php echo $tbl_sekolah->id_sekolah;?>">
					 <div class="col-md-6">
						<div class="form-group">
							<label>	Nama Sekolah</label>
							<input type="text" name="nama_sekolah" placeholder="Nama Sekolah" class="form-control" required value="<?php echo $tbl_sekolah->nama_sekolah;?>">
						</div>
					</div>
					<div class="col-md-6">						
						<div class="form-group">
							<label> Jenis Sekolah</label>
							<select name="jenis_sekolah" class="form-control select2" required>
								<option value="<?php echo $tbl_sekolah->jenis_sekolah;?>"><?php echo $tbl_sekolah->jenis_sekolah;?></option>
								<option value="Swasta">Swasta</option>
								<option value="Negeri">Negeri</option>
							</select>
						</div>
					</div>	
					<div class="col-md-6">
						<div class="form-group">
							<label>	Alamat Sekolah</label>
							<input type="text" name="alamat_sekolah" placeholder="Alamat Sekolah" class="form-control" value="<?php echo $tbl_sekolah->alamat_sekolah;?>">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>	Telepon</label>
							<div class="form-group">
								<input type="text" name="telp" placeholder="Telepon" class="form-control" value="<?php echo $tbl_sekolah->telp;?>">
							</div>
						</div>
					</div>
					<div class="col-md-6">						
						<div class="form-group">
							<label>Kota Sekolah</label>
							<select id="id_kab" name="kota_sekolah" class="form-control select2" required>
								<option value="<?php echo $tbl_sekolah->kota_sekolah;?>">
								<?php 
								$kota_sekolah = $this->db->query("select nama from tbl_kabupaten where id_kab='$tbl_sekolah->kota_sekolah'")->row();
								echo $kota_sekolah->nama;?>
								</option>
							</select>
						</div>		
					</div>
					<div class="col-md-3">
					  <div class="form-group"> 
						<label>&nbsp;</label>
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
	$.getJSON("<?php echo base_url('data/kabupaten_all');?>", function(data) {
		$.each(data, function(key, value) {
			$('#id_kab').append('<option value="' + value.id_kab + '">' + value.nama + '</option>');
		});
	});
});	
</script>