<?php
defined('BASEPATH') OR exit('No direct script access allowed');

    class Messenger extends CI_Controller {

    	private $_title = "Messenger";
        private $_title_page = '<i class="fa-fw fa fa-user"></i> Messenger ';
        private $_breadcrumb = "<li><a href='".MANAGER_HOME."'>Home</a></li>";
        private $_active_page = "messenger";
        private $_back = "Messenger";
        private $_js_view = "messenger/";
        private $_view_folder = "messenger/";

        protected $_id;
        protected $_header;
        protected $_footer;

    	public function __construct() {
    		parent::__construct();
    	}

    	/**
    	* Function list phonebook
    	* author : didi
    	*/
    	public function index()
    	{
    		//set header attribute.
            $this->_header = array(
                "title"         => $this->_title,
                "title_page"    => $this->_title_page . '<span>> Messenger </span>',
                "active_page"   => $this->_active_page,
                "breadcrumb"    => $this->_breadcrumb . '<li>User Online </li>',
            );

            //set footer attribute (additional script and css).
            $this->_footer = array(
                "view_js_nav"  => $this->_js_view.'list_js',
                "script"       => array(
                    "assets/js/plugins/datatables/jquery.dataTables.min.js",
                    "assets/js/plugins/datatables/dataTables.bootstrap.min.js",
                    "assets/js/plugins/datatable-responsive/datatables.responsive.min.js",
                    "assets/js/dataTables.checkboxes.min.js"
                    //$this->_js_path . "list.js",
                ),
            );

            //load the views.
            $this->load->view(MANAGER_HEADER , $this->_header);
            $this->load->view($this->_view_folder . 'index');
            $this->load->view(MANAGER_FOOTER , $this->_footer);
    	}


        public function send_msg($id = null, $ChatId = null)
        {
            $this->load->model("Dynamic_model");

            $chat = $this->session->userdata('user_id');
            $data['datas'] = $this->Dynamic_model->set_model("tbl_user","tu","user_id")->get_all_data(array(
                "conditions" => array("user_id" => $id),
                "row_array"  => true
            ))['datas'];

            $data['chat'] = $this->Dynamic_model->set_model("tbl_chat","tc","ChatId")->get_all_data(array(
                "conditions" => array("ChatFromId" => $chat),
                "row_array" => true
            ))['datas'];

            $result = $this->Dynamic_model->set_model("tbl_chat","tc","ChatId")->update(array(
                "ChatIsRead" => STATUS_READ,
            ),array( "ChatId" => $ChatId));

            // pr($result);exit;
            //set header attribute.
            $this->_header = array(
                "title"         => $this->_title,
                "title_page"    => $this->_title_page . '<span>> Messenger </span>',
                "active_page"   => $this->_active_page,
                "breadcrumb"    => $this->_breadcrumb . '<li>Messenger </li>',
            );

            //set footer attribute (additional script and css).
            $this->_footer = array(
                "view_js_nav"  => $this->_js_view.'send_js',
                "script"       => array(
                    "assets/js/plugins/datatables/jquery.dataTables.min.js",
                    "assets/js/plugins/datatables/dataTables.bootstrap.min.js",
                    "assets/js/plugins/datatable-responsive/datatables.responsive.min.js",
                    "assets/js/dataTables.checkboxes.min.js"
                    //$this->_js_path . "list.js",
                ),
            );

            //load the views.
            $this->load->view(MANAGER_HEADER , $this->_header);
            $this->load->view($this->_view_folder . 'send', $data);
            $this->load->view(MANAGER_FOOTER , $this->_footer);
        }

        public function view_msg($id = null)
        {
            $this->load->model("Dynamic_model");

            $data['datas'] = $this->Dynamic_model->set_model("tbl_user","tu","user_id")->get_all_data(array(
                "conditions" => array("user_id" => $id),
                "row_array"  => true
            ))['datas'];

            //set header attribute.
            $this->_header = array(
                "title"         => $this->_title,
                "title_page"    => $this->_title_page . '<span>> Messenger </span>',
                "active_page"   => $this->_active_page.'-list',
                "breadcrumb"    => $this->_breadcrumb . '<li>Messenger </li>',
            );

            // $this->Dynamic_model->set_model("tbl_chat","tc","ChatId")->update(array(
            //     "ChatIsRead" => 
            // ));
            //set footer attribute (additional script and css).
            $this->_footer = array(
                "view_js_nav"  => $this->_js_view.'send_js',
                "script"       => array(
                    "assets/js/plugins/datatables/jquery.dataTables.min.js",
                    "assets/js/plugins/datatables/dataTables.bootstrap.min.js",
                    "assets/js/plugins/datatable-responsive/datatables.responsive.min.js",
                    "assets/js/dataTables.checkboxes.min.js"
                    //$this->_js_path . "list.js",
                ),
            );

            //load the views.
            $this->load->view(MANAGER_HEADER , $this->_header);
            $this->load->view($this->_view_folder . 'send', $data);
            $this->load->view(MANAGER_FOOTER , $this->_footer);
        }

        /**
         * Function to get list_all_data admin
         */
        public function list_all_data() {
            //must ajax and must get.
            if (!$this->input->is_ajax_request() || $this->input->method(true) != "GET") {
                exit('No direct script access allowed');
            }

            //load model
            $this->load->model('Dynamic_model');

            //sanitize and get inputed data
            $sort_col = sanitize_str_input($this->input->get("order")['0']['column'], "numeric");
            $sort_dir = sanitize_str_input($this->input->get("order")['0']['dir']);
            $limit = sanitize_str_input($this->input->get("length"), "numeric");
            $start = sanitize_str_input($this->input->get("start"), "numeric");
            $search = sanitize_str_input($this->input->get("search")['value']);
            $filter = $this->input->get("filter");

            $select = array(
                'user_id',
                'user_full_name',
                'user_email',
                'user_login_time',
                'IF(user_is_state = 1,"LOGIN","LOGOUT") as state_log',
                'IF(user_is_active = 1,"ONLINE","OFFLINE") as state_act',
                'tur.RoleName as level'
            );

            $joined = array("tbl_user_role tur" => array("tur.RoleId" => "tu.user_role_id"));

            $sort_col = preg_match('/^[A-Z\d]+$/i',$sort_col);

            $column_sort = $select[$sort_col];
            $id = $this->session->userdata("user_id");
            //initialize.
            $data_filters = array();
            $conditions = array("user_id NOT IN('".$id."')" => NULL );
            $status = STATUS_ACTIVE;

            if (count ($filter) > 0) {
                foreach ($filter as $key => $value) {
                    $value = sanitize_str_input($value);
                    switch ($key) {
                        case 'id':
                            if ($value != "") {
                                $data_filters['lower(user_id)'] = $value;
                            }
                            break;

                        case 'name':
                            if ($value != "") {
                                $data_filters['lower(user_full_name)'] = $value;
                            }
                            break;

                        case 'username':
                            if ($value != "") {
                                $data_filters['lower(username)'] = $value;
                            }
                            break;

                        case 'role':
                            if ($value != "") {
                                $data_filters['lower(tur.RoleName)'] = $value;
                            }
                            break;

                        case 'last_login':
                            if ($value != "") {
                                $date = parse_date_range($value);
                                $conditions["cast(last_login_time as date) <="] = $date['end'];
                                $conditions["cast(last_login_time as date) >="] = $date['start'];

                            }
                            break;

                        default:
                            break;
                    }
                }
            }

            //get data
            $datas = $this->Dynamic_model->set_model("tbl_user","tu","user_id")->get_all_data(array(
                'select' => $select,
                'joined' => $joined,
                'order_by' => array($column_sort => $sort_dir),
                'limit' => $limit,
                'start' => $start,
                'conditions' => $conditions,
                'filter' => $data_filters,
                'status' => $status,
                "count_all_first" => true,
            ));

            //get total rows
            $total_rows = $datas['total'];

            $output = array(
                "data" => $datas['datas'],
                "draw" => intval($this->input->get("draw")),
                "recordsTotal" => $total_rows,
                "recordsFiltered" => $total_rows,
            );

            //encoding and returning.
            $this->output->set_content_type('application/json');
            echo json_encode($output);
            exit;
        }

        public function load_chat ( $id = null)
        {
            // $id = $this->session->userdata("user_id");
            $this->load->model('Chat_model');

            // pr($datas);exit;
            $data = $this->Chat_model->get_chat($id);
            // pr($data);exit;
            
            foreach ($data as $key => $val) {
                $class = ($val['ChatToId']) ? "panel-danger" : "panel-primary"; 
                $color = ($val['ChatToId']) ? "blue" : "red"; 
                echo "<li class='message'>";
                echo "<div class='username' style='color:".$color.";'>";
                echo $val['user_full_name'];
                echo "</div>";
                echo "<div class='message-text'>";
                echo "<time>";
                echo $val['ChatDate'];
                echo "</time>";
                echo '<div class="panel '.$class.'">';
                echo '<div class="panel-body">';
                echo $val['ChatContent'];
                echo '</div>';
                echo '</div>';
                echo "</div>";
                echo "</div>";
                echo "</li>";
            } 
        }

        public function _get_id( $id = null) {
            //load the model.
            $this->load->model('Dynamic_model');

            $data = $this->Dynamic_model->set_model("tbl_chat","tc","ChatId")->get_all_data(array(
                "conditions" => array("ChatId" => $id)
            ))['datas'];
        }

        public function process_form() {
            //must ajax and must post.
            if (!$this->input->is_ajax_request() || $this->input->method(true) != "POST") {
                exit('No direct script access allowed');
            }

            //load form validation lib.
            $this->load->library('form_validation');

            //load the model.
            $this->load->model('Dynamic_model');

            //initial.
            $message['is_error'] = true;

            //sanitize input (id is primary key, if from edit, it has value).
            $id          = $this->input->post('id');
            $message     = $this->input->post('content');
            $file        = $this->input->post('file');
            $to_id       = $this->input->post('to_id');
            $from_id     = $this->session->userdata('user_id');
            $name_from   = $this->session->userdata('name');
            $name_to     = $this->input->post('name_to');
            $now         = date('Y-m-d H:i:s');

            $this->form_validation->set_rules("content","Message","required");

            //checking.
            if ($this->form_validation->run() == FALSE) {
                //validation failed.
                $message['error_msg'] = validation_errors();
            } else {

                //begin transaction.
                $this->db->trans_begin();

                //validation success, prepare array to DB.
                $_save_data = array(
                    'ChatFromId'  => $from_id,
                    'ChatToId'    => $to_id,
                    'ChatContent' => $message,
                    'ChatFromName' => $name_from,
                    'ChatToName'   => $name_to
                );

                //insert or update?
                if ($id == "") {
                    //insert to DB.
                    $_save_data['ChatDate'] = $now;

                    $result = $this->Dynamic_model->set_model("tbl_chat")->insert($_save_data);

                    //end transaction.
                    if ($this->db->trans_status() === FALSE) {
                        $this->db->trans_rollback();
                        $message['error_msg'] = 'database operation failed.';

                    } else {
                        $this->db->trans_commit();
                        $message['is_error'] = false;
                    }
                } 

                $messenge['error_msg'] = "invalid ID.";
            }
            //encoding and returning.
            $this->output->set_content_type('application/json');
            echo json_encode($message);
            exit;
        }

        public function get_new_chat()
        {
            $this->load->model('Chat_model');
            $id = $this->session->userdata("user_id");

            $date_curr = date('Y-m-d H:i:s');
            
            $data = $this->Chat_model->get_chat_row($id);
            if( !empty($data) ) 
            {
                echo 
                '<div class="pull-right" id="chat_show" margin-right: 10px; st margin-top: 10px;">
                    <div class="alert alert-success">
                        <a data-id="'.$data['ChatId'].'" class="close klik" data-dismiss="alert" aria-hidden="true">
                            ×</a>&nbsp;
                       <span class="glyphicon glyphicon-bell"></span <strong>Information &nbsp;</strong>
                        <hr class="message-inner-separator">
                        <p>'.$data['ChatContent'].'
                          .</p>
                    </div>
                </div>';
            } 
        }

        public function update_flag()
        {
            $this->load->model('Dynamic_model');
            $messenge['error_msg'] = false;
            $id = $this->input->post('id');

            if( !empty($id) ){

                $this->Dynamic_model->set_model("tbl_chat","tc","ChatId")->update(
                    array(
                        "ChatFlagClose" => 1
                    ),array("ChatId" => $id)
                );

                $messenge['error_msg'] = false;
            }

            $this->output->set_content_type('application/json');
            echo json_encode($message);
            exit;
        }

        public function notif()
        {
            $this->load->view('messenger/notifikasi');
        }
    }

/* End of file Messenger.php */
/* Location: ./application/modules/messenger/controllers/Messenger.php */