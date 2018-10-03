<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Group extends CI_Controller {

	private $_title = "Area";
    private $_title_page = '<i class="fa-fw fa fa-envelope"></i> Area ';
    private $_breadcrumb = "<li><a href='".MANAGER_HOME."'>Home</a></li>";
    private $_active_page = "group";
    private $_back = "group";
    private $_js_view = "group/";
    private $_view_folder = "group/";

    protected $_header;
    protected $_footer;

	public function __construct() {
		parent::__construct();
	}

	/**
	* Function list sms
	* author : didi
	*/
	public function index()
	{
		//set header attribute.
        $this->_header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> List Area</span>',
            "active_page"   => $this->_active_page,
            "breadcrumb"    => $this->_breadcrumb . '<li>Area</li>',
        );

        //set footer attribute (additional script and css).
        $this->_footer = array(
            "view_js_nav"  => $this->_js_view.'group_js',
            "script"       => array(
                "assets/js/plugins/datatables/jquery.dataTables.min.js",
                "assets/js/plugins/datatables/dataTables.bootstrap.min.js",
                "assets/js/plugins/datatable-responsive/datatables.responsive.min.js",
                //$this->_js_path . "list.js",
            ),
        );

        //load the views.
        $this->load->view(MANAGER_HEADER , $this->_header);
        $this->load->view($this->_view_folder . 'index');
        $this->load->view(MANAGER_FOOTER , $this->_footer);
	}

	/**
     * Create an sms
     */
    public function create () {
        $this->_breadcrumb .= '<li><a href="'.site_url('sms').'">Area</a></li>';

        //prepare header title.
        $header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> Create Area</span>',
            "title_msg"     => "Form Create",
            "active_page"   => $this->_active_page."-create",
            "breadcrumb"    => $this->_breadcrumb . '<li>Create Area</li>',
            "back"          => $this->_back,
        );

        $footer = array(
            "view_js_nav"  => $this->_js_view.'create_js_nav'
            // "script"       => array(
            //     "assets/js/pages/group/create.js"
            // )
        );

		//load the view.
		$this->load->view(MANAGER_HEADER, $header);
        $this->load->view($this->_view_folder . 'create');
		$this->load->view(MANAGER_FOOTER, $footer);
    }

    /**
     * Edit an admin
     */
    public function edit ($group_id = null) {
        $this->_breadcrumb .= '<li><a href="'.site_url('sms').'">Area</a></li>';

        //load the model.
		$this->load->model('Dynamic_model');

        $params = array("row_array" => true,"conditions" => array("group_id" => $group_id));
        //get the data.
        $data['data'] = $this->Dynamic_model->set_model("tbl_sms_group","tsg","group_id")->get_all_data($params)['datas'];

        //prepare header title.
        $header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> Edit Area</span>',
            "active_page"   => $this->_active_page,
            "breadcrumb"    => $this->_breadcrumb . '<li>Edit Area</li>',
            "back"          => $this->_back,
        );

        $footer = array(
            "view_js_nav"  => $this->_js_view.'create_js_nav'
        );

		//load the view.
		$this->load->view(MANAGER_HEADER, $header);
        $this->load->view($this->_view_folder . 'create', $data);
		$this->load->view(MANAGER_FOOTER, $footer);
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

        $sort_col = sanitize_str_input($this->input->get("order")['0']['column'], "numeric");
        $sort_dir = sanitize_str_input($this->input->get("order")['0']['dir']);
        $limit = sanitize_str_input($this->input->get("length"), "numeric");
        $start = sanitize_str_input($this->input->get("start"), "numeric");
        $search = sanitize_str_input($this->input->get("search")['value']);
        $filter = $this->input->get("filter");

		$select = array("group_id","group_code","group_name");

        $column_sort = $select[$sort_col];

        //initialize.
        $data_filters = array();
        $conditions = array();
        $status = STATUS_ACTIVE;

        if (count ($filter) > 0) {
            foreach ($filter as $key => $value) {
                $value = ($value);
                switch ($key) {
                    case 'id':
                        if ($value != "") {
                            $data_filters['lower(group_id)'] = $value;
                        }
                        break;
                    default:
                        break;
                }
            }
        }

        //get data
        $datas = $this->Dynamic_model->set_model("tbl_sms_group","tsg","group_id")->get_all_data(array(
			'select' => $select,
            'order_by' => array($column_sort => $sort_dir),
			'limit' => $limit,
			'start' => $start,
			'conditions' => $conditions,
            'filter' => $data_filters,
            "count_all_first" => true
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
    private function _set_rule_validation($id)
    {
        //prepping to set no delimiters.
        $this->form_validation->set_error_delimiters('', '');

        //validates.
        $this->form_validation->set_rules("code","Code","trim|required|min_length[3]|max_length[10]");
        $this->form_validation->set_rules('name', 'Name', "trim|required|callback_check_name[$id]");
    }

    public function check_name($str, $id) {
        //sanitize input
        $str = sanitize_str_input($str);
        $id = sanitize_str_input($id);

        //flag.
        $isValid = true;
        $params = array("row_array" => true);

        if ($id == "") {
            //from create
            $params['conditions'] = array("lower(group_name)" => strtolower($str));
        } else {
            $params['conditions'] = array("lower(group_name)" => strtolower($str), "group_id !=" => $id);
        }

        $datas = $this->Dynamic_model->set_model("tbl_sms_group","tsg","group_id")->get_all_data($params)['datas'];

        if ($datas) {
            $isValid = false;
            $this->form_validation->set_message('check_name', '{field} is already taken.');
        }

        return $isValid;
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
        $message['error_msg'] = "";
        $message['redirect_to'] = "";

        //sanitize input (id is primary key, if from edit, it has value).
        $id         = $this->input->post('id');
        $code       = $this->input->post('code');
        $name       = $this->input->post('name');

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
            $_save_data = array(
                'group_code'  => $code,
                'group_name'  => $name
            );

            //insert or update?
            if ($id == "") {
                //insert to DB.
                $result = $this->Dynamic_model->set_model("tbl_sms_group","tsg","group_id")->insert($_save_data);

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
                    $message['notif_message'] = "New Group has been added.";

                    //on insert, not redirected.
                    $message['redirect_to'] = site_url("group");
                }

            } else {
                //update.
                //condition for update.
                $condition = array("group_id" => $id);
                $result = $this->Dynamic_model->set_model("tbl_sms_group","tsg","group_id")->update($_save_data, $condition);

                //end transaction.
                if ($this->db->trans_status() === FALSE) {
                    $this->db->trans_rollback();
                    $message['error_msg'] = 'database operation failed.';

                } else {
                    $this->db->trans_commit();
                    $message['is_error'] = false;
                    //success.
                    //growler.
                    $message['notif_title'] = "Excellent!";
                    $message['notif_message'] = "Group has been updated.";

                    //on update, redirect.
                    $message['redirect_to'] = site_url("group");
                }
            }
        }
		//encoding and returning.
		$this->output->set_content_type('application/json');
		echo json_encode($message);
		exit;
    }

	//** function deleted 
	public function delete()
	{
		$this->load->model("Dynamic_model");
		$message['is_error'] = true;
		$message['error_msg'] = "";

		$id = $this->input->post('id');

		if(empty($id)) {
			$message['error_msg'] = "Invalid ID.";
		} else {
			$conditions = array("group_id" => $id);

			$delete = $this->Dynamic_model->set_model("tbl_sms_group","tsg","group_id")->delete($conditions);

			if($delete) {
				$message['is_error'] = false;
				$message['notif_title']	  = "Good !!!";
				$message['notif_message'] = "success deleted";
			} else {
				$message['error_msg'] = "Internal Server Error!!";
			}
		}
		//encoding and returning.
		$this->output->set_content_type('application/json');
		echo json_encode($message);
		exit;
	}
}
