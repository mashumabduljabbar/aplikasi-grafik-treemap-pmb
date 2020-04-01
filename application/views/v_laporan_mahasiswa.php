
<style>
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
<label><h4 style="text-align:center;">Laporan Mahasiswa</h4></label>
<label><h5>Tanggal Cetak : <?php echo $tanggalcetak;?></h5><label/>
<br>
	<table border="1" class="laporan">
		<tr>
			<th>Nomor<i style="color:white">_</i>Induk<i style="color:white">_</i>Mahasiswa</th>
			<th>Tahun<i style="color:white">_</i>Masuk</th>
			<th>Nama<i style="color:white">_</i>Lengkap</th>
			<th>No<i style="color:white">_</i>Telepon</th>
			<th>E<i style="color:white">_</i>Mail</th>
			<th>Alamat<i style="color:white">_</i>Rumah</th>
			<th>Program<i style="color:white">_</i>Studi</th>
			<th>Semester</th>
		</tr>
		<?php foreach($tbl_pendaftar as $pendaftar){ 
			echo "<tr>";
				echo "<td>$pendaftar->no_mahasiswa</td>";
				echo "<td>$pendaftar->tahun_regis</td>";
				echo "<td>$pendaftar->nama_lengkap</td>";
				echo "<td>$pendaftar->no_telepon</td>";
				echo "<td>$pendaftar->email</td>";
				echo "<td>$pendaftar->alamat_rumah</td>";
				echo "<td>$pendaftar->prodi_lulus</td>";
				echo "<td>$pendaftar->semester";
			echo "</tr>";
		} ?>
	</table>