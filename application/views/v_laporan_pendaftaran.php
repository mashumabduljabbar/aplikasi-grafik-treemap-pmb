
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
<label><h4 style="text-align:center;">Laporan Pendaftaran</h4></label>
<label><h5>Tanggal Cetak : <?php echo $tanggalcetak;?></h5><label/>
<br>
	<table border="1" class="laporan">
		<tr>
			<th>No<i style="color:white">_</i>Pendaftar</th>
			<th>Tahun<i style="color:white">_</i>Registrasi</th>
			<th>Nama<i style="color:white">_</i>Lengkap</th>
			<th>JK</th>
			<th>No<i style="color:white">_</i>Telepon</th>
			<th>E<i style="color:white">_</i>Mail</th>
			<th>Kota<i style="color:white">_</i>Lahir</th>
			<th>Tanggal<i style="color:white">_</i>Lahir</th>
			<th>Alamat<i style="color:white">_</i>Rumah</th>
			<th>Jenjang<i style="color:white">_</i>Pendidikan</th>
			<th>Asal<i style="color:white">_</i>Sekolah</th>
			<th>Asal<i style="color:white">_</i>Jurusan</th>
			<th>Tahun<i style="color:white">_</i>Lulus</th>
			<th>Jalur<i style="color:white">_</i>Pendaftaran</th>
			<th>Prodi<i style="color:white">_</i>Pilihan<i style="color:white">_</i>1</th>
			<th>Prodi<i style="color:white">_</i>Pilihan<i style="color:white">_</i>2</th>
			<th>Prodi<i style="color:white">_</i>Lulus</th>
			<th>Status</th>
		</tr>
		<?php foreach($tbl_pendaftar as $pendaftar){ 
			echo "<tr>";
				echo "<td>$pendaftar->no_pendaftar</td>";
				echo "<td>$pendaftar->tahun_regis</td>";
				echo "<td>$pendaftar->nama_lengkap</td>";
				echo "<td>$pendaftar->jenis_kelamin</td>";
				echo "<td>$pendaftar->no_telepon</td>";
				echo "<td>$pendaftar->email</td>";
				echo "<td>$pendaftar->kota_lahir</td>";
				echo "<td>$pendaftar->tanggal_lahir</td>";
				echo "<td>$pendaftar->alamat_rumah</td>";
				echo "<td>$pendaftar->jenjang_pendidikan</td>";
				echo "<td>$pendaftar->sekolah</td>";
				echo "<td>$pendaftar->asal_jurusan</td>";
				echo "<td>$pendaftar->tahun_lulus</td>";
				echo "<td>$pendaftar->subjalur</td>";
				echo "<td>$pendaftar->prodi_pilihan1</td>";
				echo "<td>$pendaftar->prodi_pilihan2</td>";
				echo "<td>$pendaftar->prodi_lulus</td>";
				echo "<td>$pendaftar->status_kelulusan";
			echo "</tr>";
		} ?>
	</table>