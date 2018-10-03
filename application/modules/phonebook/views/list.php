<div id="content">
	<div class="row">
		<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
			<h1 class="page-title txt-color-blueDark">
				<i class="fa fa-table fa-fw "></i> 
					Table 
				<span>> 
					Normal Tables
				</span>
			</h1>
		</div>
		<div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
			<button type="button" class="btn btn-primary"><i class="fa fa-envelope"></i></button>
		</div>
	</div>

	<!-- widget grid -->
	<section id="widget-grid" class="">

		<div class="row">

			<!-- NEW WIDGET START -->
			<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

				<!-- Widget ID (each widget will need unique ID)-->
				<div class="jarviswidget" id="wid-id-4" data-widget-editbutton="false">
					<!-- widget options:
					usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

					data-widget-colorbutton="false"
					data-widget-editbutton="false"
					data-widget-togglebutton="false"
					data-widget-deletebutton="false"
					data-widget-fullscreenbutton="false"
					data-widget-custombutton="false"
					data-widget-collapsed="true"
					data-widget-sortable="false"

					-->
					<header>
						<span class="widget-icon"> <i class="fa fa-table"></i> </span>
						<h2>Condenced table + combined prev. classes </h2>

					</header>

					<!-- widget div-->
					<div>

						<!-- widget edit box -->
						<div class="jarviswidget-editbox">
							<!-- This area used as dropdown edit box -->

						</div>
						<!-- end widget edit box -->

						<!-- widget content -->
							<div class="table-responsive">
							
								<table class="table table-bordered table-striped table-condensed table-hover smart-form has-tickbox">
									<thead>
										<tr>
											<th>
												<!-- <label class="checkbox"> -->
													<input type="checkbox" name="checkbox-inline" id="selectAll">
												<!-- </label> -->
											</th>
											<th><input type="text" name=""></th>
											<th><input type="text" name=""></th>
											<th><input type="text" name=""></th>
											<!-- <th><input type="text" name=""></th> -->
										</tr>
									</thead>
									<tbody>
										<?php 
											foreach($datas as $row => $data) :
										?>
										<tr>
											<td>
												<label class="checkbox">
													<input type="checkbox" name="checkbox-inline" id="2">
													<i></i>
												</label>
											</td>
											<td><?= $data['UserDataId'] ?></td>
											<td><?= $data['UserDataName'] ?></td>
											<td><?= $data['UserMobilePhone'] ?></td>
										</tr>
										<?php endforeach;?>
									</tbody>
								</table>
							</div>							
						</div>
						<!-- end widget content -->
					</div>
					<!-- end widget div -->
				</div>
				<!-- end widget -->
			</article>
			<!-- WIDGET END -->
		</div>
		<!-- end row -->
	</section>
	<!-- end widget grid -->
</div>
<!-- END MAIN CONTENT-->