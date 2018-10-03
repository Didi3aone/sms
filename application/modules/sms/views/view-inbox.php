<?php
	$FROM 	= isset($datas['SenderNumber']) ? $datas['SenderNumber'] : "";
	$MSG    = isset($datas['TextDecoded']) ? $datas['TextDecoded'] : "";
	// pr($datas);exit;
	// $content 	= isset($datas['template_content']) ? $datas['template_content'] : "";
?>
<!-- MAIN CONTENT -->
<div id="content">
	<div class="row">
		<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
			<h1 class="page-title txt-color-blueDark"><?= $title_page ?></h1>
		</div>
		<div class="col-xs-12 col-sm-5 col-md-5 col-lg-4 col-lg-offset-1 text-right">
			<h1>
				<a class="btn btn-warning back-button" href="<?= site_url('sms/inbox'); ?>" title="Back" rel="tooltip" data-placement="left" data-original-title="Batal">
					<i class="fa fa-arrow-circle-left fa-lg"></i>
				</a>
				<a href="<?= site_url('sms/replay/'.$datas['ID']); ?>" class="btn btn-primary" title="replay" rel="tooltip" data-placement="top" >
					<i class="fa fa-check fa-lg"></i>
				</a>
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
						<h2> SMS INBOX</h2>

					</header>

					<!-- widget div-->
					<div>

						<form class="smart-form" id="sms-form" action="<?= site_url('sms/process_form_replay'); ?>" method="post">
							<?php //if($id != 0): ?>
								<input type="hidden" name="id" value="<?php //$id ?>" />
							<?php //endif; ?>
							<fieldset>
								<div class="row">
									<section class="col col-6"">
										<label class="label">SMS FROM</label>
										<label class="input">
											<input type="text" name="nomor" value="<?= $FROM ?>" readonly="readonly" placeholder="SMS FROM">
										</label>
									</section>
								</div>
								<section>
									<label class="label">Message</label>
									<label class="textarea">
										<i class="icon-append fa fa-comment"></i>
										<textarea rows="5" name="isi" id="message" readonly="readonly"><?= $MSG; ?></textarea>
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
