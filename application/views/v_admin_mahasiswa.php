  <div class="content-wrapper ">
    <section class="content-header">
      <h3>
        Mahasiswa
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
							<a class="btn-sm btn-primary" href="<?php echo base_url("admin/mahasiswa_tambah");?>"><i class="fa fa-plus"></i> <span>Tambah Mahasiswa</span></a>
						</label>
					</h3>
				</div>
				<div class="box-body">
				<table id="datatable" class="table table-bordered table-striped display nowrap" cellspacing="0" width="100%">
					<thead>
					<tr>
						<th>Nomor<i style="color:white">_</i>Induk<i style="color:white">_</i>Mahasiswa</th>
						<th>Tahun<i style="color:white">_</i>Masuk</th>
						<th>Nama<i style="color:white">_</i>Lengkap</th>
						<th>No<i style="color:white">_</i>Telepon</th>
						<th>E<i style="color:white">_</i>Mail</th>
						<th>Alamat<i style="color:white">_</i>Rumah</th>
						<th>Program<i style="color:white">_</i>Studi</th>
						<th>Semester</th>
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
			"ajax": "<?php echo base_url('admin/get_data_master_mahasiswa/');?>" ,
			"autoWidth": true,
			"paging": true,
			"info": true,
			"scrollX": true,
			'order': [[0, 'desc']],
			"columns": [
				{ "data": "no_mahasiswa" },
				{ "data": "tahun_regis" },
				{ "data": "nama_lengkap" },
				{ "data": "no_telepon" },
				{ "data": "email" },
				{ "data": "alamat_rumah" },
				{ "data": "prodi_lulus" },
				{ "data": "semester" },
			],
			columnDefs: [{
				   targets: [8],
				    data: 'id_mahasiswa',
				   render: function ( data, type, row, meta ) {                   
					return "<a href='<?php echo base_url();?>admin/mahasiswa_ubah/"+data+"' title='Ubah'> <button type='button' class='btn btn-xs btn-warning'><i class='fa fa-pencil'></i> </button></a> <a onclick=\"return confirm('Yakin untuk menghapus mahasiswa ini ?')\" href='<?php echo base_url();?>admin/mahasiswa_aksi_hapus/"+data+"' title='Hapus'> <button type='button' class='btn btn-xs btn-danger'><i class='fa fa-trash'></i> </button></a>";
				   }
				},],
		});
		
setInterval( function () {
    myTable.ajax.reload();
}, 10000 );
</script>