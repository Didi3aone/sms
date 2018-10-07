<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Admin Controller.
 *
 */
class Admin extends MX_Controller  {

    private $_title = "Admin";
    private $_title_page = '<i class="fa-fw fa fa-user"></i> Admin ';
    private $_breadcrumb = "<li><a href='".MANAGER_HOME."'>Home</a></li>";
    private $_active_page = "admin";
    private $_view_js_folder = "admin/javascript/";
    private $_view_folder = "admin/";

    /**
	 * constructor.
	 */
    public function __construct() {
        parent::__construct();

    }

    //////////////////////////////// VIEWS //////////////////////////////////////

    /**
     * List Admin
     */
    public function index() {
        //set header attribute.
        $header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> List Admin</span>',
            "active_page"   => "list",
            "breadcrumb"    => $this->_breadcrumb . '<li>Admin</li>',
        );

        //set footer attribute (additional script and css).
        $footer = array(
            "script" => array(
                "assets/js/plugins/datatables/jquery.dataTables.min.js",
                "assets/js/plugins/datatables/dataTables.bootstrap.min.js",
                "assets/js/plugins/datatable-responsive/datatables.responsive.min.js",
            ),
            'view_js_nav' => $this->_view_folder . "list_js",
        );

        //load the views.
        $this->load->view(MANAGER_HEADER , $header);
        $this->load->view($this->_view_folder . 'index');
        $this->load->view(MANAGER_FOOTER , $footer);
    }

    /**
     * Create an admin
     */
    public function create () {
        $this->_breadcrumb .= '<li><a href="'.site_url('admin').'">Admin</a></li>';

        $this->load->model('Dynamic_model');

        $data['role'] = $this->Dynamic_model->set_model("tbl_user_role","tur","RoleId")->get_all_data(array(
            "conditions" => array("tur.RoleId NOT IN('1')" => NULL)
        ))['datas'];
        //prepare header title.
        $header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> Create Admin</span>',
            "active_page"   => "create",
            "breadcrumb"    => $this->_breadcrumb . '<li>Create Admin</li>',
        );

        $footer = array(
            "view_js_nav" => $this->_view_js_folder . "create_js"
        );

		//load the view.
		$this->load->view(MANAGER_HEADER, $header);
        $this->load->view($this->_view_folder . 'create',$data);
		$this->load->view(MANAGER_FOOTER, $footer);
    }

    /**
     * Edit an admin
     */
    public function edit ($user_id = null) {
        $this->_breadcrumb .= '<li><a href="'.site_url('admin').'">Admin</a></li>';
        $data['item'] = null;

        //load the model.
        $this->load->model('Admin_model');

        $params = array(
            "row_array" => true,
            "conditions" => array("user_id" => $user_id)
        );
        //get the data.
        $data['item'] = $this->Admin_model->get_all_data($params)['datas'];

        //prepare header title.
        $header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> Edit Admin</span>',
            "active_page"   => $this->_active_page,
            "breadcrumb"    => $this->_breadcrumb . '<li>Edit Admin</li>',
        );

        $footer = array(
            "view_js_nav" => $this->_view_js_folder ."create_js"
        );

		//load the view.
		$this->load->view(MANAGER_HEADER, $header);
        $this->load->view($this->_view_folder . 'create', $data);
		$this->load->view(MANAGER_FOOTER, $footer);
    }

    /**
     * view an admin
     */
    public function view ($user_id = null) {
        $this->_breadcrumb .= '<li><a href="'.site_url('admin').'">Admin</a></li>';

        //load the model.
		$this->load->model('Admin_model');
        $data['item'] = null;

        //validate ID and check for data.
        if ( $user_id === null || !is_numeric($user_id) ) {
            show_404();

        }

        $params = array("row_array" => true,"conditions" => array("user_id" => $user_id));
        //get the data.
        $data['item'] = $this->Admin_model->get_all_data($params)['datas'];

        //if no data found with that ID, throw error.
        if (empty($data['item'])) {
            show_404();
        }

        //prepare header title.
        $header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> View Admin</span>',
            "active_page"   => $this->_active_page,
            "breadcrumb"    => $this->_breadcrumb . '<li>View Admin</li>',
        );

        $footer = array();

		//load the view.
		$this->load->view(MANAGER_HEADER, $header);
        $this->load->view($this->_view_folder . 'view', $data);
		$this->load->view(MANAGER_FOOTER, $footer);
    }

    /**
     * Change Profile
     */
    public function change_profile () {
        //prepare header title.
        $header = array(
            "title"         => 'Change Profile',
            "title_page"    => '<i class="fa-fw fa fa-user"></i> Change Profile',
            "active_page"   => '',
            "breadcrumb"    => $this->_breadcrumb . '<li>Change Profile</li>',
        );

        $footer = array(
            "script" => $this->_js_path . "change_profile.js",
        );

        $data['item'] = $this->_currentUser;

		//load the view.
		$this->load->view(MANAGER_HEADER, $header);
		$this->load->view($this->_view_folder . 'change-profile',$data);
		$this->load->view(MANAGER_FOOTER, $footer);
    }

    /**
     * Change Password
     */
    public function change_password () {
        //prepare header title.
        $header = array(
            "title"         => 'Change Password',
            "title_page"    => '<i class="fa-fw fa fa-user"></i> Change Password',
            "active_page"   => '',
            "breadcrumb"    =>  $this->_breadcrumb . '<li>Change Password</li>',
        );

        $footer = array(
            "script" => $this->_js_path . "change_password.js",
        );

		//load the view.
		$this->load->view(MANAGER_HEADER, $header);
		$this->load->view($this->_view_folder . 'change-password');
		$this->load->view(MANAGER_FOOTER, $footer);
    }

    //////////////////////////////// RULES //////////////////////////////////////

    /**
     * Set validation rule for admin create and edit
     */
    private function _set_rule_validation($id) {

        //prepping to set no delimiters.
        $this->form_validation->set_error_delimiters('', '');

        //validates.
        $this->form_validation->set_rules("name", "Name", "trim|required|min_length[3]|max_length[100]");

        //special validations for when editing.
        $this->form_validation->set_rules('username', 'Username', "trim|required|callback_check_username[$id]");
        $this->form_validation->set_rules('email', 'Email', "trim|required|callback_check_email[$id]");
        // $this->form_validation->set_rules('admin_type', 'Admin Type', "trim|required");

        //when insert only, check password.
        if (!$id) {
            $this->form_validation->set_rules('password', 'Password', "trim|required|min_length[6]|max_length[20]");
            $this->form_validation->set_rules('conf_password', 'Confirmation Password', "trim|required|min_length[6]|max_length[20]|matches[password]");
        } else {
            $this->form_validation->set_rules('new_password', 'New Password', "trim|min_length[6]|max_length[20]");
            if($this->input->post('new_password') != "") $this->form_validation->set_rules('conf_new_password', 'Confirmation New Password', "trim|required|min_length[6]|max_length[20]|matches[new_password]");
        }
    }

    /**
     * RULE validation for Change Profile
     */
    private function _set_rule_validation_profile($id) {

        //prepping to set no delimiters.
        $this->form_validation->set_error_delimiters('', '');

        //validates.
        $this->form_validation->set_rules("name", "Name", "trim|required|min_length[3]|max_length[100]");

        //special validations for when editing.
		$this->form_validation->set_rules('username', 'Username', "trim|required|callback_check_username[$id]");
		$this->form_validation->set_rules('email', 'Email', "trim|required|callback_check_email[$id]");
    }

    /**
     * set rule validation for change password
     */
    private function _set_rule_validation_pass () {
        $this->form_validation->set_error_delimiters('', '');

        $this->form_validation->set_rules("password", "Old Password", "required|min_length[6]|max_length[12]|callback_password_check");
        $this->form_validation->set_rules("new_password", "New Password", "required|min_length[6]|max_length[12]|matches[confirm_password]");
        $this->form_validation->set_rules("confirm_password", "Confirm Password", "required|min_length[6]|max_length[12]");
    }

    /**
     * This is a custom form validation rule to check that username is must unique.
     */
    public function check_username($str, $id) {

        $str    = $str;
        $id     = $id;

        //flag.
        $isValid = true;
        $params = array("row_array" => true);

		if ($id == "") {
			//from create
			$params['conditions'] = array("lower(user_name)" => strtolower($str));
		} else {
			$params['conditions'] = array("lower(user_name)" => strtolower($str), "user_id !=" => $id);
		}

		$datas = $this->Admin_model->get_all_data($params)['datas'];

		if ($datas) {
			$isValid = false;
			$this->form_validation->set_message('check_username', '{field} is already taken.');
		}

        return $isValid;
    }

    /**
     * This is a custom form validation rule to check that email is must unique.
     */
	public function check_email($str, $id) {
        //sanitize input
        $str = $str;
        $id  = $id;

        //flag.
        $isValid = true;
        $params = array("row_array" => true);

		if ($id == "") {
			//from create
			$params['conditions'] = array("lower(user_email)" => strtolower($str));
		} else {
			$params['conditions'] = array("lower(user_email)" => strtolower($str), "user_id !=" => $id);
		}

		$datas = $this->Admin_model->get_all_data($params)['datas'];

		if ($datas) {
			$isValid = false;
			$this->form_validation->set_message('check_email', '{field} is already taken.');
		}

        return $isValid;
    }

    /**
     * check old password same as inputed old password
     */
    public function password_check ($old_pass) {

        $pass = $this->session->userdata('password');

		//check password
		if (password_verify($old_pass, $pass)) {
			return TRUE;
		} else {
			$this->form_validation->set_message('password_check', '{field} does not match');
			return FALSE;
		}
    }

    ////////////////////////////// AJAX CALL ////////////////////////////////////

    /**
     * Function to get list_all_data admin
     */
    public function list_all_data() {
        //must ajax and must get.
        if (!$this->input->is_ajax_request() || $this->input->method(true) != "GET") {
			exit('No direct script access allowed');
		}

		//load model
        $this->load->model('Admin_model');

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
            'IF(user_is_active = 1,"AKTIF","TIDAK AKTIF") as state_act'
        );

        $sort_col = preg_match('/^[A-Z\d]+$/i',$sort_col);

        $column_sort = $select[$sort_col];

        //initialize.
        $data_filters = array();
        $conditions = array();
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

                    case 'email':
                        if ($value != "") {
                            $data_filters['lower(email)'] = $value;
                        }
                        break;

                    case 'admin_type':
                        if ($value != "") {
                            $data_filters['lower(admin_type)'] = $value;
                        }
                        break;

                    case 'status':
                        if ($value != "") {
                            $status = ($value == "active") ? STATUS_ACTIVE : STATUS_DELETE;
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
        $datas = $this->Admin_model->get_all_data(array(
			'select' => $select,
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

    /**
     * Method to process adding or editing via ajax post.
     */
    public function process_form() {
        //must ajax and must post.
        if (!$this->input->is_ajax_request() || $this->input->method(true) != "POST") {
			exit('No direct script access allowed');
		}

        //load form validation lib.
        $this->load->library('form_validation');

        //load the model.
        $this->load->model('Admin_model');

        //initial.
        $message['is_error'] = true;
		$message['error_msg'] = "";
        $message['redirect_to'] = "";

        //sanitize input (id is primary key, if from edit, it has value).
        $id             = $this->input->post('id');
        $name           = $this->input->post('name');
        $username       = $this->input->post('username');
        $email          = $this->input->post('email');
        $password       = $this->input->post('password');
        $new_password   = $this->input->post('new_password');
        $admin_type     = $this->input->post('admin_type');

        //server side validation.
        $this->_set_rule_validation($id);

        //checking.
        if ($this->form_validation->run($this) == FALSE) {

            //validation failed.
            $message['error_msg'] = validation_errors();

        } else {

            //begin transaction.
            $this->db->trans_begin();

            //validation success, prepare array to DB.
            $arrayToDB = array(
                'user_name'       => $username,
                'user_full_name'  => $name,
                'user_email'      => $email,
                'user_role_id'    => $admin_type
            );

            //insert or update?
            if ($id == "") {
                $arrayToDB['user_password']     = sha1($password);
                $arrayToDB['user_created_date'] = date("Y-m-d H:i:s");
                // pr($this->input->post());exit;
                //insert to DB.
                $result = $this->Admin_model->insert($arrayToDB);

                //end transaction.
                if ($this->db->trans_status() === FALSE) {
                    $this->db->trans_rollback();
                    $message['error_msg'] = 'database operation failed.';

                } else {
                    $this->db->trans_commit();

                    $message['is_error'] = false;

                    //success.
                    //growler.
                    $message['notif_title'] = "Good!";
                    $message['notif_message'] = "New Admin has been added.";

                    //on insert, not redirected.
                    $message['redirect_to'] = site_url("admin");
                }

            } else {
                //update.
                if ($new_password != "") {
                    $arrayToDB['user_password'] = $new_password;
                }

                $arrayToDB['user_updated_date'] = date("Y-m-d H:i:s");

                //condition for update.
                $condition = array("user_id" => $id);
                $result = $this->Admin_model->update($arrayToDB, $condition);

                //end transaction.
                if ($this->db->trans_status() === FALSE) {
                    $this->db->trans_rollback();
                    $message['error_msg'] = 'database operation failed.';

                } else {
                    $this->db->trans_commit();

                    //check if admin id equals to current user login
                    //re-set session
                    if ($this->session->userdata('user_id') == $id) {
                        $params = array("row_array" => true,"conditions" => array("user_id" => $id));
                        $data_admin = $this->Admin_model->get_all_data($params)['datas'];
                        $sess_data = array(
                            "IS_LOGIN_ADMIN" => TRUE,
                            "name"           => $data_admin['user_name'],
                            "email"          => $data_admin['user_email'],
                            "password"       => $data_admin['user_password'],
                            "user_id"        => $data_admin['user_id']
                        );

                        $this->session->userdata($sess_data);
                    }

                    $message['is_error'] = false;

                    //success.
                    //growler.
                    $message['notif_title'] = "Excellent!";
                    $message['notif_message'] = "User has been updated.";

                    //on update, redirect.
                    $message['redirect_to'] = site_url("admin");
                }
            }
        }

        //encoding and returning.
        $this->output->set_content_type('application/json');
        echo json_encode($message);
        exit;
    }

    /**
     * Change Profile Process form
     */
    public function change_profile_process(){
		if (!$this->input->is_ajax_request() || $this->input->method(true) != "POST") {
			exit('No direct script access allowed');
		}

        //set secure to true
        $this->_secure = true;

        //load form validation lib.
        $this->load->library('form_validation');

		//load the model.
		$this->load->model('Admin_model');

        //initial.
        $message['is_error'] = true;
        $message['redirect_to'] = "";
		$message['error_msg'] = "";

		$id         = $this->_currentUser['user_id'];
        $name       = sanitize_str_input($this->input->post('name'));
        $username   = sanitize_str_input($this->input->post('username'));
        $email      = sanitize_str_input($this->input->post('email'));

        $this->_set_rule_validation_profile($id);

        if ($this->form_validation->run($this) == FALSE) {
            //validation failed.
            $message['error_msg'] = validation_errors();
        } else {
			//begin transaction.
            $this->db->trans_begin();

            //validation success, prepare array to DB.
            $arrayToDB = array('name'       => $name,
                               'username' 	=> $username,
                               'email'      => $email);

			if (!empty($id)) {
				$condition = array("user_id" => $id);
                $insert = $this->Admin_model->update($arrayToDB,$condition);
			}

			if ($this->db->trans_status() === FALSE) {
				$this->db->trans_rollback();
				$message['error_msg'] = 'database operation failed.';

			} else {
				$this->db->trans_commit();

                //set is error to false
                $message['is_error'] = false;

                //success.
                //growler.
                $message['notif_title'] = "Good!";
                $message['notif_message'] = "Profile has been updated.";

                //on insert, not redirected.
                $message['redirect_to'] = "/";


				//re-set the session
				$params = array("row_array" => true,"conditions" => array("user_id" => $id));
                $data_admin = $this->Admin_model->get_all_data($params)['datas'];
                $this->session->set_userdata(ADMIN_SESSION, $data_admin);
			}
        }

        //encoding and returning.
        $this->output->set_content_type('application/json');
        echo json_encode($message);
        exit;

    }

    /**
     * Change Password Process form
     */
    public function change_password_process()
    {
		if (!$this->input->is_ajax_request() || $this->input->method(true) != "POST") {
			exit('No direct script access allowed');
		}
        //load form validation lib.
        $this->load->library('form_validation');

		//load the model.
		$this->load->model('Admin_model');

        //initial.
        $message['is_error'] = true;
        $message['redirect_to'] = "";
		$message['error_msg'] = "";

		$id       = $this->session->userdata('user_id');
		$password = $this->input->post('confirm_password');

        $this->_set_rule_validation_pass();

        if ($this->form_validation->run($this) == FALSE) {
            //validation failed.
            $message['error_msg'] = validation_errors();
        } else {
			//begin transaction.
            $this->db->trans_begin();

            //validation success, prepare array to DB.
            $SaveData = array('password'   => $password);

			if (!empty($id)) {
				$condition = array("user_id" => $id);
                $insert = $this->Admin_model->update($SaveData,$condition);
			}

			if ($this->db->trans_status() === FALSE) {
				$this->db->trans_rollback();
				$message['error_msg'] = 'database operation failed.';

			} else {
				$this->db->trans_commit();

                //set is error to false
                $message['is_error'] = false;

                //success.
                //growler.
                $message['notif_title'] = "Good!";
                $message['notif_message'] = "Password has been updated.";

                //on insert, not redirected.
                $message['redirect_to'] = "/";


				//re-set the session
				$params = array("row_array" => true,"conditions" => array("user_id" => $id));
                $data_admin = $this->Admin_model->get_all_data($params)['datas'];
                $sess_data = array(
                    "IS_LOGIN_ADMIN" => TRUE,
                    "name"           => $data_admin['user_name'],
                    "email"          => $data_admin['user_email'],
                    "password"       => $data_admin['user_password'],
                    "user_id"        => $data_admin['user_id']
                );
                $this->session->set_userdata($sess_data);
			}
        }

        //encoding and returning.
        $this->output->set_content_type('application/json');
        echo json_encode($message);
        exit;

    }

    /**
     * Delete an admin.
     */
    public function delete() {

        //must ajax and must post.
        if (!$this->input->is_ajax_request() || $this->input->method(true) != "POST") {
            exit('No direct script access allowed');
        }

        //load the model.
        $this->load->model('Admin_model');

        //initial.
        $message['is_error'] = true;
        $message['redirect_to'] = "";
        $message['error_msg'] = "";

        $id = $this->input->post('id');

        //check first.
        if (!empty($id) && is_numeric($id)) {

            //check if admin id is the current login ?
            if ($this->session->userdata('user_id') == $id) {
                $message['error_msg'] = 'Cannot delete the Admin account you are currently logged in with.';
                //encoding and returning.
                $this->output->set_content_type('application/json');
                echo json_encode($message);
                exit;
            }

            $total = $this->Admin_model->get_all_data(array(
                "count_all_first" => TRUE,
                "status" => STATUS_ACTIVE,
            ))['total'];

            //check if this is only the last id in admin
            if ($total == 1) {
                $message['error_msg'] = 'Cannot delete the last Admin account. At least one admin account is needed to access the management site.';
                //encoding and returning.
                $this->output->set_content_type('application/json');
                echo json_encode($message);
                exit;
            }

            //get data admin
            $data = $this->Admin_model->get_all_data(array(
                "find_by_pk" => array($id),
                "status" => STATUS_ACTIVE,
                "row_array" => TRUE,
            ))['datas'];

            //no data is found with that ID.
            if (empty($data)) {
                $message['error_msg'] = 'Invalid ID.';

            } else {

                //begin transaction
                $this->db->trans_begin();

                //delete the data (deactivate)
                $condition = array("user_id" => $id);
                $delete = $this->Admin_model->delete($condition);

                //end transaction.
                if ($this->db->trans_status() === FALSE) {
                    $this->db->trans_rollback();

                    //failed.
                    $message['error_msg'] = 'database operation failed';
                } else {
                    $this->db->trans_commit();
                    //success.
                    $message['is_error'] = false;
                    $message['error_msg'] = '';

                    //growler.
                    $message['notif_title'] = "Done!";
                    $message['notif_message'] = "Admin has been delete.";
                    $message['redirect_to'] = "";
                }
            }

        } else {
            //id is not passed.
            $message['error_msg'] = 'Invalid ID.';
        }

        //encoding and returning.
        $this->output->set_content_type('application/json');
        echo json_encode($message);
        exit;
    }

    /**
     * Reactivate an admin.
     */
    // public function reactivate() {

    //     //must ajax and must post.
    //     if (!$this->input->is_ajax_request() || $this->input->method(true) != "POST") {
    //         exit('No direct script access allowed');
    //     }

    //     //load the model.
    //     $this->load->model('Admin_model');

    //     //initial.
    //     $message['is_error'] = true;
    //     $message['redirect_to'] = "";
    //     $message['error_msg'] = "";

    //     //sanitize input (id is primary key).
    //     $id = sanitize_str_input($this->input->post('id'), "numeric");

    //     //check first.
    //     if (!empty($id) && is_numeric($id)) {
    //         //get data admin
    //         $data = $this->Admin_model->get_all_data(array(
    //             "find_by_pk" => array($id),
    //             "status" => STATUS_DELETE,
    //             "row_array" => TRUE,
    //         ))['datas'];

    //         //no data is found with that ID.
    //         if (empty($data)) {
    //             $message['error_msg'] = 'Invalid ID.';

    //         } else {

    //             //begin transaction
    //             $this->db->trans_begin();

    //             //delete the data (deactivate)
    //             $condition = array("user_id" => $id);
    //             $delete = $this->Admin_model->update(array("is_active" => STATUS_ACTIVE),$condition);

    //             //end transaction.
    //             if ($this->db->trans_status() === FALSE) {
    //                 $this->db->trans_rollback();

    //                 //failed.
    //                 $message['error_msg'] = 'database operation failed';
    //             } else {
    //                 $this->db->trans_commit();
    //                 //success.
    //                 $message['is_error'] = false;
    //                 $message['error_msg'] = '';

    //                 //growler.
    //                 $message['notif_title'] = "Done!";
    //                 $message['notif_message'] = "Admin has been re-activated.";
    //                 $message['redirect_to'] = "";
    //             }
    //         }

    //     } else {
    //         //id is not passed.
    //         $message['error_msg'] = 'Invalid ID.';
    //     }

    //     //encoding and returning.
    //     $this->output->set_content_type('application/json');
    //     echo json_encode($message);
    //     exit;
    // }

}
