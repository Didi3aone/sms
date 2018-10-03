<body>
    <div class="video-w3l" data-vide-bg="assets/login/video/1">
        <!-- title -->
        <h1>
            <span>Please Login Here</span>
        </h1>
        <!-- //title -->
        <!-- content -->
        <div class="sub-main-w3">
            <form action="<?= site_url('login'); ?>" method="post">
                <div class="form-style-agile">
                    <label>
                        <i class="fas fa-user"></i>Username</label>
                    <input placeholder="Username" name="username" type="text" required="">
                </div>
                <div class="form-style-agile">
                    <label>
                        <i class="fas fa-unlock-alt"></i>Password</label>
                    <input placeholder="Password" name="password" type="password" required="">
                </div>
                <!-- switch -->
                <!-- <div class="checkout-w3l">
                    <div class="demo5">
                        <div class="switch demo3">
                            <input type="checkbox">
                            <label>
                                <i></i>
                            </label>
                        </div>
                    </div>
                    <a href="#">Remember Me</a>
                </div> -->
                <!-- //switch -->
                <input type="submit" value="Log In">
                <!-- social icons -->
                <!-- <div class="footer-social">
                    <h2>Or Login With</h2>
                    <ul>
                        <li>
                            <a href="#">
                                <i class="fab fa-facebook-f icon_facebook"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-twitter icon_twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-dribbble icon_dribbble"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-google-plus-g icon_g_plus"></i>
                            </a>
                        </li>
                    </ul>
                </div> -->
                <!-- //social icons -->
            </form>
        </div>
        <!-- //content -->