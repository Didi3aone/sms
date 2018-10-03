<?php
	$group_id = isset($data['group_id']) ? $data['group_id'] : "";
	$from_db  = isset($data['group_id']) ? $data['group_id'] : "";

	// print_r($datas);
?>
<!-- MAIN CONTENT -->
<div id="content">
	<div class="row">
		<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
			<h1 class="page-title txt-color-blueDark"><?= $title_page ?></h1>
		</div>
		<div class="col-xs-12 col-sm-5 col-md-5 col-lg-4 col-lg-offset-1 text-right">
			<h1>
				<a class="btn btn-warning back-button" href="<?= site_url('phonebook'); ?>" title="Back" rel="tooltip" data-placement="left" data-original-title="Batal">
					<i class="fa fa-arrow-circle-left fa-lg"></i>
				</a>
				<button class="btn btn-primary submit-form" data-form-target="check-form" title="Send SMS" rel="tooltip" data-placement="top" >
					<i class="fa fa-envelope-o fa-lg"></i>
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
						<h2><?= $title_msg ?> SMS</h2>

					</header>

					<!-- widget div-->
					<div>

						<form action="<?= site_url('sms/process_form_checkbox'); ?>" method="post" id="check-form" class="smart-form">
							<?php //var_dump($datas); ?>
							<input type="hidden" name="no_sms[]" value="<?= $datas;?>">
							<header>Create SMS</header>
							<fieldset>
								<div class="row">
									<section class="col col-6">
										<label class="label">Select Template</label>
										<label class="select">
											<select name="temp" id="template" class="input-sm template">
												<option value="0"> -- Choose --</option>
												<?php foreach ($template as $key => $value): ?>
													<option value="<?= $value['template_id'] ?>"> <?= $value['template_name']?> </option>
												<?php endforeach ?>
											</select> <i></i>
										</label>
										<div class="note">
											opsional
										</div>
									</section>
								</div>

								<section>
									<label class="label">Message <i style="color: red">*</i></label>
									<label class="textarea">
										<i class="icon-append fa fa-comment"></i>
										<textarea rows="5" name="message" id="message" onkeyup="countChar(this)"></textarea>
										<div class="note">Tersisa :</div><div id="charNum"> 160</div>
										<div class="note">Karakter</div>
									</label>
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
