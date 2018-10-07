<!-- MAIN CONTENT -->
<div id="content">

    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
            <h1 class="page-title txt-color-blueDark"><?= $title_page ?></h1>
        </div>
    </div>
    <div class="row">
    	<!-- <marquee style="font-family:Book Antiqua; color: #FFFFFF" scrollamount="8">	 -->
			<div class="col-md-6">
				<div class="alert alert-info alert-dismissible fade in" style="margin-left: 10px;">
				    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				    <strong><?= greeting(); ?>!</strong> <b>( <?= $this->session->userdata('name'); ?> )</b> Welcome to SYSTEM MSSB V <?= $log['log_curr_version']; ?> 
				  </div>
			</div>
		<!-- </marquee> -->
	</div>
</div>


	<div class="col-md-3 col-sm-4">
		<div class="wrimagecard wrimagecard-topimage">
			<a href="#">
				<div class="wrimagecard-topimage_header" style="background-color:rgba(187, 120, 36, 0.1) ">
					<center><i class="fa fa-envelope-open" style="color:#BB7824"></i></center>
				</div>
				<div class="wrimagecard-topimage_title">
					<h4>Total Sent
						<div class="pull-right badge"><?= $sent['total']; ?></div>
					</h4>
				</div>
			</a>
		</div>
	</div>

	<div class="col-md-3 col-sm-4">
		<div class="wrimagecard wrimagecard-topimage">
			<a href="#">
				<div class="wrimagecard-topimage_header" style="background-color: rgba(22, 160, 133, 0.1)">
					<center><i class = "fa fa-envelope" style="color:#16A085"></i></center>
				</div>
				<div class="wrimagecard-topimage_title">
					<h4>Total Inbox
						<div class="pull-right badge" id="WrControls"> <?= $inbox['total'] ?> </div>
					</h4>
				</div>
			</a>
		</div>
	</div>

	<div class="col-md-3 col-sm-4">
		<div class="wrimagecard wrimagecard-topimage">
			<a href="#">
				<div class="wrimagecard-topimage_header" style="background-color: rgba(170, 201, 17, 0.1)">
					<center><i class="glyphicon glyphicon-remove" style="color:#C93211"></i></center>
				</div>
				<div class="wrimagecard-topimage_title">
					<h4>Total Failed
						<div class="pull-right badge" id="WrControls"> <?= $out['total']; ?> </div>
					</h4>
				</div>
			</a>
		</div>
	</div>
	<!-- <div class="col-md-6"> -->
		<!-- widget content -->
		<!-- <div class="widget-body no-padding">
			<center><p style="margin-top: 0;"><b><h3>Sinyal Information</b></h3></p></center>
			<div id="updating-chart" class="chart"></div>

		</div> -->
	<!-- </div> -->
	<!-- widget content -->
	<!-- <article class="col-sm-12 col-md-12 col-lg-6"> -->
		<!-- Widget ID (each widget will need unique ID)-->
		<!-- <div class="jarviswidget jarviswidget-color-greenDark" id="wid-id-2" data-widget-editbutton="false">
			<div>
				<div class="col-xs-6">
					<div class="widget-body no-padding">

						<div class="alert alert-info no-margin fade in">
							<button class="close" data-dismiss="alert">
								×
							</button>
							<i class="fa-fw fa fa-info"></i>
							Information Modem And Provider
						</div>
						<div class="table-responsive">

							<table class="table">
								<thead>
									<tr>
										<th>#</th>
										<th> <i class="fa fa-server"></i> Client Server</th>
										<th> <i class="fa fa-cubes"></i> Provider</th>
										<th> <i class="glyphicon glyphicon-send"></i> IMEI</th>
										<th>Modem</th>
									</tr>
								</thead>
								<tbody>
									<?php
										// $no = 1;
										// foreach($data as $key => $value) :
									?>
									<tr class="success">
										<td><?php //$no++; ?></td>
										<td><?php// $value['Client'] ?></td>
										<td><?php// $value['NetName'] ?></td>
										<td><?php// $value['IMEI'] ?></td>
										<td>WAVECOME FASTRACK</td>
									</tr>
									<?php //endforeach;?>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div> -->
	<!-- </article> -->
	<!-- end widget content -->
</div>
