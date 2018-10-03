<!DOCTYPE html>
<html>
<head>
	<title>Change log Version</title>
	<link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<script src="<?= base_url(); ?>assets/js/jquery-1.12.4.min.js"></script>
	<script src="<?= base_url(); ?>assets/js/bootstrap.min.js"></script>
	<style type="text/css" media="screen">
		.shape{    
			border-style: solid; border-width: 0 70px 40px 0; float:right; height: 0px; width: 0px;
			-ms-transform:rotate(360deg); /* IE 9 */
			-o-transform: rotate(360deg);  /* Opera 10.5 */
			-webkit-transform:rotate(360deg); /* Safari and Chrome */
			transform:rotate(360deg);
		}
		.offer{
			background:#fff; border:1px solid #ddd; box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2); margin: 15px 0; overflow:hidden;
		}
		.offer:hover {
		    -webkit-transform: scale(1.1); 
		    -moz-transform: scale(1.1); 
		    -ms-transform: scale(1.1); 
		    -o-transform: scale(1.1); 
		    transform:rotate scale(1.1); 
		    -webkit-transition: all 0.4s ease-in-out; 
			-moz-transition: all 0.4s ease-in-out; 
			-o-transition: all 0.4s ease-in-out;
			transition: all 0.4s ease-in-out;
		 }
		.shape {
			border-color: rgba(255,255,255,0) #d9534f rgba(255,255,255,0) rgba(255,255,255,0);
		}
		.offer-radius{
			border-radius:7px;
		}
		.offer-danger {	border-color: #d9534f; }
		.offer-danger .shape{
			border-color: transparent #d9534f transparent transparent;
		}
		.offer-success {	border-color: #5cb85c; }
		.offer-success .shape{
			border-color: transparent #5cb85c transparent transparent;
		}
		.offer-default {	border-color: #999999; }
		.offer-default .shape{
			border-color: transparent #999999 transparent transparent;
		}
		.offer-primary {	border-color: #428bca; }
		.offer-primary .shape{
			border-color: transparent #428bca transparent transparent;
		}
		.offer-info {	border-color: #5bc0de; }
		.offer-info .shape{
			border-color: transparent #5bc0de transparent transparent;
		}
		.offer-warning {	border-color: #f0ad4e; }
		.offer-warning .shape{
			border-color: transparent #f0ad4e transparent transparent;
		}

		.shape-text{
			color:#fff; font-size:12px; font-weight:bold; position:relative; right:-40px; top:2px; white-space: nowrap;
			-ms-transform:rotate(30deg); /* IE 9 */
			-o-transform: rotate(360deg);  /* Opera 10.5 */
			-webkit-transform:rotate(30deg); /* Safari and Chrome */
			transform:rotate(30deg);
		}	
		.offer-content{
			padding:0 20px 10px;
		}
		@media (min-width: 487px) {
		  .container {
		    max-width: 750px;
		  }
		  .col-sm-6 {
		    width: 50%;
		  }
		}
		@media (min-width: 900px) {
		  .container {
		    max-width: 970px;
		  }
		  .col-md-4 {
		    width: 33.33333333333333%;
		  }
		}

		@media (min-width: 1200px) {
		  .container {
		    max-width: 1170px;
		  }
		  .col-lg-3 {
		    width: 25%;
		  }
		  }
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<?php 
				foreach($datas as $key => $val) :
					$title       = $val['log_title'];
					$version 	 = $val['log_curr_version'];
					$description = $val['log_description'];
					$date 		 = $val['log_date'];
					$author      = $val['log_author'];
			?>
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="offer offer-info">
					<div class="shape">
						<div class="shape-text">
							<?= $version; ?>						
						</div>
					</div>
					<div class="offer-content">
						<h3 class="lead">
							<?= $title; ?>
						</h3>						
						<p>
							<?= $description; ?>
							<br> 
						</p>
					</div>
				</div>
				<?= $date; ?> author :
				<?= $author; ?>
			</div>
			<?php endforeach;?>
		</div><br/>

		<!-- Trigger the modal with a button -->
	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">View License</button>

		<!-- Modal -->
	</div>
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">MIT License </h4>
				</div>
				<div class="modal-body">
					<p>
						Copyright (c) 2018 Didi triawan <br/>

						Permission is hereby granted, free of charge, to any person obtaining a copy
						of this software and associated documentation files (the "Software"), to deal
						in the Software without restriction, including without limitation the rights
						to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
						copies of the Software, and to permit persons to whom the Software is
						furnished to do so, subject to the following conditions:

						The above copyright notice and this permission notice shall be included in all
						copies or substantial portions of the Software.

						THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
						IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
						FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
						AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
						LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
						OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
						SOFTWARE.

					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
</body>
</html>