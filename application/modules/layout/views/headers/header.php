<!DOCTYPE html>
<html lang="en-us">
    <head>
        <meta charset="utf-8">
        <title> <?= $title . " | " . DEFAULT_TITLE_MANAGER ?> </title>
        <meta name="description" content="">
        <meta name="author" content="">

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- #CSS Links -->
        <!-- Basic Styles -->
        <link rel="stylesheet" type="text/css" media="screen" href="<?= base_url(); ?>assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="<?= base_url(); ?>assets/css/font-awesome.min.css">

        <!-- SmartAdmin Styles : Caution! DO NOT change the order -->
        <link rel="stylesheet" type="text/css" media="screen" href="<?= base_url(); ?>assets/css/smartadmin-production-plugins.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="<?= base_url(); ?>assets/css/smartadmin-production.css">
        <link rel="stylesheet" type="text/css" media="screen" href="<?= base_url(); ?>assets/css/smartadmin-skins.min.css">

        <link rel="stylesheet" type="text/css" media="screen" href="<?= base_url(); ?>assets/css/loading.css">
        <link rel="stylesheet" type="text/css" media="screen" href="<?= base_url(); ?>assets/css/animate.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="<?= base_url(); ?>assets/css/sweetalert.css">

        <link rel="stylesheet" type="text/css" media="screen" href="<?= base_url(); ?>assets/css/style.css">

        <!-- #GOOGLE FONT -->
        <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700&amp;subset=latin-ext" rel="stylesheet">

        <!-- FAVICON -->
        <link rel="apple-touch-icon" sizes="152x152" href="/logo/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/logo/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="/logo/favicon-16x16.png">
        <link rel="manifest" href="/logo/manifest.json">
        <link rel="mask-icon" href="/logo/safari-pinned-tab.svg" color="#5bbad5">
        <link rel="shortcut icon" href="/logo/favicon.ico">
        <meta name="msapplication-config" content="/logo/browserconfig.xml">
        <meta name="theme-color" content="#ffffff">

    </head>
    <body class="smart-style-2">

		<!-- #HEADER -->
		<header id="header">
			<div id="logo-group">
				<!-- PLACE YOUR LOGO HERE -->
				<!-- <span id="logo" style="color: white;"> MSSB</span> -->
				<span id="logo"> <img src="<?php echo base_url(); ?>assets/logo/sudarta.png" alt="Logo"> </span>
				<!-- END LOGO PLACEHOLDER -->
				<?php
					// $this->load->model('Dynamic_model');
					// $notif_inbox  = $this->Dynamic_model->set_model("inbox","in","ID")->get_all_data(
			  //           array(
			  //               "status"            => -1,
			  //               "count_all_first"   => true,
			  //               "conditions"		=> array("IsRead" => 0),
			  //               "debug"				=> false,
			  //               "orderby"			=> array("ID" => "desc")
			  //           )
			  //       );
					// $sess = $this->session->userdata("user_id");
			  //       $notif = $this->Dynamic_model->set_model("tbl_chat","tc","ChatId")->get_all_data(
			  //           array(
			  //               "status"            => -1,
			  //               "count_all_first"   => true,
			  //               "conditions"		=> array("ChatToId" => $sess,"ChatIsRead" => STATUS_UNREAD),
			  //               "debug"				=> false,
			  //               "orderby"			=> array("ChatId" => "desc")
			  //           )
			  //       );

			  //       $total = ($notif_inbox['total']) + ($notif['total']);
			        // $date = $notif_inbox['datas'][0]['ReceivingDateTime'];
				?>
				<!-- <div id="message">
					
				</div> -->

				<span id="activity" class="activity-dropdown"> <i class="fa fa-bell"></i> 
					<b class="badge" id="total"> </b> 
				</span>

				<!-- AJAX-DROPDOWN : control this dropdown height, look and feel from the LESS variable file -->
				<div class="ajax-dropdown">
 
					<!-- the ID links are fetched via AJAX to the ajax container "ajax-notifications" -->
					<div class="btn-group btn-group-justified" data-toggle="buttons">
						<?php 
							$level = $this->session->userdata("level");

							if($level == '3' || $level == '1') :
						?>
						<label class="btn btn-default">
							<input type="radio" name="activity" id="<?= site_url('dashboard/notif'); ?>">
							SMS (<b id="total_sms"></b>) </label>
						<?php else: ?>
						<label class="btn btn-default">
							<input type="radio" name="activity" id="<?= site_url('messenger/notif'); ?>">
							Notifikasi (<b id="total_chat"></b>) </label>
						<?php endif;?>
					</div>

					<!-- notification content -->
					<div class="ajax-notifications custom-scroll">

						<div class="alert alert-transparent">
							<h4>Click a button to show messages here</h4>
							<!-- This blank page message helps protect your privacy, or you can show the first message here automatically. -->
						</div>
						<i class="fa fa-lock fa-4x fa-border"></i>
					</div>
					<!-- end notification content -->

					<!-- footer: refresh area -->
					<span> Last updated on: <?= date('Y-m-d H:i:s'); ?>
						<button type="button" data-loading-text="<i class='fa fa-refresh fa-spin'></i> Loading..." class="btn btn-xs btn-default pull-right">
							<i class="fa fa-refresh"></i>
						</button>
					</span>
				</div>
				<!-- END AJAX-DROPDOWN -- -->

			</div>

			<!-- #TOGGLE LAYOUT BUTTONS -->
			<!-- pulled right: nav area -->
			<div class="pull-right">

				<!-- collapse menu button -->
				<div id="hide-menu" class="btn-header pull-right">
					<span> <a href="javascript:void(0);" data-action="toggleMenu" title="Collapse Menu"><i class="fa fa-reorder"></i></a> </span>
				</div>
				<!-- end collapse menu -->

				<!-- logout button -->
				<div id="logout" class="btn-header transparent pull-right">
					<span> <a href="<?= site_url('logout'); ?>" title="Sign Out" data-action="userLogout" data-logout-msg="You can improve your security further after logging out by closing this opened browser"><i class="fa fa-sign-out"></i></a> </span>
				</div>
				<!-- end logout button -->

				<!-- fullscreen button -->
				<!-- <div id="fullscreen" class="btn-header transparent pull-right">
					<span> <a href="javascript:void(0);" data-action="launchFullscreen" title="Full Screen"><i class="fa fa-arrows-alt"></i></a> </span>
				</div> -->
				<!-- end fullscreen button -->

                <!-- clear local storage button -->
				<div id="reset" class="btn-header transparent pull-right">
					<span> <a title="Reset UI" data-action="resetWidgets"><i class="fa fa-history"></i></a> </span>
				</div>
				<!-- end clear local storage button -->

			</div>
			<!-- end pulled right: nav area -->

		</header>
		<!-- END HEADER -->

        <!-- #NAVIGATION -->
		<!-- Left panel : Navigation area -->
		<!-- Note: This width of the aside area can be adjusted through LESS/SASS variables -->
		<aside id="left-panel">

			<!-- User info -->
			<div class="login-info">
				<span> <!-- User image size is adjusted inside CSS, it should stay as is -->

					<a href="javascript:void(0);" id="show-shortcut" data-action="toggleShortcut">
						<!-- <img src="/logo/favicon-32x32.png" alt="me" class="online" /> -->
						<span>
							<?= $this->session->userdata('name'); ?>
						</span>
						<i class="fa fa-angle-down"></i>
					</a>

				</span>
			</div>
			<!-- end user info -->

			<!-- NAVIGATION : This navigation is also responsive

			To make this navigation dynamic please make sure to link the node
			(the reference to the nav > ul) after page load. Or the navigation
			will not initialize.
			-->
			<nav>
				<!--
				NOTE: Notice the gaps after each icon usage <i></i>..
				Please note that these links work a bit different than
				traditional href="" links. See documentation for details.
				-->

				<ul>
					<li class="dashboard">
						<a href="<?= site_url(); ?>"><i class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">Dashboard</span></a>
					</li>
					<?php 
						$level 		= $this->session->userdata("level");
						$level_name = $this->session->userdata("level_name");
					?>
					<?php 
						if( $level == "3" || $level_name == "OPERATOR") :
					?>
                    <!-- Dashboard and Statuses -->
					<li class="dashboard">
						<a href="<?= site_url(); ?>"><i class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">Dashboard</span></a>
					</li>
                    <!-- Customer Processed Data Module -->
                   <!--  <li class="customer">
						<a href="/customer/master-customer" title="List Customer"><i class="fa fa-lg fa-fw fa-id-card"></i> <span class="menu-item-parent">Customer</span></a>
					</li> -->
                    <!-- Statics Processed Data Module -->
                    <li class="">
						<a href="#"><i class="fa fa-lg fa-fw fa-envelope"></i> <span class="menu-item-parent">SMS</span></a>
                        <ul>
							<li class="<?= (isset($active_page) && $active_page == "SMS-CREATE") ? "active" :"" ?>">
								<a href="#" title="Create SMS"><span class="menu-item-parent"><i class="fa fa-lg fa-fw fa-pencil"></i> Create</span></a>
								<ul>
									<li class="<?= (isset($active_page) && $active_page == "SMS-CREATE-PERSONAL") ? "active" :"" ?>">
										<a href="<?= site_url('sms/create_personal'); ?>">
                                        Personal</a>
                                    </li>
									<li class="<?= (isset($active_page) && $active_page == "SMS-CREATE_GROUP") ? "active" :"" ?>">
                                        <a href="<?= site_url('sms/create_group'); ?>">
                                        	Broadcast to group</a>
                                    </li>
                                    <!-- <li class="<?php ?>
                                        <a href="<?php// site_url('sms/create_schedule'); ?>">
                                        	 SMS Schedule <b>(BETTA)</b></a>
                                    </li> -->
								</ul>
							</li>
                            <li class="<?= (isset($active_page) && $active_page == "SMS-INBOX") ? "active" :"" ?>">
								<a href="<?= site_url("sms/inbox"); ?>" title="Inbox"><span class="menu-item-parent"><i class="fa fa-lg fa-fw fa-envelope-open"></i> Inbox</span></a>
							</li>
                            <li class="<?= (isset($active_page) && $active_page == "SMS-OUTBOX") ? "active" :"" ?>">
								<a href="<?= site_url("sms/outbox"); ?>" title="Outbox"><span class="menu-item-parent"><i class="fa fa-lg fa-fw fa-paper-plane"></i> Outbox</span></a>
							</li>
							<li class="<?= (isset($active_page) && $active_page == "SMS-SENT") ? "active" :"" ?>">
								<a href="<?= site_url("sms/sent"); ?>" title="Sent"><span class="menu-item-parent"><i class="fa fa-lg fa-fw fa-check-square"></i> Sent</span></a>
							</li>
						</ul>

						<li class="">
							<a href="#"><i class="fa fa-lg fa-fw fa-upload"></i> <span class="menu-item-parent">Upload Data</span></a>
	                        <ul>
								<li class="<?= (isset($active_page) && $active_page == "import") ? "active" : ""; ?>">
									<a href="<?= site_url('upload/import');?>" title="Upload Data"><span class="menu-item-parent">Upload File</span></a>
								</li>
							</ul>
						</li>

						<li class="">
							<a href="#"><i class="fa fa-lg fa-fw fa-address-book"></i> <span class="menu-item-parent">Phonebook</span></a>
	                        <ul>
								<li class="<?= (isset($active_page) && $active_page == "Phonebook-list") ? "active" : ""; ?>">
									<a href="<?= site_url('phonebook');?>" title="List Phonebook"><span class="menu-item-parent">List</span></a>
								</li>
								<li class="<?= (isset($active_page) && $active_page == "Phonebook-create") ? "active" : ""; ?>">
									<a href="<?= site_url('phonebook/create'); ?>" title="Create Phonebook"><span class="menu-item-parent">Create</span></a>
								</li>
							</ul>
						</li>
					<?php elseif($level == "2" || $level_name == "INPSPECTOR") :?>
                    <!-- Admin Module -->
                    <li class="">
						<a href="#"><i class="fa fa-lg fa-fw fa-envelope-square"></i> <span class="menu-item-parent">Template SMS</span></a>
                        <ul>
							<li class="<?= (isset($active_page) && $active_page == "template-list") ? "active" : ""; ?>">
								<a href="<?= site_url('template'); ?>" title="List Template"><span class="menu-item-parent">List Template</span></a>
							</li>
							<li class="<?= (isset($active_page) && $active_page == "template-create") ? "active" : ""?>">
								<a href="<?= site_url('template/create'); ?>" title="Create Template"><span class="menu-item-parent">Create Template</span></a>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#"><i class="fa fa-lg fa-fw fa-comment"></i> <span class="menu-item-parent">Messenger</span></a>
                        <ul>
							<li class="<?= (isset($active_page) && $active_page == "messenger") ? "active" : ""; ?>">
								<a href="<?= site_url('messenger');?>" title="messenger"><span class="menu-item-parent">Send Message</span></a>
							</li>
						</ul>
					</li>
					<?php else : ?>
					<li class="">
						<a href="#"><i class="fa fa-lg fa-fw fa-envelope"></i> <span class="menu-item-parent">SMS</span></a>
                        <ul>
							<li class="<?= (isset($active_page) && $active_page == "SMS-CREATE") ? "active" :"" ?>">
								<a href="#" title="Create SMS"><span class="menu-item-parent"><i class="fa fa-lg fa-fw fa-pencil"></i> Create</span></a>
								<ul>
									<li class="<?= (isset($active_page) && $active_page == "SMS-CREATE-PERSONAL") ? "active" :"" ?>">
										<a href="<?= site_url('sms/create_personal'); ?>">
                                        Personal</a>
                                    </li>
									<li class="<?= (isset($active_page) && $active_page == "SMS-CREATE_GROUP") ? "active" :"" ?>">
                                        <a href="<?= site_url('sms/create_group'); ?>">
                                        	Broadcast to group</a>
                                    </li>
                                    <!-- <li class="<?php ?>
                                        <a href="<?php// site_url('sms/create_schedule'); ?>">
                                        	 SMS Schedule <b>(BETTA)</b></a>
                                    </li> -->
								</ul>
							</li>
						</ul>
					</li>
					<li class="">
						<a href="#"><i class="fa fa-lg fa-fw fa-map"></i> <span class="menu-item-parent">Area</span></a>
                        <ul>
							<li class="<?= (isset($active_page) && $active_page == "group") ? "active" : ""; ?>">
								<a href="<?= site_url('group');?>" title="List Area"><span class="menu-item-parent">List Area</span></a>
							</li>
							<li class="<?= (isset($active_page) && $active_page == "group-create") ? "active" : ""; ?>">
								<a href="<?= site_url('group/create'); ?>" title="Create Area"><span class="menu-item-parent">Create Area</span></a>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#"><i class="fa fa-lg fa-fw fa-envelope-square"></i> <span class="menu-item-parent">Template SMS</span></a>
                        <ul>
							<li class="<?= (isset($active_page) && $active_page == "template-list") ? "active" : ""; ?>">
								<a href="<?= site_url('template'); ?>" title="List Template"><span class="menu-item-parent">List Template</span></a>
							</li>
							<li class="<?= (isset($active_page) && $active_page == "template-create") ? "active" : ""?>">
								<a href="<?= site_url('template/create'); ?>" title="Create Template"><span class="menu-item-parent">Create Template</span></a>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#"><i class="fa fa-lg fa-fw fa-folder-open"></i> <span class="menu-item-parent">Kategori</span></a>
                        <ul>
							<li class="<?= (isset($active_page) && $active_page == "kategori") ? "active" : ""; ?>">
								<a href="<?= site_url('kategori');?>" title="List Kategori"><span class="menu-item-parent">List Kategori</span></a>
							</li>
							<li class="<?= (isset($active_page) && $active_page == "kategori-create") ? "active" : ""; ?>">
								<a href="<?= site_url('kategori/create'); ?>" title="Create Kategori"><span class="menu-item-parent">Create Kategori</span></a>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#"><i class="fa fa-lg fa-fw fa-address-book"></i> <span class="menu-item-parent">Phonebook</span></a>
                        <ul>
							<li class="<?= (isset($active_page) && $active_page == "Phonebook-list") ? "active" : ""; ?>">
								<a href="<?= site_url('phonebook');?>" title="List Phonebook"><span class="menu-item-parent">List</span></a>
							</li>
							<li class="<?= (isset($active_page) && $active_page == "Phonebook-create") ? "active" : ""; ?>">
								<a href="<?= site_url('phonebook/create'); ?>" title="Create Phonebook"><span class="menu-item-parent">Create</span></a>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#"><i class="fa fa-lg fa-fw fa-comment"></i> <span class="menu-item-parent">Messenger</span></a>
                        <ul>
							<li class="<?= (isset($active_page) && $active_page == "messenger") ? "active" : ""; ?>">
								<a href="<?= site_url('messenger');?>" title="messenger"><span class="menu-item-parent">Send Message</span></a>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#"><i class="fa fa-lg fa-fw fa-upload"></i> <span class="menu-item-parent">Upload Data</span></a>
                        <ul>
							<li class="<?= (isset($active_page) && $active_page == "import") ? "active" : ""; ?>">
								<a href="<?= site_url('upload/import');?>" title="Upload Data"><span class="menu-item-parent">Upload File</span></a>
							</li>
						</ul>
					</li>
					<li class="">
						<a href="#"><i class="fa fa-lg fa-fw fa-user"></i> <span class="menu-item-parent">User Management</span></a>
                        <ul>
							<li class="<?= (isset($active_page) && $active_page == "list") ? "active" : ""; ?>">
								<a href="<?= site_url('admin');?>" title="Upload Data"><span class="menu-item-parent">List Administrator </span></a>
							</li>
						</ul>
					</li>
					<?php endif;?>
				</ul>
			</nav>

			<span class="minifyme" data-action="minifyMenu"> <i class="fa fa-arrow-circle-left hit"></i> </span>

		</aside>
		<!-- END NAVIGATION -->

		<!-- #MAIN PANEL -->
		<div id="main" role="main">

			<!-- RIBBON -->
			<div id="ribbon">

				<span class="ribbon-button-alignment">
					<span id="refresh" onclick="location.reload();" class="btn btn-ribbon" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reload this page." data-html="true">
						<i class="fa fa-refresh"></i>
					</span>
				</span>

				<div id="message">
					
				</div>
				<!-- <div class="pull-right" id="alerts" style="display: none; margin-right: 10px; margin-top: 10px;">
		            <div class="alert alert-success">
		                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
		                    ×</button>&nbsp;
		               <span class="glyphicon glyphicon-bell"></span <strong>Information &nbsp;</strong>
		                <hr class="message-inner-separator">
		                <p id="message">
		                  You successfully read this important alert message.</p>
		            </div>
		        </div> -->

				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<?= isset($breadcrumb) ? $breadcrumb : "" ?>
				</ol>
				<!-- end breadcrumb -->

				<!-- You can also add more buttons to the
				ribbon for further usability

				Example below:

				<span class="ribbon-button-alignment pull-right">
				<span id="search" class="btn btn-ribbon hidden-xs" data-title="search"><i class="fa-grid"></i> Change Grid</span>
				<span id="add" class="btn btn-ribbon hidden-xs" data-title="add"><i class="fa-plus"></i> Add</span>
				<span id="search" class="btn btn-ribbon" data-title="search"><i class="fa-search"></i> <span class="hidden-mobile">Search</span></span>
				</span> -->
			</div>
			<!-- END RIBBON -->
