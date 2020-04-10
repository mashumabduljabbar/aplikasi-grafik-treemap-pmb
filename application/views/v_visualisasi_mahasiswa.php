<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treemaps/easeljs-0.8.1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treemaps/tweenjs-0.6.1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treemaps/DrasticTreemap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {		
	var url = "<?php echo base_url(); ?>data/grafik_tahun_mahasiswa/";	
	$("#divTahunMasuk").show();
	$("#divJalurPenerimaan").hide();
	$("#divJurusanDipilih").hide();
	$("#divJalurNamaSekolahPendaftar").hide();
	var config = {
		"onClick": displayJalurPenerimaan,
		"container": "containerTahunMasuk",
		"sizeColumn": "Jumlah",
		"labelColumn": "Tahun",
		"colorColumn": "Jumlah",
		"labelFormat": [{"level": 0, "visType": "treemap", "font": "bold 16px Arial", "color": "#363636"}],
		"speed": 1.0
	};
	
	$.getJSON(url, 
		function(data) {
			var treemap1 = new DrasticTreemap(data, config);
		}
	);
	
	function displayJalurPenerimaan(d) {
		var tahun = d['Tahun'];
		document.getElementById("tahun").value = tahun;
		
		$("#divTahunMasuk").hide();
		$("#divJalurPenerimaan").show();
		$("#divJurusanDipilih").hide();
		$("#divJalurNamaSekolahPendaftar").hide();
		var url = "<?php echo base_url(); ?>data/grafik_subjalur_mahasiswa/"+tahun;

		var config = {
			"onClick": displayJurusanDipilih,
			"container": "containerJalurPenerimaan",
			"sizeColumn": "Jumlah",
			"labelColumn": "Jalur",
			"colorColumn": "Jumlah",
			"labelFormat": [{"level": 0, "visType": "treemap", "font": "bold 10px Arial", "color": "#363636"}],
			"speed": 1.0
		};
		
		$.getJSON(url, 
			function(data) {
				var treemap2 = new DrasticTreemap(data, config);
			}
		);
	}
	
	function displayJurusanDipilih(e) {
		var jalure = e['Jalur'];
		var jalur = jalure.replace(" ","%20")
		document.getElementById("jalur").value = jalur;
		
		var tahun = document.getElementById("tahun").value;
		
		$("#divTahunMasuk").hide();
		$("#divJalurPenerimaan").hide();
		$("#divJurusanDipilih").show();
		$("#divJalurNamaSekolahPendaftar").hide();
		
		var url = "<?php echo base_url(); ?>data/grafik_prodi_mahasiswa/"+tahun+"/"+jalur;

		var config = {
			"onClick": displayNamaSekolahPendaftar,
			"container": "containerJurusanDipilih",
			"sizeColumn": "Jumlah",
			"labelColumn": "Prodi",
			"colorColumn": "Jumlah",
			"labelFormat": [{"level": 0, "visType": "treemap", "font": "bold 10px Arial", "color": "#363636"}],
			"speed": 1.0
		};
		
		$.getJSON(url, 
			function(data) {
				var treemap3 = new DrasticTreemap(data, config);
			}
		);
	}
	
	function displayNamaSekolahPendaftar(f) {
		var prodie = f['Prodi'];
		var prodi = prodie.replace(" ","%20")
		document.getElementById("prodi").value = prodi;
		
		var tahun = document.getElementById("tahun").value;
		var jalur = document.getElementById("jalur").value;
		
		$("#divTahunMasuk").hide();
		$("#divJalurPenerimaan").hide();
		$("#divJurusanDipilih").hide();
		$("#divJalurNamaSekolahPendaftar").show();
		var url = "<?php echo base_url(); ?>data/grafik_sekolah_mahasiswa/"+tahun+"/"+jalur+"/"+prodi;

		var config = {
			"container": "containerNamaSekolahPendaftar",
			"sizeColumn": "Jumlah",
			"labelColumn": "Sekolah",
			"colorColumn": "Jumlah",
			"labelFormat": [{"level": 0, "visType": "treemap", "font": "bold 10px Arial", "color": "#363636"}],
			"speed": 1.0
		};
		
		$.getJSON(url, 
			function(data) {
				var treemap5 = new DrasticTreemap(data, config);
			}
		);
	}
	
});	
</script>
  <div class="content-wrapper ">
    <section class="content-header">
      <h3>
        Visualisasi Mahasiswa <input type="hidden" id="tahun"> <input type="hidden" id="jalur"><input type="hidden" id="prodi">
      </h3>
    </section>
    <!-- Main content -->
    <section class="content" >
      <div class="row">
		<div class="col-xs-12">
			<div class="box">
				<!-- /.box-header -->
				<div class="box-body">
					<!--
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
					-->
					<div id="divTahunMasuk" style="display:none;">
						<div id="containerTahunMasuk" style="position:relative;width:70%;height:400px;" ></div>
					</div>
					<div id="divJalurPenerimaan" style="display:none;">
						<div id="containerJalurPenerimaan" style="position:relative;width:70%;height:400px;" ></div>
					</div>
					<div id="divJurusanDipilih" style="display:none;">
						<div id="containerJurusanDipilih" style="position:relative;width:70%;height:400px;" ></div>
					</div>
					<div id="divJalurNamaSekolahPendaftar" style="display:none;">
						<div id="containerNamaSekolahPendaftar" style="position:relative;width:70%;height:400px;" ></div>
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
	});
});	
</script>