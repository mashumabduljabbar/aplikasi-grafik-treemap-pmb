  <div class="content-wrapper ">
    <section class="content-header">
      <h3>
        Laporan
      </h3>
    </section>
    <!-- Main content -->
    <section class="content" >
      <div class="row">
		<div class="col-xs-12">
			<div class="box">
				<!-- /.box-header -->
				<div class="box-body">
					<div class="form-group">
						<table class="table table-bordered table-striped display nowrap" cellspacing="0" width="100%">
							<tr>
								<th> Nama Laporan </th>
								<th> Action </th>
							</tr>
							<tr>
								<td> Laporan Pendaftaran </td>
								<td> 
								<form method="post" action="<?php echo base_url(); ?>laporan/pendaftaran" id="pendaftaran">
									<div class="form-group col-md-4">
										<select name="tahun" id="tahun" class="form-control select2" width="100%">
											<option value=''>Pilih Tahun Masuk</option>
											<option value="Semua">Semua</option>						  
										</select>
									</div>
									<div class="form-group col-md-3">
										<button class="btn btn-success" form="pendaftaran"> Cetak </button>
									</div>
								</form>
								</td>
							</tr>
							<tr>
								<td> Laporan Mahasiswa </td>
								<td> 
								<form method="post" action="<?php echo base_url(); ?>laporan/mahasiswa" id="mahasiswa">
									<div class="form-group col-md-4">
										<select name="tahun" id="tahun2" class="form-control select2" width="100%">
											<option value=''>Pilih Tahun Masuk</option>
											<option value="Semua">Semua</option>					  
										</select>
									</div>
									<div class="form-group col-md-3">
										<button class="btn btn-success" form="mahasiswa"> Cetak </button>
									</div>
								</form>
								</td>
							</tr>
							<tr>
								<td> Laporan Visualisasi Pendaftaran </td>
								<td> 
								<form method="post" action="<?php echo base_url(); ?>laporan/visualisasi" id="visualisasi" target="_blank">
									<div class="form-group col-md-4">
										<select name="tahun" id="tahun1" class="form-control select2" width="100%">
											<option value=''>Pilih Tahun Masuk</option>
											<option value="Semua">Semua</option>							  
										</select>
									</div>
									<div class="form-group col-md-3">
										<button class="btn btn-success" form="visualisasi"> Cetak </button>
									</div>
								</form>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- /.box-body -->
			  </div>
		</div>
      </div>
    </section>
  </div>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
<script>  
$(document).ready(function() {	
	$.getJSON("<?php echo base_url('data/grafik_tahun_masuk');?>", function(data) {
				$.each(data, function(key, value) {
					$('#tahun').append('<option value="' + value.tahun + '">' + value.tahun + '</option>');
				});
				
				$.each(data, function(key, value) {
					$('#tahun1').append('<option value="' + value.tahun + '">' + value.tahun + '</option>');
				});
	});	
	$.getJSON("<?php echo base_url('data/grafik_tahun_masuk_mahasiswa');?>", function(data) {
				$.each(data, function(key, value) {
					$('#tahun2').append('<option value="' + value.tahun + '">' + value.tahun + '</option>');
				});
	});
});	
</script>