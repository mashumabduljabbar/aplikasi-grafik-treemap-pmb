  <div class="content-wrapper ">
    <section class="content-header">
      <h3>
        Sekolah
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
							<a class="btn-sm btn-primary" href="<?php echo base_url("admin/sekolah_tambah");?>"><i class="fa fa-plus"></i> <span>Tambah Sekolah</span></a>
						</label>
					</h3>
				</div>
				<div class="box-body">
				<table id="datatable" class="table table-bordered table-striped display nowrap" cellspacing="0" width="100%">
					<thead>
					<tr>
						<th>Nama<i style="color:white">_</i>Sekolah</th>
						<th>Alamat<i style="color:white">_</i>Sekolah</th>
						<th>Kota<i style="color:white">_</i>Sekolah</th>
						<th>Jenis<i style="color:white">_</i>Sekolah</th>
						<th>Telepon</th>
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
			"ajax": "<?php echo base_url('admin/get_data_master_sekolah/');?>" ,
			"autoWidth": true,
			"paging": true,
			"info": true,
			"scrollX": true,
			'order': [[2, 'asc'], [0, 'asc']],
			"columns": [
				{ "data": "nama_sekolah" },
				{ "data": "alamat_sekolah" },
				{ "data": "kota_sekolah" },
				{ "data": "jenis_sekolah" },
				{ "data": "telp" },
			],
			columnDefs: [{
				   targets: [5],
				    data: 'id_sekolah',
				   render: function ( data, type, row, meta ) {                   
					return "<a href='<?php echo base_url();?>admin/sekolah_ubah/"+data+"' title='Ubah'> <button type='button' class='btn btn-xs btn-warning'><i class='fa fa-pencil'></i> </button></a> <a onclick=\"return confirm('Yakin untuk menghapus sekolah ini ?')\" href='<?php echo base_url();?>admin/sekolah_aksi_hapus/"+data+"' title='Hapus'> <button type='button' class='btn btn-xs btn-danger'><i class='fa fa-trash'></i> </button></a>";
				   }
				},],
		});
		
setInterval( function () {
    myTable.ajax.reload();
}, 10000 );
</script>