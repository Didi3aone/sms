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
				<a href="<?= site_url('sms/inbox'); ?>" class="btn btn-warning" title="back" rel="tooltip" data-placement="top">
					<i class="fa fa-arrow-left"></i>
				</a>
				<button class="btn btn-primary submit-form" data-form-target="sms-form" title="Send SMS" rel="tooltip" data-placement="top" >
					<i class="fa fa-envelope-o fa-lg"></i>
				</button>
			</h1>
		</div>
	</div>

	<!-- widget grid -->
	<section id="widget-grid" class="">

		<div class="row">
			<div class="col-sm-12">
				<div class="well">
					<table class="table table-striped table-forum">
						<thead>
							<tr>
							<!-- 	<th colspan="2"><a href="forum.html"> SMS </a> > 
									<a href="#">	Inbox </a> 
								</th> -->
							</tr>
						</thead>

						<tbody>
							<!-- Post -->
							<tr>
								<td class="text-center"><a href="profile.html"><img alt="" src="img/flags/us.png"> &nbsp; <strong>John Doe</strong></a></td>
								<td>on <em>Jan 1, 2014 - 12:00am</em></td>
							</tr>

							<tr>
								<td></td>
								<td>
									<p>

										Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet.
										</p>
									<h5>Forecast Pie</h5>
									<span class="sparkline display-inline margin-bottom-10" data-sparkline-type="pie" data-sparkline-offset="90" data-sparkline-piesize="150px"> 33,20,10 </span>
									<p>
										Fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viv.
									</p><em>- John Doe
									<br>
									CEO, SmartAdmin</em>
								</td>
							</tr>
							<!-- end Post -->
							<tr>
								<td class="text-center" style="width: 12%;">
									<div class="push-bit">
										<!-- <a href="profile.html"> <img src="img/avatars/sunny.png" width="50" alt="avatar" class="online"> </a> -->
									</div><strong>ME</strong>
								</td>
								<td>
									<textarea rows="10" cols="130" name="isi" id="message" onkeyup="countChar(this)"></textarea>
									<div class="note">Tersisa :</div><div id="charNum"> 160</div>
									<div class="note">Karakter</div>
									<!-- <button class="btn btn-primary margin-top-10">
										Post
									</button> -->
									<button class="btn btn-success margin-top-10">
										Send
									</button>
								</td>
							</tr>
							<!-- end Post -->
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section> <!-- end widget grid -->
</div> <!-- END MAIN CONTENT -->
