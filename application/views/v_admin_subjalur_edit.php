  <div class="content-wrapper" >
    <section class="content-header">
      <h1>
        Ubah Sub Jalur
      </h1>
      <ol class="breadcrumb">
        <li><a href="#">Sub Jalur</a></li>
        <li class="active">Ubah Sub Jalur</li>
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
				  <?php echo form_open_multipart("admin/subjalur_aksi_ubah"); ?>
				  <input type="hidden" name="id_subjalur" value="<?php echo $tbl_subjalur->id_subjalur;?>">
					 <div class="col-md-6">						
						<div class="form-group">
							<label> Jalur</label>
							<select name="jalur" class="form-control select2" required>
								<option value="<?php echo $tbl_subjalur->jalur;?>"><?php echo $tbl_subjalur->jalur;?></option>
								<option value="Reguler">Reguler</option>
								<option value="Non Reguler">Non Reguler</option>
								<option value="Online">Online</option>
							</select>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>	Sub Jalur</label>
							<input type="text" name="subjalur" placeholder="Sub Jalur" class="form-control" required value="<?php echo $tbl_subjalur->subjalur;?>">
						</div>
					</div>	
					<div class="col-md-6">
						<div class="form-group">
							<label>	Keterangan</label>
							<input type="text" name="keterangan" placeholder="Keterangan" class="form-control" value="<?php echo $tbl_subjalur->keterangan;?>">
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
	$.getJSON("<?php echo base_url('data/kabupaten_all');?>", function(data) {
		$.each(data, function(key, value) {
			$('#id_kab').append('<option value="' + value.id_kab + '">' + value.nama + '</option>');
		});
	});
});	
</script>