<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Phonebook extends CI_Controller {

	private $_title = "Phonebook";
    private $_title_page = '<i class="fa-fw fa fa-envelope"></i> Phonebook ';
    private $_breadcrumb = "<li><a href='".MANAGER_HOME."'>Home</a></li>";
    private $_active_page = "Phonebook";
    private $_back = "phonebook";
    private $_js_view = "phonebook/";
    private $_view_folder = "phonebook/";

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
            "title_page"    => $this->_title_page . '<span>> List Phonebook </span>',
            "active_page"   => $this->_active_page.'-list',
            "breadcrumb"    => $this->_breadcrumb . '<li>Phonebook </li>',
        );

        //set footer attribute (additional script and css).
        $this->_footer = array(
            "view_js_nav"  => $this->_js_view.'data_js',
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

    public function list()
    {
        $this->load->model('Phonebook_model');

        $this->_footer = array(
            "view_js_nav" => $this->_js_view."proto_nav"
        );

        $datas = $this->Phonebook_model->get_all_data()['datas'];

        $data = array(
            "datas" => $datas
        );

        $this->load->view(MANAGER_HEADER);
        $this->load->view('phonebook/list', $data);
        $this->load->view(MANAGER_FOOTER, $this->_footer);
    }

	/**
     * Create an sms
     */
    public function create () {
        $this->_breadcrumb .= '<li><a href="'.site_url('sms').'">Number Data</a></li>';

        //prepare header title.
        $header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> Create Number Data</span>',
            "title_msg"     => "Form Create",
            "active_page"   => $this->_active_page.'-create',
            "breadcrumb"    => $this->_breadcrumb . '<li>Create Number Data</li>',
            "back"          => $this->_back,
            "css"           => array(
                "assets/css/select2.min.css"
            )
        );

        $footer = array(
            "view_js_nav"  => $this->_js_view.'create_js_nav',
            "script"       => array(
                "assets/js/plugins/select2.min.js"
            )
        );

		//load the view.
		$this->load->view(MANAGER_HEADER, $header);
        $this->load->view($this->_view_folder . 'create');
		$this->load->view(MANAGER_FOOTER, $footer);
    }

    /**
     * Edit an
     */
    public function edit ($data_id = null) {
        $this->_breadcrumb .= '<li><a href="'.site_url('sms').'">Number Data</a></li>';

        //load the model.
		$this->load->model('Dynamic_model');
        $data['item'] = null;

        $params = array(
            "selecct"       => "mdu.*, tr.region_name, tr.region_id",
            "joined"       	=> array("tbl_region tr" => array("tr.region_id" => "mdu.UserRegionId")),
            "conditions" 	=> array("UserDataId" => $data_id),
            "row_array" 	=> true,
			"debug"			=> false
        );
        //get the data.
        $data['datas'] = $this->Dynamic_model->set_model("mst_data_user","mdu","UserDataId")->get_all_data($params)['datas'];

        //prepare header title.
        $header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> Edit Number Data</span>',
            "active_page"   => $this->_active_page,
            "breadcrumb"    => $this->_breadcrumb . '<li>Edit Number Data</li>',
            "back"          => $this->_back,
            "css"           => array(
                "assets/css/select2.min.css"
            )
        );

        $footer = array(
            "view_js_nav"  => $this->_js_view.'create_js_nav',
            "script" => array("assets/js/plugins/select2.full.min.js"),
        );

		//load the view.
		$this->load->view(MANAGER_HEADER, $header);
        $this->load->view($this->_view_folder . 'create', $data);
		$this->load->view(MANAGER_FOOTER, $footer);
    }

    /**
     * view an
     */
    public function view ($data_id = null) {
        $this->_breadcrumb .= '<li><a href="'.site_url('sms').'">Sms Group</a></li>';

        //load the model.
		$this->load->model('Phonebook_model');
        $data['item'] = null;

        $params = array("row_array" => true,"conditions" => array("data_id" => $data_id));
        //get the data.
        $data['item'] = $this->Phonebook_model->get_all_data($params)['datas'];

        //if no data found with that ID, throw error.
        if (empty($data['item'])) {
            show_404();
        }

        //prepare header title.
        $header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> View Sms Group</span>',
            "active_page"   => $this->_active_page,
            "breadcrumb"    => $this->_breadcrumb . '<li>View Sms Group</li>',
            "back"          => $this->_back,
        );

        $footer = array();

		//load the view.
		$this->load->view(MANAGER_HEADER, $header);
        $this->load->view($this->_view_folder . 'view', $data);
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
        $this->load->model('Phonebook_model');

        $sort_col = sanitize_str_input($this->input->get("order")['0']['column'], "numeric");
        $sort_dir = sanitize_str_input($this->input->get("order")['0']['dir']);
        $limit = sanitize_str_input($this->input->get("length"), "numeric");
        $start = sanitize_str_input($this->input->get("start"), "numeric");
        $search = sanitize_str_input($this->input->get("search")['value']);
        $filter = $this->input->get("filter");

		$select = array(
            "UserDataId",
            "UserDataName",
            "UserMobilePhone",
            "IF(UserExperience = 1, 'YES', 'NO') AS PENGALAMAN",
            "IF(UserCertificate = 1, 'YES','NO') AS SERTIFIKAT"
        );

		$sort_col = preg_match('/^[A-Z\d]+$/i',$sort_col);
        $column_sort = $select[$sort_col];

        //initialize.
        $data_filters = array();
        $conditions = array();
		$pengalaman = "";
		$sertifikat = "";

        if (count ($filter) > 0) {
            foreach ($filter as $key => $value) {
                $value = ($value);
                switch ($key) {
                    case 'name':
                        if ($value != "") {
                            $data_filters['lower(UserDataName)'] = $value;
                        }
                        break;

                    case 'nohp':
                        if ($value != "") {
                            $data_filters['lower(UserMobilePhone)'] = $value;
                        }
                        break;

					case 'pengalaman':
                        if ($value != "") {
                            $pengalaman = ($value == "YES") ? 1 : 2;
                        }
                        break;

					case 'sertifikat':
                        if ($value != "") {
                            $sertifikat = ($value == "YES") ? 1 : 2;
                        }
                        break;

                    default:
                        break;
                }
            }
        }

        //get data
        $datas = $this->Phonebook_model->get_all_data(array(
			'select' 			=> $select,
		    'order_by' 			=> array($column_sort => $sort_dir),
			'conditions' 		=> $conditions,
			'pengalaman'		=> $pengalaman,
			'sertifikat'		=> $sertifikat,
		    'filter' 			=> $data_filters,
			'limit' 			=> $limit,
			'start' 			=> $start,
		    'count_all_first' 	=> true,
			'debug'				=> false
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
    private function _set_rule_validation()
    {
        //prepping to set no delimiters.
        $this->form_validation->set_error_delimiters('', '');

        //validates.
        $this->form_validation->set_rules("no1","Number Phone","trim|required|min_length[11]|max_length[15]");
        $this->form_validation->set_rules('name', 'Name', "trim|required");
    }

    public function process_form() {
        //must ajax and must post.
        if (!$this->input->is_ajax_request() || $this->input->method(true) != "POST") {
            exit('No direct script access allowed');
        }

        //set secure to true
        // $this->_secure = true;

        //load form validation lib.
        $this->load->library('form_validation');

        //load the model.
        $this->load->model('Phonebook_model');

        //initial.
        $message['is_error'] = true;
        $message['error_msg'] = "";
        $message['redirect_to'] = "";

        //sanitize input (id is primary key, if from edit, it has value).
        $id            = $this->input->post('id');
        $name          = $this->input->post('name');
        $no1           = $this->input->post('no1'); 
        $region_id     = $this->input->post('region_id');
        $user_exp      = $this->input->post('user_experience');
        $user_certif   = $this->input->post('user_certificate');

        // $group         = $this->input->post('group_id');
        $create_by     = $this->session->userdata('user_id');
        $now           = date('Y-m-d H:i:s');

        //server side validation.
        $this->_set_rule_validation();

        //checking.
        if ($this->form_validation->run($this) == FALSE) {

            //validation failed.
            $message['error_msg'] = validation_errors();

        } else {

            //begin transaction.
            $this->db->trans_begin();

            //validation success, prepare array to DB.
            $_save_data = array(
                'UserDataName'      => $name,
                'UserMobilePhone'   => $no1,
                'UserGroupId'       => $region_id,
                'UserExperience'    => $user_exp,
                'UserCertificate'   => $user_certif,
                'UserCreatedById'   => $create_by
            );

            //insert or update?
            if ($id == "") {
                //insert to DB.
                $_save_data['UserCreatedDate'] = $now;

                $result = $this->Phonebook_model->insert($_save_data);

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
                    $message['notif_message'] = "New Number has been added.";

                    //on insert, not redirected.
                    $message['redirect_to'] = site_url("phonebook");
                }

            } else {
                //update.
                //condition for update.
                $condition = array("UserDataId" => $id);
                $result = $this->Phonebook_model->update($_save_data, $condition);

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
                    $message['notif_message'] = "Phone has been updated.";

                    //on update, redirect.
                    $message['redirect_to'] = site_url("phonebook");
                }
            }
        }
        //encoding and returning.
        $this->output->set_content_type('application/json');
        echo json_encode($message);
        //exit;
    }

    public function list_select_group()
    {
        //must ajax and must get.
        if (!$this->input->is_ajax_request() || $this->input->method(true) != "GET") {
            exit('No direct script access allowed');
        }
        $this->load->model("Dynamic_model");

        $select_q = $this->input->get('q');
        $select_page = ($this->input->get('page')) ? $this->input->get('page') : 1;

        $limit = 10;
        $start = ($limit * ($select_page - 1));

        $filters = array();
        if($select_q != "") {
            $filters['group_name'] = $select_q;

        }
        $conditions = array();

        $params = $this->Dynamic_model->set_model("tbl_sms_group","tsg","group_id")->get_all_data(array(
            "select"     => "group_id, group_name",
            "filter_or"  => $filters,
            "conditions" => $conditions,
            "count_all_first" => true,
            "limit"      => $limit,
            "start"      => $start,
            "status"     => -1
        ));

        //prepare returns.
        $message["page"] = $select_page;
        $message["total_data"] = $params['total'];
        $message["paging_size"] = $limit;
        $message["datas"] = $params['datas'];

        $this->output->set_content_type('application/json');
        echo json_encode($message);
        exit;
    }

    public function list_select_region()
    {
        //must ajax and must get.
        if (!$this->input->is_ajax_request() || $this->input->method(true) != "GET") {
            exit('No direct script access allowed');
        }
        $this->load->model("Dynamic_model");

        $select_q       = $this->input->get('q');
        $select_page    = ($this->input->get('page')) ? $this->input->get('page') : 1;

        $limit = 10;
        $start = ($limit * ($select_page - 1));

        $filters = array();
        if($select_q != "") {
            $filters['region_name'] = $select_q;

        }
        $conditions = array();

        $params = $this->Dynamic_model->set_model("tbl_region","tr","region_id")->get_all_data(array(
            "select"     => "region_id, region_name",
            "filter_or"  => $filters,
            "conditions" => $conditions,
            "count_all_first" => true,
            "limit"      => $limit,
            "start"      => $start,
            "status"     => -1
        ));

        //prepare returns.
        $message["page"] = $select_page;
        $message["total_data"] = $params['total'];
        $message["paging_size"] = $limit;
        $message["datas"] = $params['datas'];

        $this->output->set_content_type('application/json');
        echo json_encode($message);
        exit;
    }

	public function delete()
	{
		$this->load->model("Dynamic_model");
		$message['is_error'] = true;
		$message['error_msg'] = "";

		$id = $this->input->post('id');

		if(empty($id)) {
			$message['error_msg'] = "Invalid ID.";
		} else {
			$conditions = array("UserDataId" => $id);

			$delete = $this->Dynamic_model->set_model("mst_data_user","mdu","UserDataId")->delete($conditions);

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
