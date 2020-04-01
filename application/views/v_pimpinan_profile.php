  <div class="content-wrapper" >
    <section class="content-header">
      <h1>
        Profile
      </h1>
      <ol class="breadcrumb">
        <li><a href="#">Pimpinan</a></li>
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
				  <?php echo form_open_multipart("pimpinan/profile_ubah"); ?>
				  <input type="hidden" name="id_user" value="<?php echo $tbl_user->id_user;?>">
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