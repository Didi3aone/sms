<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Template extends CI_Controller {

	private $_title = "Sms Template";
    private $_title_page = '<i class="fa-fw fa fa-envelope"></i> Sms Template ';
    private $_breadcrumb = "<li><a href='".MANAGER_HOME."'>Home</a></li>";
    private $_active_page = "template";
    private $_back = "template";
    private $_js_view = "template/";
    private $_view_folder = "template/";

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
            "title_page"    => $this->_title_page . '<span>> List Sms Template</span>',
            "active_page"   => $this->_active_page."-list",
            "breadcrumb"    => $this->_breadcrumb . '<li>Sms Template</li>',
        );

        //set footer attribute (additional script and css).
        $this->_footer = array(
            "view_js_nav"  => $this->_js_view.'template_js',
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
        $this->_breadcrumb .= '<li><a href="'.site_url('sms').'">Sms Template</a></li>';

        //prepare header title.
        $header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> Create Sms Template</span>',
            "title_msg"     => "Form Create",
            "active_page"   => $this->_active_page."-create",
            "breadcrumb"    => $this->_breadcrumb . '<li>Create Sms Template</li>',
            "back"          => $this->_back,
        );

        $footer = array(
            "view_js_nav"  => $this->_js_view.'create_js_nav',
        );

		//load the view.
		$this->load->view(MANAGER_HEADER, $header);
        $this->load->view($this->_view_folder . 'create');
		$this->load->view(MANAGER_FOOTER, $footer);
    }

    /**
     * Edit an admin
     */
    public function edit ($template_id = null) {
        $this->_breadcrumb .= '<li><a href="'.site_url('sms').'">Sms Template</a></li>';

        //load the model.
		$this->load->model('Template_model');

        //validate ID and check for data.
        if ( $template_id === null || !is_numeric($template_id) ) {
            show_404();
        }

        $params = array("row_array" => true,"conditions" => array("template_id" => $template_id));
        //get the data.
        $data['datas'] = $this->Template_model->get_all_data($params)['datas'];

        //if no data found with that ID, throw error.
        if (empty($data['datas'])) {
            show_404();
        }

        //prepare header title.
        $header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> Edit Sms Template</span>',
            "active_page"   => $this->_active_page,
            "title_msg"     => "Form Create",
            "breadcrumb"    => $this->_breadcrumb . '<li>Edit Sms Template</li>',
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
        $this->load->model('Template_model');

        $sort_col = sanitize_str_input($this->input->get("order")['0']['column'], "numeric");
        $sort_dir = sanitize_str_input($this->input->get("order")['0']['dir']);
        $limit = sanitize_str_input($this->input->get("length"), "numeric");
        $start = sanitize_str_input($this->input->get("start"), "numeric");
        $search = sanitize_str_input($this->input->get("search")['value']);
        $filter = $this->input->get("filter");

		$select = array("template_id","template_name","template_content");

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
                            $data_filters['lower(Template_id)'] = $value;
                        }
                        break;
                    case 'template_name':
                        if ($value != "") {
                            $data_filters['lower(template_name)'] = $value;
                        }
                        break;
                    default:
                        break;
                }
            }
        }

        //get data
        $datas = $this->Template_model->get_all_data(array(
			'select' => $select,
            'order_by' => array($column_sort => $sort_dir),
			'limit' => $limit,
			'start' => $start,
			'conditions' => $conditions,
            'filter' => $data_filters,
			// 'status' => $status,
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
    private function _set_rule_validation($id)
    {
        //prepping to set no delimiters.
        $this->form_validation->set_error_delimiters('', '');

        //validates.
        $this->form_validation->set_rules('name', 'Name', "trim|required|callback_check_name[$id]");
        $this->form_validation->set_rules("content","Content","trim|required");
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
            $params['conditions'] = array("lower(template_name)" => strtolower($str));
        } else {
            $params['conditions'] = array("lower(template_name)" => strtolower($str), "Template_id !=" => $id);
        }

        $datas = $this->Template_model->get_all_data($params)['datas'];

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

        //set secure to true
        // $this->_secure = true;

        //load form validation lib.
        $this->load->library('form_validation');

        //load the model.
        $this->load->model('Template_model');

        //initial.
        $message['is_error'] = true;
        $message['error_msg'] = "";
        $message['redirect_to'] = "";

        //sanitize input (id is primary key, if from edit, it has value).
        $id         = $this->input->post('id');
        $name       = $this->input->post('name');
        $code       = $this->input->post('content');
        $created_by = $this->session->userdata('user_id');

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
                'template_name'  	=> $name,
                'template_content'  => $code,
                'template_created_by' => $created_by
            );
            // pr($this->input->post());exit;
            //insert or update?
            if ($id == "") {
                //insert to DB.
                $_save_data['template_created_date'] = date('Y-m-d H:i:s');
                $result = $this->Template_model->insert($_save_data);

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
                    $message['notif_message'] = "New Template has been added.";

                    //on insert, not redirected.
                    $message['redirect_to'] = site_url("Template");
                }

            } else {
                //update.
                $_save_data['template_updated_date'] = date('Y-m-d H:i:s');
                //condition for update.
                $condition = array("template_id" => $id);
                $result = $this->Template_model->update($_save_data, $condition);

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
                    $message['notif_message'] = "Template has been updated.";

                    //on update, redirect.
                    $message['redirect_to'] = site_url("template");
                }
            }
        }
        //encoding and returning.
        $this->output->set_content_type('application/json');
        echo json_encode($message);
        //exit;
    }

    public function delete()
    {
        //must ajax and must post.
        if (!$this->input->is_ajax_request() || $this->input->method(true) != "POST") {
            exit('No direct script access allowed');
        }
        $message['is_error'] = true;
        $message['error_msg'] = "";
        $this->load->model('Template_model');

        $id = $this->input->post('id');

        if( empty( $id )) {
            show_404();
        } else {
            $condition = array("template_id" => $id);
            $result = $this->Template_model->delete( $condition, array("permanent" => true) );

            if(!$result ) {
                $message['is_error'] = true;
                $message['error_msg'] = "Invalid ID.";
            } else {
                $message['is_error'] = false;
                $message['notif_title'] = "Success!!";
                $message['notif_message'] = "Template has been deleted.";
                $message['redirect_to'] = '';
            }
        }
        $this->output->set_content_type('application/json');
        echo json_encode($message);
        exit;
    }
}
