<!-- MAIN CONTENT -->
<div id="content">
	<div class="row">
		<div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
			<h1 class="page-title txt-color-blueDark"><?= $title_page ?></h1>
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
						<h2>SMS SENT List</h2>
					</header>

					<!-- widget div-->
					<div>
						<!-- widget content -->
						<div class="widget-body no-padding">
							<table id="dataTable" class="table table-striped table-bordered table-hover" width="100%">
                                <thead>
                                    <tr>
                                        <th style="width:10px;"></th>
                                        <th class="hasinput" style="width:80px;">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <input type="text" id="name_filter" name="filter[template_name]" class="form-control filter-this" placeholder="Sent TO" />
                                                    <div class="input-group-btn"><button type="button" class="clear-filter btn"><i class="fa fa-close"></i></button></div>
                                                </div>
                                            </div>
                                        </th>
                                        <th style="width:330px;"></th>
                                       <!--  <th class="hasinput">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <input type="text" id="email_filter" name="filter[email]" class="form-control filter-this" placeholder="Email Admin" />
                                                    <div class="input-group-btn"><button type="button" class="clear-filter btn"><i class="fa fa-close"></i></button></div>
                                                </div>
                                            </div>
                                        </th> -->

                                     <!--    <th class="hasinput">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <input type="text" id="last_login_filter" name="filter[last_login]" class="form-control filter-this date-range-picker" placeholder="Last Login Date" readonly />
                                                    <div class="input-group-btn"><button class="btn open-calendar-button" type="button"><i class="fa fa-calendar" aria-hidden="true"></i></button></div>
                                                </div>
                                            </div>
                                        </th> -->
                                        <!-- <th style="width:60px">
                                            <div class="btn-group btn-group-sm" data-toggle="buttons">
                                                <label class="btn btn-default btn-sm active">
                                                    <input type="radio" class="filter-this" name="filter[status]" value="active" autocomplete="off" checked> Y
                                                </label>
                                                <label class="btn btn-default btn-sm">
                                                    <input type="radio" class="filter-this" name="filter[status]" value="inactive" autocomplete="off"> N
                                                </label>
                                            </div> -->
                                      <!--   </th>
                                        <th style="width:100px">
                                        </th> -->
                                    <th style="width:20px;"></th>
                                    <th  style="width:80px;"></th>
                                    </tr>
                                    <tr>
                                        <th data-hide="phone,tablet">ID</th>
                                        <th data-class="expand">Sent To </th>
                                        <th data-hide="phone"> Content</th>
                                        <th data-hide="phone"> Status</th>
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
</div> <!-- END MAIN CONTENT -->
