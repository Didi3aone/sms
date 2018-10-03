<!-- copyright -->
        <div class="footer">
            <p>&copy; 2018 All rights reserved 
                <!-- | Design by -->
                <!-- <a href="http://w3layouts.com">W3layouts</a> -->
            </p>
        </div>
        <!-- //copyright -->
    </div>
    <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>assets/css/sweetalert.css">
    
    <!-- Jquery -->
    <script src="<?= base_url(); ?>assets/login/js/jquery-2.2.3.min.js"></script>
    <!-- //Jquery -->

    <!-- Video js -->
    <script src="<?= base_url(); ?>assets/login/js/jquery.vide.min.js"></script>
    <!-- //Video js -->
    <!-- swal -->
    <script src="<?= base_url(); ?>assets/js/plugins/sweetalert.min.js"></script>
    <!--//end  -->

    <script>
        <?php 
            if($this->session->flashdata("message")) { ?>
                var alert = "<?= $this->session->flashdata('message') ?>";

                swal("Warning", "Username Or password do not match","error");
                <?php
            }
        ?>
    </script>
    
</body>

</html>