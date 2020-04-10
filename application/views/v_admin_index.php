<!-- Morris charts -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/morris/morris.js/morris.css">
  <div class="content-wrapper ">
    <section class="content-header">
      <h1>
        Dashboard
      </h1>
    </section>

    <!-- Main content -->
    <section class="content" >
      <div class="row">
		<div class="col-xs-12">
			<div class="box">
				<!-- /.box-header -->
				<div class="box-body">
					<h3>Selamat Datang di Rancang Bangun Visualisasi 2D Untuk Monitoring Data Penerimaan Mahasiswa Baru Menggunakan Metode Treemap
Studi Kasus Universitas Lancang Kuning</h3>
					<br>
					<div class="box box-info">
					<div class="box-header with-border">
					  <h3 class="box-title">Line Chart</h3>
					  <div class="box-tools pull-right">
					  </div>
					</div>
					<div class="box-body chart-responsive">
					  <div class="chart" id="line-chart" style="height: 300px;"></div>
					</div>
					<!-- /.box-body -->
				  </div>
				</div>
				<!-- /.box-body -->
		</div>
		</div>
      </div>
    </section>
  </div>
<!-- jQuery 3 -->
<script src="<?php echo base_url(); ?>assets/dist/morris/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url(); ?>assets/dist/morris/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="<?php echo base_url(); ?>assets/dist/morris/raphael/raphael.min.js"></script>
<script src="<?php echo base_url(); ?>assets/dist/morris/morris.js/morris.min.js"></script>
<script>
	$.ajax({
        type: 'GET',
        url: "<?php echo base_url('data/grafik_maba'); ?>",
        dataType: "json",
        async: true,
        contentType: "application/json; charset=utf-8",
        success: function (json) {
           var line = Morris.Line({
                element: 'line-chart',
                data: json.maba,
                xkey: 'Tahun',
                ykeys: ['Jumlah'],
                labels: ['Jumlah'],
                lineColors: ['#3c8dbc'],
                hideHover: 'auto'
            });
        }
    });
</script>	
