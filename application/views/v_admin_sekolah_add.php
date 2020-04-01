  <div class="content-wrapper" >
    <section class="content-header">
      <h1>
        Tambah Sekolah
      </h1>
      <ol class="breadcrumb">
        <li><a href="#">Sekolah</a></li>
        <li class="active">Tambah Sekolah</li>
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
				  <?php echo form_open_multipart("admin/sekolah_aksi_tambah"); ?>
					<div class="col-md-6">
						<div class="form-group">
							<label>	Nama Sekolah</label>
							<input type="text" name="nama_sekolah" placeholder="Nama Sekolah" class="form-control" required>
						</div>
					</div>
					<div class="col-md-6">						
						<div class="form-group">
							<label> Jenis Sekolah</label>
							<select name="jenis_sekolah" class="form-control select2" required>
								<option value="">Pilih Jenis Sekolah</option>
								<option value="Swasta">Swasta</option>
								<option value="Negeri">Negeri</option>
							</select>
						</div>
					</div>	
					<div class="col-md-6">
						<div class="form-group">
							<label>	Alamat Sekolah</label>
							<input type="text" name="alamat_sekolah" placeholder="Alamat Sekolah" class="form-control">
						</div>
						<div class="form-group">
							<input type="text" name="telp" placeholder="Telepon" class="form-control">
						</div>
					</div>
					<div class="col-md-6">						
						<div class="form-group">
							<label>Kota Sekolah</label>
							<select id="id_prov" class="form-control select2" required>
								<option value="">Pilih Provinsi</option>						  
							<select>
						</div>
						<div class="form-group">
							<select id="id_kab" name="kota_sekolah" class="form-control select2" required>
								<option value="">Pilih Kota</option>
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
	$.getJSON("<?php echo base_url('data/provinsi');?>", function(data) {
				$.each(data, function(key, value) {
					$('#id_prov').append('<option value="' + value.id_prov + '">' + value.nama + '</option>');
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
});	
</script>