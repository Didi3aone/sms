<?php
	$data_id 		= isset($datas['Emp_Id']) ? $datas['Emp_Id'] : "";
	$name 	 		= isset($datas['Emp_Name']) ? $datas['Emp_Name'] : "";
	$no 	 		= isset($datas['Emp_PhoneNumber']) ? $datas['Emp_PhoneNumber'] : "";
	$dob 	 		= isset($datas['Emp_DOB_POB']) ? $datas['Emp_DOB_POB'] : "";
	$kategori_id 	= isset($datas['Emp_KategoriId']) ? $datas['Emp_KategoriId'] : "";
	$email 	 		= isset($datas['Emp_Email']) ? $datas['Emp_Email'] : "";
	$address 	 	= isset($datas['Emp_Address']) ? $datas['Emp_Address'] : "";
	$area 	 		= isset($datas['Emp_AreaId']) ? $datas['Emp_AreaId'] : "";
	$last 	 		= isset($datas['Emp_LastEducation']) ? $datas['Emp_LastEducation'] : "";
	$end 	 		= isset($datas['Emp_EndEducation']) ? $datas['Emp_EndEducation'] : "";
	$total 	 		= isset($datas['Emp_TotalWorkExp']) ? $datas['Emp_TotalWorkExp'] : "";
	$serf_wi 	 	= isset($datas['Emp_WI_CerfNo']) ? $datas['Emp_WI_CerfNo'] : "";
	$serf_wi_lev 	= isset($datas['Emp_WI_Level']) ? $datas['Emp_WI_Level'] : "";
	$serf_wi_iss 	= isset($datas['Emp_WI_IssuedBy']) ? $datas['Emp_WI_IssuedBy'] : "";
	$serf_wi_val 	= isset($datas['Emp_WI_ValidPeriod']) ? $datas['Emp_WI_ValidPeriod'] : "";
	$serf_ut 	 	= isset($datas['Emp_UT_CerfNo']) ? $datas['Emp_UT_CerfNo'] : "";
	$serf_ut_lev 	= isset($datas['Emp_UT_Level']) ? $datas['Emp_UT_Level'] : "";
	$serf_ut_iss 	= isset($datas['Emp_UT_IssuedBy']) ? $datas['Emp_UT_IssuedBy'] : "";
	$serf_ut_val 	= isset($datas['Emp_UT_ValidPeriod']) ? $datas['Emp_UT_ValidPeriod'] : "";
	$serf_mpi 	 	= isset($datas['Emp_MPI_CerfNo']) ? $datas['Emp_MPI_CerfNo'] : "";
	$serf_mpi_lev 	= isset($datas['Emp_MPI_Level']) ? $datas['Emp_MPI_Level'] : "";
	$serf_mpi_iss 	= isset($datas['Emp_MPI_IssuedBy']) ? $datas['Emp_MPI_IssuedBy'] : "";
	$serf_mpi_val 	= isset($datas['Emp_MPI_ValidPeriod']) ? $datas['Emp_MPI_ValidPeriod'] : "";
	$serf_pt 	 	= isset($datas['Emp_PT_CerfNo']) ? $datas['Emp_PT_CerfNo'] : "";
	$serf_pt_lev 	= isset($datas['Emp_PT_Level']) ? $datas['Emp_PT_Level'] : "";
	$serf_pt_iss 	= isset($datas['Emp_PT_IssuedBy']) ? $datas['Emp_PT_IssuedBy'] : "";
	$serf_pt_val 	= isset($datas['Emp_PT_ValidPeriod']) ? $datas['Emp_PT_ValidPeriod'] : "";
	$serf_ir 	 	= isset($datas['Emp_IR_CerfNo']) ? $datas['Emp_IR_CerfNo'] : "";
	$serf_ir_lev 	= isset($datas['Emp_IR_Level']) ? $datas['Emp_IR_Level'] : "";
	$serf_ir_iss 	= isset($datas['Emp_IR_IssuedBy']) ? $datas['Emp_IR_IssuedBy'] : "";
	$serf_ir_val 	= isset($datas['Emp_IR_ValidPeriod']) ? $datas['Emp_IR_ValidPeriod'] : "";
	$region_id 	 	= isset($datas['region_id']) ? $datas['region_id'] : "";
	$region_name 	= isset($datas['region_name']) ? $datas['region_name'] : "";
	$kategori_id 	= isset($datas['kategori_id']) ? $datas['kategori_id'] : "";
	$kategori_name 	= isset($datas['kategori_name']) ? $datas['kategori_name'] : "";
	$file_wi        = isset($datas['Emp_Cerf_WI_File']) ? $datas['Emp_Cerf_WI_File'] : "";
	$file_ut        = isset($datas['Emp_Cerf_UT_File']) ? $datas['Emp_Cerf_UT_File'] : "";
	$file_mpi       = isset($datas['Emp_Cerf_MPI_File']) ? $datas['Emp_Cerf_MPI_File'] : "";
	$file_pt        = isset($datas['Emp_Cerf_PT_File']) ? $datas['Emp_Cerf_PT_File'] : "";
	$file_ir        = isset($datas['Emp_Cerf_IR_File']) ? $datas['Emp_Cerf_IR_File'] : "";


	$info = ($data_id == 0) ? "Create" : "Update";
// pr($datas);exit;
?>
<!-- MAIN CONTENT -->
<div id="content">
	<div class="row">
		<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
			<h1 class="page-title txt-color-blueDark"><?= $title_page ?></h1>
		</div>
		<div class="col-xs-12 col-sm-5 col-md-5 col-lg-4 col-lg-offset-1 text-right">
			<h1>
				<button class="btn btn-warning back-button" onclick="<?= (isset($back) ? "go('".$back."');" : "window.history.back();") ?>" title="Back" rel="tooltip" data-placement="left" data-original-title="Batal">
					<i class="fa fa-arrow-circle-left fa-lg"></i>
				</button>
				<button class="btn btn-primary submit-form" data-form-target="data-form" title="Simpan" rel="tooltip" data-placement="top" >
					<i class="fa fa-floppy-o fa-lg"></i>
				</button>
			</h1>
		</div>
	</div>

	<!-- widget grid -->
	<section id="widget-grid" class="">

		<div class="row">
			<!-- NEW WIDGET ROW START -->
			<article class="col-sm-12 col-md-12 col-lg-12">

				<!-- Widget ID (each widget will need unique ID)-->
				<div class="jarviswidget" id="wid-id-0"
				data-widget-editbutton="false"
				data-widget-deletebutton="false">
					<header>
						<span class="widget-icon"> <i class="fa fa-pencil-square-o"></i> </span>
						<h2>Form <?= $info; ?> Employee</h2>

					</header>

					<!-- widget div-->
					<div>

						<form class="smart-form" id="data-form" action="<?= site_url('phonebook/process_form'); ?>" method="post">
							<?php if($data_id != 0): ?>
								<input type="hidden" name="id" value="<?= $data_id ?>" />
							<?php endif; ?>
							<fieldset>
								<section>
									<label class="label">Nama Lengkap <sup class="color-red">*</sup></label>
									<label class="input">
										<input type="text" name="name" value="<?= $name ?>" placeholder="Name">
									</label>
								</section>

								<section>
									<label class="label">Tempat Tanggal Lahir </label>
									<label class="input">
										<input type="text" name="dobpob" value="<?= $dob; ?>" placeholder="Tanggal Lahir">
									</label>
									<div class="note">
										Example : Subang,18-01-1980
									</div>
								</section>

								<section>
									<label class="label">No telephone <sup class="color-red">*</sup></label>
									<label class="input">
										<input type="text" name="no" value="<?= $no; ?>" placeholder="No telepon">
									</label>
								</section>

								<section>
									<label class="label">Email </label>
									<label class="input">
										<input type="text" name="email" value="<?= $email; ?>" placeholder="Email">
									</label>
								</section>

								<section>
									<label class="label">Pendidikan Terakhir </label>
									<label class="input">
										<input type="text" name="last_ed" value="<?= $last; ?>" placeholder="Pendidikan Terakhir">
									</label>
								</section>

								<section>
									<label class="label">Tahun Tamat Pendidikan</label>
									<label class="input">
										<input type="text" name="end_ed" value="<?= $end; ?>" placeholder="Tahun Tamat Pendidikan">
									</label>
								</section>

								<section>
									<label class="label">Total Pengalaman Kerja </label>
									<label class="input">
										<input type="text" name="end_tot" value="<?= $total; ?>" placeholder="Total Pengalaman Kerja">
									</label>
								</section>

								<section>
									<label class="label">Pilih Area <sup class="color-red">*</sup></label>
									<label class="select">
										<?php if($area != "") : ?>
										<select name="region_id" id="region" style="width: 100%;">
											<option selected value="<?= $region_id ?>"><?= $region_name ?></option>
										</select>
										<?php else: ?>
										<select name="region_id" id="region"></select>
										<?php endif; ?>
									</label>
									<div class="note">OPSIONAL</div>
								</section>

								<section>
									<label class="label">Pilih Kategori</label>
									<label class="select">
										<?php if($kategori_id != "") : ?>
										<select name="kategori_id" id="kategori" style="width: 100%;">
											<option selected value="<?= $kategori_id ?>"><?= $kategori_name ?></option>
										</select>
										<?php else: ?>
										<select name="region_id" id="region"></select>
										<?php endif; ?>
									</label>
									<div class="note">OPSIONAL</div>
								</section>

								<section>
									<label class="label">Alamat </label>
									<label class="textarea">
										<textarea name="address" rows="6"><?= $address ?></textarea>
									</label>
								</section>

								<div class="row">
									<section class="col col-3">
										<label class="label">No Sertifikat (WELDING INSPECTOR) </label>
										<label class="input">
											<input type="text" name="serf_wi" value="<?= $serf_wi; ?>" placeholder="No Sertifikat">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Level (WELDING INSPECTOR)</label>
										<label class="input">
											<input type="text" name="serf_wi_lev" value="<?= $serf_wi_lev; ?>" placeholder="Level">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Dikeluarkan Oleh (WELDING INSPECTOR)</label>
										<label class="input">
											<input type="text" name="serf_wi_iss" value="<?= $serf_wi_iss; ?>" placeholder="Dikeluarkan Oleh">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Tanggal Valid (WELDING INSPECTOR)</label>
										<label class="input">
											<input type="text" class="datepicker" name="serf_wi_val" value="<?= $serf_wi_val; ?>" placeholder="Tanggal Valid">
										</label>
									</section>

								</div>

								<div class="row">
									<section class="col col-3">
										<label class="label">No Sertifikat (UT) </label>
										<label class="input">
											<input type="text" name="serf_ut" value="<?= $serf_ut; ?>" placeholder="No Sertifikat">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Level (UT)</label>
										<label class="input">
											<input type="text" name="serf_ut_lev" value="<?= $serf_ut_lev; ?>" placeholder="Level">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Dikeluarkan Oleh (UT)</label>
										<label class="input">
											<input type="text" name="serf_ut_iss" value="<?= $serf_ut_iss; ?>" placeholder="Dikeluarkan Oleh">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Tanggal Valid (UT)</label>
										<label class="input">
											<input type="text" class="datepicker" name="serf_ut_val" value="<?= $serf_ut_val; ?>" placeholder="Tanggal Valid">
										</label>
									</section>

								</div>

								<div class="row">
									<section class="col col-3">
										<label class="label">No Sertifikat (MPI) </label>
										<label class="input">
											<input type="text" name="serf_mpi" value="<?= $serf_mpi; ?>" placeholder="No Sertifikat">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Level (MPI)</label>
										<label class="input">
											<input type="text" name="serf_mpi_lev" value="<?= $serf_mpi_lev; ?>" placeholder="Level">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Dikeluarkan Oleh (MPI)</label>
										<label class="input">
											<input type="text" name="serf_mpi_iss" value="<?= $serf_mpi_iss; ?>" placeholder="Dikeluarkan Oleh">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Tanggal Valid (MPI)</label>
										<label class="input">
											<input type="text" class="datepicker" name="serf_mpi_val" value="<?= $serf_mpi_val; ?>" placeholder="Tanggal Valid">
										</label>
									</section>

								</div>

								<div class="row">
									<section class="col col-3">
										<label class="label">No Sertifikat (PT) </label>
										<label class="input">
											<input type="text" name="serf_pt" value="<?= $serf_pt; ?>" placeholder="No Sertifikat">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Level (PT)</label>
										<label class="input">
											<input type="text" name="serf_pt_lev" value="<?= $serf_pt_lev; ?>" placeholder="Level">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Dikeluarkan Oleh (PT)</label>
										<label class="input">
											<input type="text" name="serf_pt_iss" value="<?= $serf_pt_iss; ?>" placeholder="Dikeluarkan Oleh">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Tanggal Valid (PT)</label>
										<label class="input">
											<input type="text" class="datepicker" name="serf_pt_val" value="<?= $serf_pt_val; ?>" placeholder="Tanggal Valid">
										</label>
									</section>

								</div>

								<div class="row">
									<section class="col col-3">
										<label class="label">No Sertifikat (INT RADIOGRAPHIC) </label>
										<label class="input">
											<input type="text" name="serf_ir" value="<?= $serf_ir; ?>" placeholder="No Sertifikat">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Level (INT RADIOGRAPHIC)</label>
										<label class="input">
											<input type="text" name="serf_ir_lev" value="<?= $serf_ir_lev; ?>" placeholder="Level">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Dikeluarkan Oleh (INT RADIOGRAPHIC)</label>
										<label class="input">
											<input type="text" name="serf_ir_iss" value="<?= $serf_ir_iss; ?>" placeholder="Dikeluarkan Oleh">
										</label>
									</section>

									<section class="col col-3">
										<label class="label">Tanggal Valid (INT RADIOGRAPHIC)</label>
										<label class="input">
											<input type="text" class="datepicker" name="serf_ir_val" value="<?= $serf_ir_val; ?>" placeholder="Tanggal Valid">
										</label>
									</section>

								</div>

								<div class="row">
									<section class="col col-6">
										<label class="label">Upload File Sertifikat (WELDING INSPECTOR)</label>
										<label class="input">
											<input type="file" name="wi">
										</label>
										<?php if(!empty($file_wi)){ ?>
											<a href = "<?php echo base_url($file_wi) ?>" target="_blank">
												View File
											</a>
										<?php } ?>
									</section>

									<section class="col col-6">
										<label class="label">Upload File Sertifikat (UT)</label>
										<label class="input">
											<input type="file" name="ut">
										</label>
										<?php if(!empty($file_ut)) { ?>
											<a href = "<?php echo base_url($file_ut) ?>" target="_blank">
												View File
											</a>
										<?php } ?>
									</section>

									<section class="col col-6">
										<label class="label">Upload File Sertifikat (MPI)</label>
										<label class="input">
											<input type="file" name="mpi">
										</label>
										<?php if(!empty($file_mpi)) { ?>
											<a href = "<?php echo base_url($file_mpi) ?>" target="_blank">
												View File
											</a>
										<?php } ?>
									</section>

									<section class="col col-6">
										<label class="label">Upload File Sertifikat (PT)</label>
										<label class="input">
											<input type="file" name="pt">
										</label>
										<?php if(!empty($file_pt)) {?>
											<a href = "<?php echo base_url($file_pt) ?>" target="_blank">
												View File
											</a>
										<?php } ?>
									</section>

									<section class="col col-6">
										<label class="label">Upload File Sertifikat (INT RADIOGRAPHIC)</label>
										<label class="input">
											<input type="file" name="ir">
										</label>
										<?php if(!empty($file_ir)) {?>
											<a href = "<?php echo base_url($file_ir) ?>" target="_blank">
												View File
											</a>
										<?php } ?>
									</section>
								</div>
							</fieldset>
						</form>
					</div>
					<!-- end widget content -->
				</div>
				<!-- end widget div -->
			</article>
		</div>
	</section> <!-- end widget grid -->
</div> <!-- END MAIN CONTENT -->
