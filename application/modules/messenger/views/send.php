<!--MAIN CONTENT -->
<div id="content">
	<div class="row">
		<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
			<h1 class="page-title txt-color-blueDark"><?php// $title_page ?></h1>
		</div>
		<div class="col-xs-12 col-sm-5 col-md-5 col-lg-4 col-lg-offset-1 text-right">
			<h1>
				<a href="<?php echo site_url('messenger'); ?>" class="btn btn-warning" title="back" rel="tooltip" data-placement="top">
						<i class="fa fa-arrow-left"></i>
					</a>
			</h1>
		</div>
	</div>
	<?php 
		$id_chat = (!empty($chat)) ? "Reply" : "Send ";
	?>
	<script>
		var id = "<?= $datas['user_id'] ?>";
	</script>
	<!-- widget grid -->
	<section id="widget-grid" class="">
		<div class="row">
			<!-- NEW WIDGET ROW START -->
			<article class="col-sm-12 col-md-12 col-lg-12">
				<!-- Widget ID (each widget will need unique ID)-->
				<div class="jarviswidget jarviswidget-color-blueLight" id="wid-id-0"
				data-widget-editbutton="false"
				data-widget-deletebutton="false"
				>
					<header>
						<span class="widget-icon"> <i class="fa fa-comments txt-color-white"></i> </span>
						<h2> Chat Online </h2>
					</header>

				<!-- widget div-->
					<div>
						<div class="widget-body widget-hide-overflow no-padding">
							<!-- CHAT BODY -->
							<div id="chat-body" class="chat-body custom-scroll">
								<ul>
									<div id="pesan">
										
									</div>
 								</ul>
							</div>
								<!-- CHAT FOOTER -->
							<div class="chat-footer">
								<form method="post">
									<input type="hidden" name="to_id" value="<?= $datas['user_id'] ?>">
									<input type="hidden" name="name_to" value="<?= $datas['user_name'] ?>">
								<!-- CHAT TEXTAREA -->
									<div class="textarea-div">
										<div class="typearea">
											<textarea name="content" id="chat" placeholder="Write a reply..." id="textarea-expand" class="custom-scroll"></textarea>
										</div>
									</div>
									<!-- CHAT REPLY/SEND -->
									<span class="textarea-controls">
										<button id="btnsub" class="btn btn-sm btn-primary pull-right">
											<?= $id_chat; ?>
										</button> <span class="pull-right smart-form" style="margin-top: 3px; margin-right: 10px;"> <label class="checkbox pull-right">
											<!-- <input type="checkbox" name="subscription" id="subscription">
											<i></i>Press <strong> ENTER </strong> to send </label> </span> <a href="javascript:void(0);" class="pull-left"><i class="fa fa-camera fa-fw fa-lg"></i></a>  -->
									</span>
								</form>
							</div>
							<!-- end content -->
						</div>
					</div>
					<!-- end widget content -->
				</div>
			<!-- end widget div -->
			</article>
		</div>
	</section> <!-- end widget grid -->
</div> <!-- END MAIN CONTENT