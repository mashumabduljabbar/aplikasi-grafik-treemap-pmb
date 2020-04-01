  <div class="content-wrapper" >
    <section class="content-header">
      <h1>
        Tambah User Mahasiswa
      </h1>
      <ol class="breadcrumb">
        <li><a href="#">User</a></li>
        <li class="active">Tambah User Mahasiswa</li>
      </ol>
    </section>
 <!-- Main content -->
    <section class="content" >
      <div class="row">
		<div class="col-xs-12">
			<div class="box">
				<div class="box-header">
					<h3 class="box-title">
						<span>Silahkan melengkapi form berikut</span>
					</h3>
					<?php 
					if($_POST['username_eksis']==1){
							$user_name = $_POST['user_name'];
							$nama_user = $_POST['nama_user'];
							$user_password = $_POST['user_password'];
							$level_user = "<option value='$_POST[level_user]'>$_POST[level_user]</option>";
							$mahasiswa = $this->db->query("select * from tbl_mahasiswa a left join tbl_pendaftar b on a.no_pendaftar=b.no_pendaftar where a.no_mahasiswa='$_POST[nomorinduk_user]'")->row();
							$nomorinduk_user = "<option value='$_POST[nomorinduk_user]'>$_POST[nomorinduk_user] - $mahasiswa->nama_lengkap</option>";
					?>
					<p style="color:red;"><i>Username sudah digunakan, silahkan coba yang lain.</i></p>
					<?php 
					}else{
							$user_name = "";
							$nama_user = "";
							$user_password = "";
							$level_user = "<option value=''>Pilih Level</option>";
							$nomorinduk_user = "<option value=''>Pilih Mahasiswa</option>";
					}?>
				</div>
				<div class="box-body">
				  <div class="row">
				  <?php echo form_open_multipart("admin/user_aksi_tambah"); ?>
					<div class="col-md-6">
						<div class="form-group">
							<label>	Mahasiswa</label>
							<select name="nomorinduk_user" id="nomorinduk_user" class="form-control select2" required>
								<?php echo $nomorinduk_user;?>
							</select>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>	Level</label>
							<select name="level_user" class="form-control select2" required>
								<?php echo $level_user;?>
								<option value='admin'>Admin</option>
								<option value='mahasiswa'>Mahasiswa</option>
								<option value='pimpinan'>Pimpinan</option>
							</select>
						</div>
					</div>	
					<input type="hidden" id="nama_user" name="nama_user" value="<?php echo $nama_user;?>">
					<div class="col-md-6">
						<div class="form-group">
							<label>	Username</label>
							<input type="text" class="form-control" name="user_name" placeholder="Username" value="<?php echo $user_name;?>" required>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>	Password</label>
							<input type="password" class="form-control" name="user_password" placeholder="Password" value="<?php echo $user_password;?>" required>
						</div>
					</div>				
					<div class="col-md-6">
					  <div class="form-group">
						<label>Foto Profil</label>
						<input type="file" onchange="readURL(this);"  class="form-control" name="userfiles" required>
					  </div>
					</div>		
					<div class="col-md-6">
					  <div class="form-group">
						<label>&nbsp;</label>
						<img class="img img-responsive user-image" id="blah" >
					  </div>
					</div>
					<div class="col-md-12">
					</div>
					<div class="col-md-6">
					  <div class="form-group">
						<label>	&nbsp;</label>
						<input type="submit" onclick="return confirm('Apakah Yakin Menyimpan?');" value="Submit" class="btn btn-success">
					  </div>
					</div>
					<?php echo form_close(); ?>
				  </div>
				</div>
			</div>
		</div>
      </div>
    </section>
  </div>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
<script>  
function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
		
$(document).ready(function() {	
	$.getJSON("<?php echo base_url('data/mahasiswa');?>", function(data) {
				$.each(data, function(key, value) {
					$('#nomorinduk_user').append('<option value="' + value.no_mahasiswa + '">' + value.no_mahasiswa + ' ' + value.nama_lengkap + '</option>');
				});
	});
	
	$("#nomorinduk_user").change(function(){
		var nomorinduk_user = $("#nomorinduk_user").val();
		$.ajax({
			url: "<?php echo base_url('data/nama_mahasiswa');?>",
			type     : 'POST',
			dataType : 'html',
			data: 'no_mahasiswa='+nomorinduk_user,
			cache: false,
			success: function(response){
				document.getElementById("nama_user").value = response;
			}
		});
	});
});	
</script>