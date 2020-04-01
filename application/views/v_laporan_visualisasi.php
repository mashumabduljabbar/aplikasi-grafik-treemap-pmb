<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treemaps/easeljs-0.8.1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treemaps/tweenjs-0.6.1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treemaps/chromath.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treemaps/DrasticTreemap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
	var tahun = "<?php echo $tahun;?>";
	var url = "http://localhost/github/treemap/data/grafik_tahun/"+tahun;
	
	var config = {
		"container": "container",
		"sizeColumn": "Jumlah Data",
		"labelColumn": "Tahun masuk",
		"colorColumn": "Jumlah Data",
		"labelFormat": [{"level": 0, "visType": "treemap", "font": "bold 16px Arial", "color": "#363636"}],
		"speed": 1.0
	};
	
	$.getJSON(url, 
			function(data) {
				console.log(data);
				window.treemap = new DrasticTreemap(data, config);
			}
	);
	
</script>
<style type="text/css">
    body {
        width: 100%;
        height: 100%;
        margin: 0;
        padding: 0;
        font-family: arial;
    }
    * {
        box-sizing: border-box;
        -moz-box-sizing: border-box;
    }
    .page {
        width: 210mm;
        min-height: 297mm;
        padding: 20mm;
        margin: 10mm auto;
        border: 1px #D3D3D3 solid;
        border-radius: 5px;
        background: white;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
    }
    
    @page {
        size: A4;
        margin: 10mm auto;
    }
    @media print {
        html, body {
            width: 210mm;
            height: 297mm;        
        }
        .page {
            margin: auto;
            border: initial;
            border-radius: initial;
            width: initial;
            min-height: initial;
            box-shadow: initial;
            background: initial;
            page-break-after: always;
        }
		
		table { page-break-inside:auto }
		tr    { page-break-inside:avoid; page-break-after:auto }
		thead { display:table-header-group }
		tfoot { display:table-footer-group }

    }


.laporan{
	width: 100%;
	border: 1px solid black;
	border-collapse: collapse;
}

th,td
{
    font-family: arial;
    font-size: 7pt;
	padding: 10px;
}
</style>
</head>
<body>	
	<div class="page">
		<table width="100%" style="border-bottom:1px solid black;">
			<tr>
				<td style="text-align:right; padding:10px;" width="15%">
					<img src="<?php echo base_url(); ?>assets/dist/img/logo.png" width="60px">
				</td>
				<td style="text-align:center;" width="85%">
					<h4 style="text-align:center; font-size:1em"><b>Rancang Bangun Visualisasi 2D Untuk Monitoring Data Penerimaan Mahasiswa Baru Menggunakan Metode Treemap <br>
					Studi Kasus Universitas Lancang Kuning</b></h4>
				</td>
			</tr>
		</table>
		<br>
		<label><h4 style="text-align:center;">Laporan Visualisasi Pendaftar</h4></label>
		<label><h5>Tanggal Cetak : <?php echo $tanggalcetak;?></h5><label/>
		<br>
			<table border="1" class="laporan">
				<thead>
					<tr>
						<th>Tahun<i style="color:white">_</i>Pendaftaran</th>
						<th>Jumlah<i style="color:white">_</i>Pendaftar</th>
					</tr>
				</thead>
				<tbody>
				<?php foreach($tbl_pendaftar as $pendaftar){ 
					echo "<tr>";
						echo "<td>$pendaftar->tahun</td>";
						echo "<td>$pendaftar->jumlah</td>";
					echo "</tr>";
				} ?>
				</tbody>
			</table>
		<br>
		<p id="container" style="position:relative;width:650px;height:400px;"></p>
	</div>
</body>
<script src="<?php echo base_url(); ?>assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript">window.print();</script>
</html>