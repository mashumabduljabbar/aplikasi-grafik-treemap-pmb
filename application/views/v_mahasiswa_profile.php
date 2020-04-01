  <div class="content-wrapper" >
    <section class="content-header">
      <h1>
        Profile
      </h1>
      <ol class="breadcrumb">
        <li><a href="#">Mahasiswa</a></li>
        <li class="active">Profile</li>
      </ol>
    </section>
 <!-- Main content -->
    <section class="content" >
      <div class="row">
		<div class="col-xs-12">
			<div class="box">
				<div class="box-body">
				  <div class="row">
				  <?php echo form_open_multipart("mahasiswa/profile_ubah"); ?>
				  <input type="hidden" name="id_user" value="<?php echo $tbl_user->id_user;?>">
					<div class="col-md-6">
						<table class="table">
							<tr>
								<th>Nama Lengkap </th>
								<td>: </td>
								<td><?php echo $tbl_user->nama_lengkap;?> </td>
							</tr>
							<tr>
								<th>Jenis Kelamin</th>
								<td>: </td>
								<td><?php echo $tbl_user->jenis_kelamin;?> </td>
							</tr>
							<tr>
								<th>No. Telepon </th>
								<td>: </td>
								<td><?php echo $tbl_user->no_telepon;?> </td>
							</tr>
							<tr>
								<th>E-Mail</th>
								<td>: </td>
								<td><?php echo $tbl_user->email;?> </td>
							</tr>
							<tr>
								<th>Kota Lahir</th>
								<td>: </td>
								<td><?php echo $tbl_user->nama;?> </td>
							</tr>
							<tr>
								<th>Tanggal Lahir</th>
								<td>: </td>
								<td><?php echo $tanggal_lahir;?> </td>
							</tr>
							<tr>
								<th>Alamat Rumah</th>
								<td>: </td>
								<td><?php echo $tbl_user->alamat_rumah;?> </td>
							</tr>
							<tr>
								<th>Program Studi</th>
								<td>: </td>
								<td><?php echo $tbl_user->jenjang;?> <?php echo $tbl_user->nama_prodi;?> </td>
							</tr>
							<tr>
								<th>Semester</th>
								<td>: </td>
								<td><?php echo $tbl_user->semester;?> </td>
							</tr>
						</table>
					</div>
					<div class="col-md-6">
						<table class="table">
							<tr>
								<th>Level </th>
								<td>: </td>
								<td><?php echo $tbl_user->level_user;?> </td>
							</tr>
							<tr>
								<th>Nama User </th>
								<td>: </td>
								<td><?php echo $tbl_user->nama_user;?> </td>
							</tr>
							<tr>
								<th>Username </th>
								<td>: </td>
								<td><?php echo $tbl_user->user_name;?> </td>
							</tr>
							<tr>
								<th>Foto Profil </th>
								<td>: </td>
								<td><img width="220px" class="img img-responsive user-image" id="blah" src="<?php echo base_url();?>assets/dist/img/avatar/<?php echo $tbl_user->foto_user."?".strtotime("now");?>"> </td>
							</tr>
						</table>
					</div>
					<div class="col-md-12">
					  <div class="form-group">
						<label>	&nbsp;</label>
						<input type="submit" value="Ubah Profile" class="btn btn-warning">
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