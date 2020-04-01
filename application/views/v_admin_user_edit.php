  <div class="content-wrapper" >
    <section class="content-header">
      <h1>
        Ubah User
      </h1>
      <ol class="breadcrumb">
        <li><a href="#">User</a></li>
        <li class="active">Ubah User</li>
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
					if(isset($_POST['username_eksis'])==1){
							$user_name = $_POST['user_name'];
							$nama_user = $_POST['nama_user'];
							$user_password = $_POST['user_password'];
							$level_user = "<option value='$_POST[level_user]'>$_POST[level_user]</option>";
					?>
					<p style="color:red;"><i>Username sudah digunakan, silahkan coba yang lain.</i></p>
					<?php 
					}else{
							$user_name = "$tbl_user->user_name";
							$nama_user = "$tbl_user->nama_user";
							$user_password = "$tbl_user->user_password";
							$level_user = "<option value='$tbl_user->level_user'>$tbl_user->level_user</option>";
					}?>
				</div>
				<div class="box-body">
				  <div class="row">
				  <?php echo form_open_multipart("admin/user_aksi_ubah"); ?>
				  <input type="hidden" name="id_user" value="<?php echo $tbl_user->id_user;?>">
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
					<div class="col-md-6">
						<div class="form-group">
							<label>	Nama User</label>
							<input type="text" class="form-control" name="nama_user" placeholder="Nama User" value="<?php echo $nama_user;?>" required>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>	Username</label>
							<input type="text" class="form-control" name="user_name[]" placeholder="Username" value="<?php echo $user_name;?>" required>
							<input type="hidden" name="user_name[]" value="<?php echo $tbl_user->user_name;?>" >
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>	Password</label>
							<input type="password" class="form-control" name="user_password[]" placeholder="Password" value="<?php echo $user_password;?>" required>
							<input type="hidden" name="user_password[]" value="<?php echo $tbl_user->user_password;?>" >
						</div>
					</div>				
					<div class="col-md-6">
						<div class="form-group">
							<label>Foto Profil</label>
							<img width="220px" class="img img-responsive user-image" id="blah" src="<?php echo base_url();?>assets/dist/img/avatar/<?php echo $tbl_user->foto_user."?".strtotime("now");?>">
							<input type="hidden" name="foto_user" value="<?php echo $tbl_user->foto_user; ?>">
							<input type="file" onchange="readURL(this);"  class="form-control" name="userfiles">
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
  <script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
</script>