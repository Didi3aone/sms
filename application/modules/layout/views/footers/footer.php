            <div class="loading-box"><div class="cssload-box-loading"></div></div>
        </div>
		<!-- END #MAIN PANEL -->
        <?php 
            $this->load->model('Dynamic_model');
            $log = $this->Dynamic_model->set_model("tbl_change_log","tcl","log_id")->get_all_data(array(
                "row_array" => true,
                "order_by" => array("log_id" => "desc")
            ))['datas'];
        ?>
        <div class="page-footer">
            <div class="row">
                <div class="col-xs-12 col-sm-6">
                    <span class="txt-color-white">MSSB <a href="<?php echo site_url('change-log'); ?>" target="_blank" style="color: white;" title="show change log">V <?php echo $log['log_curr_version'];?></a> <span class="hidden-xs"></span> © 2018</span>
                </div>
            </div>
        </div>

		<!-- #SHORTCUT AREA : With large tiles (activated via clicking user name tag)
			 Note: These tiles are completely responsive, you can add as many as you like -->
		<div id="shortcut">
			<ul>
				<li>
					<a href="<?= site_url(); ?>admin/change-profile" class="jarvismetro-tile big-cubes bg-color-blue"> <span class="iconbox"> <i class="fa fa-id-card-o fa-4x"></i> <span>Change Profile </span> </span> </a>
				</li>
                <li>
					<a href="<?= site_url(); ?>admin/change_password" class="jarvismetro-tile big-cubes bg-color-blue"> <span class="iconbox"> <i class="fa fa-key fa-4x"></i> <span>Change Password </span> </span> </a>
				</li>
			</ul>
		</div>
		<!-- END SHORTCUT AREA -->

		<!--================================================== -->

		<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)
		<script data-pace-options='{ "restartOnRequestAfter": true }' src="js/plugin/pace/pace.min.js"></script>-->


		<!-- #PLUGINS -->
		<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local-->
		<script src="<?= base_url(); ?>assets/js/jquery-1.12.4.min.js"></script>
		<script src="<?= base_url(); ?>assets/js/jquery-ui-1.12.1.min.js"></script>

		<!-- IMPORTANT: APP CONFIG -->
		<script src="<?= base_url(); ?>assets/js/app.config.seed.js"></script>
		<script src="<?= base_url(); ?>assets/js/plugins/smartwidgets/jarvis.widget.min.js"></script>
		<script src="<?= base_url(); ?>assets/js/plugins/jquery-touch/jquery.ui.touch-punch.min.js"></script>

		<!-- BOOTSTRAP JS -->
		<script src="<?= base_url(); ?>assets/js/bootstrap.min.js"></script>
		<script src="<?= base_url(); ?>assets/js/plugins/sweetalert.min.js"></script>
        <script src="<?= base_url(); ?>assets/js/plugins/SmartNotification.min.js"></script>

        <!-- form and validate js -->
        <script src="<?= base_url(); ?>assets/js/plugins/jquery.form.min.js"></script>
        <script src="<?= base_url(); ?>assets/js/plugins/jquery.validate.min.js"></script>
        <script src="<?= base_url(); ?>assets/js/plugins/validate-extension.js"></script>
        <!-- daterange picker -->
        <script src="<?= base_url(); ?>assets/js/smart-chat-ui/smart.chat.ui.min.js"></script>
        <script src="<?= base_url(); ?>assets/js/smart-chat-ui/smart.chat.manager.min.js"></script>
        <script src="<?= base_url(); ?>assets/js/plugins/moment.js"></script>
        <script src="<?= base_url(); ?>assets/js/plugins/bootstrap-daterangepicker-master/daterangepicker.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="<?= base_url(); ?>assets/js/plugins/bootstrap-daterangepicker-master/daterangepicker.css">

		<!--[if IE 8]>
			<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>
		<![endif]-->

		<!-- MAIN APP JS FILE -->
		<script src="<?= base_url(); ?>assets/js/app.js"></script>
		<script src="<?= base_url(); ?>assets/js/global.js"></script>
        <?php
        //snippet for javascript or anything else that you want to put at the last line...
        if (isset($css)) {
            if (is_array($css)) {
                foreach($css as $value) {
                    echo '<link rel="stylesheet" href="'.base_url($value).'" type="text/css"/>';
                }
            } else {
                echo '<link rel="stylesheet" href="'.base_url($css).'" type="text/css"/>';
            }
        }
        ?>

        <?php
        //snippet for javascript or anything else that you want to put at the last line...
        if (isset($script)) {
            if (is_array($script)) {
                foreach($script as $value) {
                    echo '<script src="'.base_url($value).'"></script>';
                }
            } else {
                echo '<script src="'.base_url($script).'"></script>';
            }
        }
        //snippet for get view js nav
        if(isset($view_js_nav)) {
            $this->load->view($view_js_nav);
        }
       
        ?>
        <script>
           var lastResponse = ''
           $(document).ready(function() {
                var d = new Date();
                var n = d.getTime();
                var urls = "<?php echo site_url('dashboard/counts_all'); ?>"+'?'+n;
                var url_sms = "<?php echo site_url('dashboard/count_sms'); ?>"+'?'+n;
                var url_notif = "<?php echo site_url('dashboard/count_notif'); ?>"+'?'+n;
                var url_chat = "<?php echo site_url('messenger/get_new_chat'); ?>"+'?'+n;
                
                setInterval(function() {
                    $("#total").load(urls);
                }, 2000);

                 setInterval(function() {
                    $("#total_sms").load(url_sms);
                    console.log(url_sms);
                }, 2500);

                setInterval(function() {
                    $("#total_chat").load(url_notif);
                }, 2500);

                setInterval(function() {
                   $("#message").load(url_chat);
                }, 2000);
           });

           $(document).on("click", ".klik", function(e) {
                e.stopPropagation();
                e.preventDefault();
                // var url = $(this).attr("href");
                var data_id = $(this).data("id");
                var data_name = $(this).data("name");
                var url = "<?= site_url('messenger/update_flag') ?>";
                $.ajax({
                    type: "post",
                    url: url,
                    cache: false,
                    data: {
                        id: data_id
                    },
                    dataType: 'json',
                    success: function(data) {
                        console.log(data);
                    },
                    error: function(error) {
                        console.log(error);
                    }
                });

            });

        </script>

        <!-- Your GOOGLE ANALYTICS CODE Below -->
        <script type="text/javascript">
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
            _gaq.push(['_trackPageview']);

            (function() {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();

        </script>

    </body>
</html>
