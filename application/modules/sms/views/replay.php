<?php
	$to 		= isset($inbox['SenderNumber']) ? $inbox['SenderNumber'] : "";
	$msg 		= isset($inbox['template_name']) ? $inbox['template_name'] : "";
	$rec_date   = isset($inbox['ReceivingDateTime']) ? $inbox['ReceivingDateTime'] : "";
	$from 		= isset($inbox['SenderNumber']) ? $inbox['SenderNumber'] : "";
 	$content 	= isset($datas['TextDecoded']) ? $datas['TextDecoded'] : "";
?>
<!-- MAIN CONTENT -->
<div id="content">
	<div class="row">
		<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
			<h1 class="page-title txt-color-blueDark"><?= $title_page ?></h1>
		</div>
		<div class="col-xs-12 col-sm-5 col-md-5 col-lg-4 col-lg-offset-1 text-right">
			<h1>
				<a href="<?php echo site_url('sms/inbox'); ?>" class="btn btn-warning" title="back" rel="tooltip" data-placement="top">
					<i class="fa fa-arrow-left"></i>
				</a>
				<!-- <button class="btn btn-primary submit-form" data-form-target="sms-form" title="Send SMS" rel="tooltip" data-placement="top" >
					<i class="fa fa-envelope-o fa-lg"></i>
				</button> -->
			</h1>
		</div>
	</div>

	<!-- widget grid -->
	<section id="widget-grid" class="">
		<div class="row">
			<!-- NEW WIDGET ROW START -->
			<article class="col-sm-12 col-md-12 col-lg-12">
				<!-- Widget ID (each widget will need unique ID)-->
				<div class="jarviswidget jarviswidget-color-green" id="wid-id-0"
				data-widget-editbutton="false"
				data-widget-deletebutton="false"
				>
					<header>
						<span class="widget-icon"> <i class="fa fa-comments txt-color-white"></i> </span>
						<h2> Replay SMS </h2>
					</header>

				<!-- widget div-->
					<div>
						<div class="widget-body widget-hide-overflow no-padding">
							<!-- CHAT BODY -->
							<div id="chat-body" class="chat-body custom-scroll">
								<ul>
									<?php 
										foreach($inbox as $key => $value) :
											$message = $value['TextDecoded'];
											$date    = $value['ReceivingDateTime'];
											// $dates   = $value['SendingDateTime'];
											$sender  = ($value['Emp_Name']) ? $value['Emp_Name'] : $value['SenderNumber'];
											// $pesan = $value['pesan_keluar'];
									?>
									<li class="message">
										<!-- <img src="img/avatars/5.png" class="online" alt=""> -->
										<div class="username" style="color: red;">
											<?= strtoupper($sender); ?>
										</div>
										<div class="message-text">
											<time>
												<?= $date; ?>
											</time> 
											<div class="panel panel-danger">
											    <div class="panel-body"><?= $message; ?></div>
											</div>
											
											<!-- <b style="color: blue;">ME</b>
											<div class="panel panel-primary">
											    <div class="panel-body"><?php// $pesan; ?></div>
											</div> -->
										</div>
									</li>
									<?php endforeach; ?>
 								</ul>
							</div>
								<!-- CHAT FOOTER -->
							<div class="chat-footer">
								<form method="post">
									<input type="hidden" name="nomor" value="<?= $inbox_row['SenderNumber'] ?>">
									<div>
										 Pilih Template
										<label class="select">
											<select name="template_id" id="template" style="width: 100%;" class="input-sm template">
												<option value="0"> -- Choose --</option>
												<?php foreach ($template as $key => $value): ?>
													<option value="<?= $value['template_id'] ?>"> <?= $value['template_name']?> </option>
												<?php endforeach ?>
											</select>
										</label>
									</div>
									<input type="hidden" name="to_id" value="">
								<!-- CHAT TEXTAREA -->
									<div class="textarea-div">
										<div class="typearea">
											<textarea name="content" id="chat" onkeyup="countChar(this)" placeholder="Write a reply..." id="textarea-expand" class="custom-scroll"></textarea>
										</div>
									</div>

									<!-- CHAT REPLY/SEND -->
									<span class="textarea-controls">
										<button id="btnsub" class="btn btn-sm btn-primary pull-right">
											Reply
										</button> 
										<!-- <span class="pull-right smart-form" style="margin-top: 3px; margin-right: 10px;"> <label class="checkbox pull-right"> -->
											<!-- <input type="checkbox" name="subscription" id="subscription">
											<i></i>Press <strong> ENTER </strong> to send </label> </span> <a href="javascript:void(0);" class="pull-left"><i class="fa fa-camera fa-fw fa-lg"></i></a>  -->
									</span>
									Tersisa :<div id="charNum"> 160</div>
									Karakter
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
</div> <!-- END MAIN CONTENT -->
