<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Dashboard Controller.
 * For Dashboard admin
 */
class Dashboard extends MX_Controller  {
    private $_title = "Dashboard";
    private $_title_page = '<i class="fa-fw fa fa-home"></i> Dashboard ';
    private $_active_page = "dashboard";
    private $_breadcrumb = "<li><a href='".MANAGER_HOME."'>Dashboard</a></li>";
    private $_back = "";
    private $_js = "";
    private $_view_folder = "dashboard/";

    /**
	 * constructor.
	 */
    public function __construct() {
        parent::__construct();

        if($this->session->userdata(IS_LOGIN_ADMIN) == FALSE) {
            redirect('login');
        }
    }

    public function index() {
        // pr($this->_dm->set_model("M_Item", "mitem", "ItemCode")->set_db_2()->get_all_data(array()));exit;
        $this->load->model('Dynamic_model');
        //information sinyal
        $sinyal_modem = $this->Dynamic_model->set_model("phones","ph","ID")->get_all_data()['datas'];

        $sent = $this->Dynamic_model->set_model("sentitems","si","ID")->get_all_data(array(
            "count_all_first" => true
        ));

        $out = $this->Dynamic_model->set_model("outbox","ot","ID")->get_all_data(array(
            "count_all_first" => true,
            "conditions" => array(
                "status IN ('SendingError','DeliveryFailed','DeliveryUnknown','Error')" => NULL)
        ));  

        $inb = $this->Dynamic_model->set_model("inbox","i","ID")->get_all_data(array(
            "count_all_first" => true
        ));  

        $log = $this->Dynamic_model->set_model("tbl_change_log","tcl","log_id")->get_all_data(array(
            "row_array" => true,
            "order_by" => array("log_id" => "desc")
        ))['datas'];

        $data = array(
            "datas"  => json_encode($sinyal_modem),
            "data"   => $sinyal_modem,
            "sent"   => $sent,
            "out"    => $out,
            "inbox"  => $inb,
            "log"    => $log
        );

        $header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> My Dashboard</span>',
            "active_page"   => $this->_active_page,
            "breadcrumb"    => $this->_breadcrumb,
        );

        $footer = array(
            "script" => array(
                "assets/js/plugins/flot/jquery.flot.cust.min.js",
                "assets/js/plugins/flot/jquery.flot.resize.min.js",
                "assets/js/plugins/flot/jquery.flot.fillbetween.min.js",
                "assets/js/plugins/flot/jquery.flot.orderBar.min.js",
                "assets/js/plugins/flot/jquery.flot.pie.min.js",
                "assets/js/plugins/flot/jquery.flot.time.min.js",
                "assets/js/plugins/flot/jquery.flot.tooltip.min.js" 
            ),
            "view_js_nav" => "dashboard/index_js"
        );

        //load the views.
        $this->load->view(MANAGER_HEADER,$header);
        $this->load->view($this->_view_folder . 'index', $data);
        $this->load->view(MANAGER_FOOTER, $footer);
    }

    public function counts_all()
    {
        $this->load->model('Dynamic_model');
        $notif_inbox  = $this->Dynamic_model->set_model("inbox","in","ID")->get_all_data(
            array(
                "status"            => -1,
                "count_all_first"   => true,
                "conditions"        => array("IsRead" => 0),
                "debug"             => false,
                "orderby"           => array("ID" => "desc")
            )
        );

        $sess = $this->session->userdata("user_id");
        $notif = $this->Dynamic_model->set_model("tbl_chat","tc","ChatId")->get_all_data(
            array(
                "status"            => -1,
                "count_all_first"   => true,
                "conditions"        => array("ChatToId" => $sess, "ChatIsRead" => STATUS_UNREAD),
                "debug"             => false,
                "orderby"           => array("ChatId" => "desc")
            )
        );

        $total = ($notif_inbox['total']) + ($notif['total']);
        $total = ($total) ? $total : 0;
        // echo '
        // <audio controls autoplay>
        //   <source src="horse.ogg" type="audio/ogg">
        //   <source src="'.base_url("assets/sound/voice_on.mp3").'" type="audio/mpeg">
        //   Your browser does not support the audio element.
        // </audio>'; 

        $this->output->set_content_type('application/json');
        echo json_encode($total);
        exit;
    }

    public function count_notif()
    {
        $this->load->model('Dynamic_model');
        $sess = $this->session->userdata("user_id");
        $notif = $this->Dynamic_model->set_model("tbl_chat","tc","ChatId")->get_all_data(
            array(
                "status"            => -1,
                "count_all_first"   => true,
                "conditions"     => array("ChatToId" => $sess,"ChatIsRead" => STATUS_UNREAD),
                "debug"              => false,
                "orderby"            => array("ChatId" => "desc")
            )
        );

        $total = $notif['total'];

        $this->output->set_content_type('application/json');
        echo json_encode($total);
        exit;
    }

    public function count_sms()
    {
        $this->load->model('Dynamic_model');
        $notif_inbox  = $this->Dynamic_model->set_model("inbox","in","ID")->get_all_data(
            array(
                "status"            => -1,
                "count_all_first"   => true,
                "conditions"        => array("IsRead" => 0),
                "debug"             => false,
                "orderby"           => array("ID" => "desc")
            )
        );

        $total = $notif_inbox['total'];

        $this->output->set_content_type('application/json');
        echo json_encode($total);
        exit;
    }
    public function notif ()
    {
        $this->load->view('dashboard/notifikasi');
    }
}
