  <div class="content-wrapper" >
    <section class="content-header">
      <h1>
        Tambah Sub Jalur
      </h1>
      <ol class="breadcrumb">
        <li><a href="#">Sub Jalur</a></li>
        <li class="active">Tambah Sub Jalur</li>
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
				  <?php echo form_open_multipart("admin/subjalur_aksi_tambah"); ?>
					<div class="col-md-6">						
						<div class="form-group">
							<label> Jalur</label>
							<select name="jalur" class="form-control select2" required>
								<option value="">Pilih Jalur</option>
								<option value="Reguler">Reguler</option>
								<option value="Non Reguler">Non Reguler</option>
								<option value="Online">Online</option>
							</select>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>	Sub Jalur</label>
							<input type="text" name="subjalur" placeholder="Sub Jalur" class="form-control" required>
						</div>
					</div>	
					<div class="col-md-6">
						<div class="form-group">
							<label>	Keterangan</label>
							<input type="text" name="keterangan" placeholder="Keterangan" class="form-control">
						</div>
					</div>
					<div class="col-md-3">
					  <div class="form-group">
						<label>	&nbsp; </label>
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