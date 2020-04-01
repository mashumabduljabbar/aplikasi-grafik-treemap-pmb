  <div class="content-wrapper ">
    <section class="content-header">
      <h3>
        Pendaftar
      </h3>
    </section>
    <!-- Main content -->
    <section class="content" >
      <div class="row">
		<div class="col-xs-12">
			<div class="box">
				<!-- /.box-header -->
				<div class="box-header">
					<h3 class="box-title">
						<label>
							<a class="btn-sm btn-primary" href="<?php echo base_url("admin/pendaftar_tambah");?>"><i class="fa fa-plus"></i> <span>Tambah Pendaftar</span></a>
						</label>
					</h3>
				</div>
				<div class="box-body">
				<table id="datatable" class="table table-bordered table-striped display nowrap" cellspacing="0" width="100%">
					<thead>
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
						<th><i style="color:white">_</i>Action<i style="color:white">_</i></th>
					</tr>
					</thead>
					<tbody>
					</tbody>
				  </table>
				</div>
				<!-- /.box-body -->
			  </div>
		</div>
      </div>
    </section>
  </div>
<script src="<?php echo base_url(); ?>assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/plugins/datatables/dataTables.responsive.min.js"></script>
<script>
var myTable =  $('#datatable').DataTable({
			"bProcessing": true,
			"pagingType": "simple",
			"bLengthChange": false,
			"bInfo" : true,
			"dataSrc" : "",
			"ajax": "<?php echo base_url('admin/get_data_master_pendaftar/');?>" ,
			"autoWidth": true,
			"paging": true,
			"info": true,
			"scrollX": true,
			'order': [[0, 'desc']],
			"columns": [
				{ "data": "no_pendaftar" },
				{ "data": "tahun_regis" },
				{ "data": "nama_lengkap" },
				{ "data": "jenis_kelamin" },
				{ "data": "no_telepon" },
				{ "data": "email" },
				{ "data": "kota_lahir" },
				{ "data": "tanggal_lahir" },
				{ "data": "alamat_rumah" },
				{ "data": "jenjang_pendidikan" },
				{ "data": "sekolah" },
				{ "data": "asal_jurusan" },
				{ "data": "tahun_lulus" },
				{ "data": "subjalur" },
				{ "data": "prodi_pilihan1" },
				{ "data": "prodi_pilihan2" },
				{ "data": "prodi_lulus" },
				{ "data": "status_kelulusan" },
			],
			columnDefs: [{
				   targets: [18],
				    data: 'id_pendaftar',
				   render: function ( data, type, row, meta ) {                   
					return "<a href='<?php echo base_url();?>admin/pendaftar_ubah/"+data+"' title='Ubah'> <button type='button' class='btn btn-xs btn-warning'><i class='fa fa-pencil'></i> </button></a> <a onclick=\"return confirm('Yakin untuk menghapus pendaftar ini ?')\" href='<?php echo base_url();?>admin/pendaftar_aksi_hapus/"+data+"' title='Hapus'> <button type='button' class='btn btn-xs btn-danger'><i class='fa fa-trash'></i> </button></a>";
				   }
				},],
		});
		
setInterval( function () {
    myTable.ajax.reload();
}, 10000 );
</script>