<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treemaps/easeljs-0.8.1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treemaps/tweenjs-0.6.1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treemaps/chromath.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treemaps/DrasticTreemap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
	var tahun = "<?php echo $this->uri->segment(3);?>";
	var url = "http://localhost/github/treemap/data/grafik_tahun/"+tahun;
	
	var config = {
		"container": "container",
		"sizeColumn": "Jumlah Data",
		"labelColumn": "Tahun masuk",
		"colorColumn": "Jumlah Data",
		"labelFormat": [{"level": 0, "visType": "treemap", "font": "bold 16px Arial", "color": "#363636"}],
		"speed": 1.0
	};
	
	window.onload=function() {
		$.getJSON(url, 
			function(data) {
				console.log(data);
				window.treemap = new DrasticTreemap(data, config);
			}
		);
	};
</script>
  <div class="content-wrapper ">
    <section class="content-header">
      <h3>
        Visualisasi Pendaftaran
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
						<select id="tahun" class="form-control select2" onchange="location = '<?php echo base_url($this->uri->segment(1));?>/visualisasi/'+this.value;">
							<?php 
							$url = $this->uri->segment(3);
							if($url==""){
								echo "<option value=''>Pilih Tahun Masuk</option>";
							}else{
								echo "<option value='$url'>$url</option>";
							}?>
							<option value="Semua">Semua</option>						  
						</select>
					</div>
					<div id="container" style="position:relative;width:600px;height:400px;" ></div>
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
	});
});	
</script>