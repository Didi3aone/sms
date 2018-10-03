<?php
	$data_id = isset($datas['UserDataId']) ? $datas['UserDataId'] : "";
	$name = isset($datas['UserDataName']) ? $datas['UserDataName'] : "";
	$no = isset($datas['UserMobilePhone']) ? $datas['UserMobilePhone'] : "";
	$region_id = isset($datas['region_id']) ? $datas['region_id'] : "";
	$region_name = isset($datas['region_name']) ? $datas['region_name'] : "";
	$sertifikat  = isset($datas['UserCertificate']) ? $datas['UserCertificate'] : "";
	$pengalaman   = isset($datas['UserExperience']) ? $datas['UserExperience'] : "";
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
						<h2>Create Phoneboook</h2>

					</header>

					<!-- widget div-->
					<div>

						<form class="smart-form" id="data-form" action="<?= site_url('phonebook/process_form'); ?>" method="post">
							<?php if($data_id != 0): ?>
								<input type="hidden" name="id" value="<?= $data_id ?>" />
							<?php endif; ?>
							<fieldset>
								<section>
									<label class="label">Name <sup class="color-red">*</sup></label>
									<label class="input">
										<input type="text" name="name" value="<?= $name ?>" placeholder="Name">
									</label>
								</section>

								<section>
									<label class="label">Phone Number <sup class="color-red">*</sup></label>
									<label class="input">
										<input type="text" name="no1" value="<?= $no; ?>" placeholder="Mobile Phone">
									</label>
								</section>

								<section>
									<label class="label">Pengalaman</label>
									<div class="inline-group">
										<div class="col col-4">
											<label class="radio">
												<input type="radio" name="user_experience" <?php echo ($pengalaman == 1) ? "checked" : "" ?>  value="1">
												<i></i>Yes
											</label>
											<label class="radio">
												<input type="radio" name="user_experience" <?php echo ($pengalaman == 2) ? "checked" : "" ?> value="2">
												<i></i>No
											</label>
										</div>
									</div>
								</section>

								<section>
									<label class="label">Sertifikat</label>
									<div class="inline-group">
										<div class="col col-4">
											<label class="radio">
												<input type="radio" name="user_certificate" <?php echo ($sertifikat == 1) ? "checked" : "" ?> value="1">
												<i></i>YES
											</label>
											<label class="radio">
												<input type="radio" name="user_certificate" <?php echo ($sertifikat == 2) ? "checked" : "" ?> value="2">
												<i></i>NO
											</label>
										</div>
									</div>
								</section>

								 <section>
									<label class="label">Select Group</label>
									<label class="select">
										<?php if($region_id != "") : ?>
										<select name="region_id" id="region" style="width: 100%;">
											<option selected value="<?= $region_id ?>"><?= $region_name ?></option>
										</select>
										<?php else: ?>
										<select name="region_id" id="region"></select>
										<?php endif; ?>
									</label>
									<div class="note">OPSIONAL</div>
								</section>
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
