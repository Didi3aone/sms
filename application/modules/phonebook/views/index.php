<!--MAIN CONTENT -->
<div id="content">
	<div class="row">
		<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
			<h1 class="page-title txt-color-blueDark"><?= $title_page ?></h1>
		</div>
		<div class="col-xs-12 col-sm-5 col-md-5 col-lg-4 col-lg-offset-1 text-right">
			<h1>
                <form method="POST" action="<?php echo site_url('sms/create_sms_checkbox')?>">
	                <input id="id_sms" type="hidden" name="id_sms" value="0">
	                <button type="submit" id="btns" class="btn btn-success btn-click" style="display:none;">
						<i class="fa fa-envelope-o fa-lg"></i>
					</button>
					<!-- <a id="btn_1" class="btn btn-info btn-click" style="display:none;">
						<i class="fa fa-users fa-lg"></i>
					</button> -->
					<a class="btn btn-primary" href="<?= site_url(); ?>phonebook/create" rel="tooltip" title="Add new Number" data-placement="left">
						<i class="fa fa-plus fa-lg"></i>
					</a>
                <form>
			</h1>
		</div>
	</div>

	<!-- widget grid -->
	<section id="widget-grid" class="">
		<!-- row -->
		<div class="row">
			<!-- NEW WIDGET START -->
			<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<!-- Widget ID (each widget will need unique ID)-->
				<div class="jarviswidget jarviswidget-color-blueLight" id="wid-id-001"
					data-widget-editbutton="false"
					data-widget-deletebutton="false"
					data-widget-attstyle="jarviswidget-color-blueLight">

					<header>
						<span class="widget-icon"> <i class="fa fa-table"></i> </span>
						<h2>Phonebook List</h2>
					</header>

					<!-- widget div-->
					<div>
						<!-- widget content -->
						<div class="widget-body no-padding">
							<table id="dataTable" class="table table-striped table-bordered table-hover" width="100%">
                                <thead>
                                    <tr>
                                        <th class="hasinput" style="width:80px"> Check All</th>
										<th class="hasinput" style="width:80px"></th>
                                        <th class="hasinput">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <input type="text" id="username_filter" name="filter[name]" class="form-control filter-this" placeholder="Name" />
                                                    <div class="input-group-btn"><button type="button" class="clear-filter btn"><i class="fa fa-close"></i></button></div>
                                                </div>
                                            </div>
                                        </th>

                                        <th class="hasinput">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <input type="text" id="email_filter" name="filter[nohp]" class="form-control filter-this" placeholder="Mobile Phone" />
                                                    <div class="input-group-btn"><button type="button" class="clear-filter btn"><i class="fa fa-close"></i></button></div>
                                                </div>
                                            </div>
                                        </th>

                                        <th style="width:60px">
                                            <div class="btn-group btn-group-sm" data-toggle="buttons">
                                                <label class="btn btn-default btn-sm active">
                                                    <input type="radio" class="filter-this" name="filter[pengalaman]" value="YES" autocomplete="off" checked> Y
                                                </label>
                                                <label class="btn btn-default btn-sm">
                                                    <input type="radio" class="filter-this" name="filter[pengalaman]" value="NO" autocomplete="off"> N
                                                </label>
                                            </div>
                                        </th>

                                        <th style="width:80px">
                                            <div class="btn-group btn-group-sm" data-toggle="buttons">
                                                <label class="btn btn-default btn-sm active">
                                                    <input type="radio" class="filter-this" name="filter[sertifikat]" value="YES" autocomplete="off" checked> Y
                                                </label>
                                                <label class="btn btn-default btn-sm">
                                                    <input type="radio" class="filter-this" name="filter[sertifikat]" value="NO" autocomplete="off"> N
                                                </label>
                                            </div>
                                        </th>

                                        <th style="width:100px"></th>
                                    </tr>

                                    <tr>
                                        <th data-hide="phone,tablet">
                                            <input type="checkbox" name="id" id="select-all" value="">
										</th>
                                        <th data-hide="phone,tablet">Data ID</th>
                                        <th data-class="expand"> Name</th>
                                        <th data-hide="phone"> Number phone</th>
                                        <th data-hide="phone"> Pengalaman</th>
                                        <th data-class="expand"> Sertifikat</th>
                                        <th> Action</th>
                                    </tr>
                                </thead>

							</table>
						</div> <!-- end widget content -->
					</div> <!-- end widget div -->
				</div> <!-- end widget -->
			</article> <!-- WIDGET END -->
		</div> <!-- end row -->
	</section> <!-- end widget grid -->
</div> <!-- END MAIN CONTENT-->
