<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treemaps/easeljs-0.8.1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treemaps/tweenjs-0.6.1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treemaps/DrasticTreemap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {		
	var url = "<?php echo base_url(); ?>data/grafik_tahun/";	
	$("#divTahunMasuk").show();
	$("#divJalurPenerimaan").hide();
	$("#divJurusanDipilih1").hide();
	$("#divJurusanDipilih2").hide();
	$("#divJalurNamaSekolahPendaftar1").hide();
	$("#divJalurNamaSekolahPendaftar2").hide();
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
		$("#divJurusanDipilih1").hide();
		$("#divJurusanDipilih2").hide();
		$("#divJalurNamaSekolahPendaftar1").hide();
		$("#divJalurNamaSekolahPendaftar2").hide();
		var url = "<?php echo base_url(); ?>data/grafik_subjalur/"+tahun;

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
		$("#divJurusanDipilih1").show();
		$("#divJurusanDipilih2").show();
		$("#divJalurNamaSekolahPendaftar1").hide();
		$("#divJalurNamaSekolahPendaftar2").hide();
		
		var url1 = "<?php echo base_url(); ?>data/grafik_prodi1/"+tahun+"/"+jalur;

		var config1 = {
			"onClick": displayNamaSekolahPendaftar1,
			"container": "containerJurusanDipilih1",
			"sizeColumn": "Jumlah",
			"labelColumn": "Prodi",
			"colorColumn": "Jumlah",
			"labelFormat": [{"level": 0, "visType": "treemap", "font": "bold 10px Arial", "color": "#363636"}],
			"speed": 1.0
		};
		
		$.getJSON(url1, 
			function(data) {
				var treemap3 = new DrasticTreemap(data, config1);
			}
		);
		
		var url2 = "<?php echo base_url(); ?>data/grafik_prodi2/"+tahun+"/"+jalur;

		var config2 = {
			"onClick": displayNamaSekolahPendaftar2,
			"container": "containerJurusanDipilih2",
			"sizeColumn": "Jumlah",
			"labelColumn": "Prodi",
			"colorColumn": "Jumlah",
			"labelFormat": [{"level": 0, "visType": "treemap", "font": "bold 10px Arial", "color": "#363636"}],
			"speed": 1.0
		};
		
		$.getJSON(url2, 
			function(data) {
				var treemap4 = new DrasticTreemap(data, config2);
			}
		);
	}
	
	function displayNamaSekolahPendaftar1(f) {
		var prodie = f['Prodi'];
		var prodi = prodie.replace(" ","%20")
		document.getElementById("prodi").value = prodi;
		
		var tahun = document.getElementById("tahun").value;
		var jalur = document.getElementById("jalur").value;
		
		$("#divTahunMasuk").hide();
		$("#divJalurPenerimaan").hide();
		$("#divJurusanDipilih1").hide();
		$("#divJurusanDipilih2").hide();
		$("#divJalurNamaSekolahPendaftar1").show();
		$("#divJalurNamaSekolahPendaftar2").hide();
		var url = "<?php echo base_url(); ?>data/grafik_sekolah1/"+tahun+"/"+jalur+"/"+prodi;

		var config = {
			"container": "containerNamaSekolahPendaftar1",
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
	
	function displayNamaSekolahPendaftar2(g) {
		var prodie = g['Prodi'];
		var prodi = prodie.replace(" ","%20")
		document.getElementById("prodi").value = prodi;
		
		var tahun = document.getElementById("tahun").value;
		var jalur = document.getElementById("jalur").value;
		
		$("#divTahunMasuk").hide();
		$("#divJalurPenerimaan").hide();
		$("#divJurusanDipilih1").hide();
		$("#divJurusanDipilih2").hide();
		$("#divJalurNamaSekolahPendaftar1").hide();
		$("#divJalurNamaSekolahPendaftar2").show();
		var url = "<?php echo base_url(); ?>data/grafik_sekolah2/"+tahun+"/"+jalur+"/"+prodi;

		var config = {
			"container": "containerNamaSekolahPendaftar2",
			"sizeColumn": "Jumlah",
			"labelColumn": "Sekolah",
			"colorColumn": "Jumlah",
			"labelFormat": [{"level": 0, "visType": "treemap", "font": "bold 10px Arial", "color": "#363636"}],
			"speed": 1.0
		};
		
		$.getJSON(url, 
			function(data) {
				var treemap6 = new DrasticTreemap(data, config);
			}
		);
	}
});	
</script>
  <div class="content-wrapper ">
    <section class="content-header">
      <h3>
        Visualisasi Pendaftar <input type="hidden" id="tahun"> <input type="hidden" id="jalur"><input type="hidden" id="prodi">
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
					<div id="divJurusanDipilih1" style="display:none;">
						<p>Prodi Pilihan Ke-1</p>
						<div id="containerJurusanDipilih1" style="position:relative;width:80%;height:300px;" ></div>
					</div>
					<div id="divJurusanDipilih2" style="display:none;">
						<p>Prodi Pilihan Ke-2</p>
						<div id="containerJurusanDipilih2" style="position:relative;width:80%;height:300px;" ></div>
					</div>
					<div id="divJalurNamaSekolahPendaftar1" style="display:none;">
						<div id="containerNamaSekolahPendaftar1" style="position:relative;width:70%;height:400px;" ></div>
					</div>
					<div id="divJalurNamaSekolahPendaftar2" style="display:none;">
						<div id="containerNamaSekolahPendaftar2" style="position:relative;width:70%;height:400px;" ></div>
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