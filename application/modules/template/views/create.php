<?php
	$id = isset($datas['template_id']) ? $datas['template_id'] : "";
	$name = isset($datas['template_name']) ? $datas['template_name'] : "";
	$content = isset($datas['template_content']) ? $datas['template_content'] : "";
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
				<button class="btn btn-primary submit-form" data-form-target="template-form" title="Simpan" rel="tooltip" data-placement="top" >
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
						<h2><?= $title_msg ?> template</h2>

					</header>

					<!-- widget div-->
					<div>

						<form class="smart-form" id="template-form" action="<?= site_url('template/process_form'); ?>" method="post">
							<?php if($id != 0): ?>
								<input type="hidden" name="id" value="<?= $id ?>" />
							<?php endif; ?>
							<fieldset>
								<section class="col col-8">
									<label class="label">Nama Template <sup class="color-red">*</sup></label>
									<label class="input">
										<input type="text" name="name" value="<?= $name; ?>" placeholder="Nama Template">
									</label>
								</section>

								<section class="col col-8">
									<label class="label">Content <sup class="color-red">*</sup></label>
									<label class="input">
										<textarea name="content" cols="115" rows="5"><?= $content ?></textarea>
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
