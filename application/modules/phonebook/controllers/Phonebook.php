<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Phonebook extends CI_Controller {

	private $_title = "Employee";
    private $_title_page = '<i class="fa-fw fa fa-user"></i> Employee ';
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
        $this->_breadcrumb .= '<li><a href="'.site_url('phonebook').'">Employee</a></li>';

        //load the model.
		$this->load->model(array('Dynamic_model','Phonebook_model'));
        $data['datas'] = null;

        $data['datas'] = $this->Phonebook_model->get_all_data(array(
            "select" => "me.*, tr.region_name, tr.region_id, tk.*",
            "joined" => array(
                "tbl_region tr" => array("tr.region_id" => "me.Emp_AreaId"),
            ),
            "left_joined" => array( "tbl_kategori tk" => array("tk.kategori_id" => "me.Emp_KategoriId")),
            "conditions" => array(),
            "row_array"  => true
        ))['datas'];

        $data['region'] = $this->Dynamic_model->set_model("tbl_region", "tr","region_id")->get_all_data()['datas'];

        $data['kategori'] = $this->Dynamic_model->set_model("tbl_kategori", "tr","kategori_id")->get_all_data()['datas'];

        //prepare header title.
        $header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> Edit Employee</span>',
            "active_page"   => $this->_active_page,
            "breadcrumb"    => $this->_breadcrumb . '<li>Edit Employee</li>',
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
		$this->load->model(array('Phonebook_model','Dynamic_model'));
        $data['datas'] = null;
        $data['area'] = null;
        $data['kategori'] = null;

        $params = array(
            "select"    => "tr.*, me.*, tk.*",
            "joined"    => array("tbl_region tr" => array("tr.region_id" => "me.Emp_AreaId")),
            "left_joined" => array("tbl_kategori tk" => array("tk.kategori_id" => "me.Emp_KategoriId")),
            "row_array" => true,
            "conditions" => array("Emp_Id" => $data_id)
        );
        //get the data.
        $data['datas'] = $this->Phonebook_model->get_all_data($params)['datas'];

        //prepare header title.
        $header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> View Employee</span>',
            "active_page"   => $this->_active_page,
            "breadcrumb"    => $this->_breadcrumb . '<li>View Employee</li>',
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
            "Emp_Id",
            "Emp_Name",
            "Emp_PhoneNumber",
            "tr.region_name",
            "Emp_LastEducation",
            "tk.kategori_name"
        );

        $joined = array(
            "tbl_region tr" => array("tr.region_id" => "me.Emp_AreaId"),
        );
        $left_joined = array("tbl_kategori tk" => array("tk.kategori_id" => "me.Emp_KategoriId"));

		$sort_col = preg_match('/^[A-Z\d]+$/i',$sort_col);
        $column_sort = $select[$sort_col];

        //initialize.
        $data_filters = array();
        $conditions = array("me.Emp_Is_Active" => STATUS_ACTIVE);
		$pengalaman = "";
		$sertifikat = "";

        if (count ($filter) > 0) {
            foreach ($filter as $key => $value) {
                $value = ($value);
                switch ($key) {
                    case 'name':
                        if ($value != "") {
                            $data_filters['lower(me.Emp_Name)'] = $value;
                        }
                        break;

                    case 'nohp':
                        if ($value != "") {
                            $data_filters['lower(me.Emp_PhoneNumber)'] = $value;
                        }
                        break;

                    case 'area':
                        if ($value != "") {
                            $data_filters['lower(tr.region_name)'] = $value;
                        }
                        break;

                    case 'kategori':
                        if ($value != "") {
                            $data_filters['lower(tk.kategori_name)'] = $value;
                        }
                        break;

                    case 'last':
                        if ($value != "") {
                            $data_filters['lower(me.Emp_LastEducation)'] = $value;
                        }
                        break;

					// case 'pengalaman':
     //                    if ($value != "") {
     //                        $pengalaman = ($value == "YES") ? 1 : 2;
     //                    }
     //                    break;

					// case 'sertifikat':
     //                    if ($value != "") {
     //                        $sertifikat = ($value == "YES") ? 1 : 2;
     //                    }
     //                    break;

                    default:
                        break;
                }
            }
        }

        //get data
        $datas = $this->Phonebook_model->get_all_data(array(
			'select' 			=> $select,
            'left_joined'       => $left_joined,
            'joined'            => $joined,
		    'order_by' 			=> array($column_sort => $sort_dir),
			'conditions' 		=> $conditions,
			// 'pengalaman'		=> $pengalaman,
			// 'sertifikat'		=> $sertifikat,
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
        $this->form_validation->set_rules("no","Phone Number","trim|required|min_length[11]|max_length[15]");
        $this->form_validation->set_rules('name', 'Name', "trim|required");
        $this->form_validation->set_rules('region_id', 'Area', "trim|required");
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
        $dob_pob       = $this->input->post('dobpob'); 
        $no            = $this->input->post('no'); 
        $region_id     = $this->input->post('region_id');
        $addres        = $this->input->post('address');
        $kategori_id   = $this->input->post('kategori_id');
        $email         = $this->input->post('email');
        $last_ed       = $this->input->post('last_ed');
        $end_ed        = $this->input->post('end_ed');
        $end_tot       = $this->input->post('end_tot');
        $serf_wi       = $this->input->post('serf_wi');
        $serf_wi_lev   = $this->input->post('serf_wi_lev');
        $serf_wi_iss   = $this->input->post('serf_wi_iss');
        $serf_wi_val   = to_dates($this->input->post('serf_wi_val'));
        $serf_ut       = $this->input->post('serf_ut');
        $serf_ut_lev   = $this->input->post('serf_ut_lev');
        $serf_ut_iss   = $this->input->post('serf_ut_iss');
        $serf_ut_val   = to_dates($this->input->post('serf_ut_val'));
        $serf_mpi      = $this->input->post('serf_mpi');
        $serf_mpi_lev  = $this->input->post('serf_mpi_lev');
        $serf_mpi_iss  = $this->input->post('serf_mpi_iss');
        $serf_mpi_val  = to_dates($this->input->post('serf_mpi_val'));
        $serf_pt       = $this->input->post('serf_wi');
        $serf_pt_lev   = $this->input->post('serf_pt_lev');
        $serf_pt_iss   = $this->input->post('serf_pt_iss');
        $serf_pt_val   = to_dates($this->input->post('serf_pt_val'));
        $serf_ir       = $this->input->post('serf_ir');
        $serf_ir_lev   = $this->input->post('serf_ir_lev');
        $serf_ir_iss   = $this->input->post('serf_ir_iss');
        $serf_ir_val   = to_dates($this->input->post('serf_ir_val'));

        // $group         = $this->input->post('group_id');
        $create_by     = $this->session->userdata('user_id');
        $now           = date('Y-m-d H:i:s');
        //ubah ke format +62
        $Nomer = $no;
        $No62 = substr($Nomer, 0,1 );
        if( !strcmp($No62, '0')){
            $No = substr($Nomer, 1, strlen($Nomer)-1);
            $No = sprintf("+62%s", $No);
        } else if(!strcmp($No62, '8')) {
            $No = sprintf("+62%s", $Nomer);
        } else {
            // $No = "+";
            $No = $Nomer;
        }
        // pr($No);exit;
        //server side validation.
        $this->_set_rule_validation();
        // pr($this->input->post());exit;
        //checking.
        if ($this->form_validation->run($this) == FALSE) {

            //validation failed.
            $message['error_msg'] = validation_errors();

        } else {

            //begin transaction.
            $this->db->trans_begin();


            // if( $No != '+628') {
            //     $message['is_error'] = true;
            //     $message['error_msg'] = "Please check phone number";
            //     $this->output->set_content_type('application/json');
            //     echo json_encode($message);
            //     exit;
            // }
            //upload file            
            if(isset($_FILES['wi'])){
                $upload_wi = $this->upload_file("wi", "Sertifikat-Welding_Inspector".date('Ymd').time()  , false,"upload/file/wi",$id);
            }

            if(isset($_FILES['ut'])){
                $upload_ut = $this->upload_file("ut", "Sertifikat-UT".date('Ymd').time()  , false,"upload/file/ut",$id);
            }

            if(isset($_FILES['mpi'])){
                $upload_mpi = $this->upload_file("mpi", "Sertifikat-MPI".date('Ymd').time()  , false,"upload/file/mpi",$id);
            }

            if(isset($_FILES['pt'])){
                $upload_pt = $this->upload_file("pt", "Sertifikat-PT".date('Ymd').time()  , false,"upload/file/pt",$id);
            }

            if(isset($_FILES['ir'])){
                $upload_ir = $this->upload_file("ir", "Sertifikat-IR".date('Ymd').time()  , false,"upload/file/ir",$id);
            }

            //validation success, prepare array to DB.
            $_save_data = array(
                'Emp_Name'             => $name,
                'Emp_DOB_POB'          => $dob_pob,
                'Emp_Address'          => $addres,
                'Emp_AreaId'           => $region_id,
                'Emp_KategoriId'       => $kategori_id,
                'Emp_PhoneNumber'      => $No,
                'Emp_Email'            => $email,
                'Emp_LastEducation'    => $last_ed,
                'Emp_EndEducation'     => $end_ed,
                'Emp_TotalWorkExp'     => $end_tot,
                'Emp_WI_CerfNo'        => $serf_wi,
                'Emp_WI_Level'         => $serf_wi_lev,
                'Emp_WI_IssuedBy'      => $serf_wi_iss,
                'Emp_WI_ValidPeriod'   => $serf_ir_val,
                'Emp_UT_CerfNO'        => $serf_ut,
                'Emp_UT_Level'         => $serf_ut_lev,
                'Emp_UT_IssuedBy'      => $serf_ut_iss,
                'Emp_UT_ValidPeriod'   => $serf_ut_val,
                'Emp_MPI_CerfNo'       => $serf_mpi,
                'Emp_MPI_Level'        => $serf_mpi_lev,
                'Emp_MPI_IssuedBy'     => $serf_mpi_iss,
                'Emp_MPI_ValidPeriod'  => $serf_mpi_val,
                'Emp_PT_CerfNo'        => $serf_pt,
                'Emp_PT_Level'         => $serf_pt_lev,
                'Emp_PT_IssuedBy'      => $serf_pt_iss,
                'Emp_PT_ValidPeriod'   => $serf_pt_val,
                'Emp_IR_CerfNo'        => $serf_ir,
                'Emp_IR_Level'         => $serf_ir_lev,
                'Emp_IR_IssuedBy'      => $serf_ir_iss,
                'Emp_IR_ValidPeriod'   => $serf_ir_val 
            );

            if(!empty($upload_wi)) {
                $_save_data['Emp_Cerf_WI_File'] = $upload_wi['uploaded_path'];
            }

            if(!empty($upload_ut)) {
                $_save_data['Emp_Cerf_UT_File'] = $upload_ut['uploaded_path'];
            }

            if(!empty($upload_mpi)) {
                $_save_data['Emp_Cerf_MPI_File'] = $upload_mpi['uploaded_path'];
            }

            if(!empty($upload_pt)) {
                $_save_data['Emp_Cerf_PT_File'] = $upload_pt['uploaded_path'];
            }

            if(!empty($upload_ir)) {
                $_save_data['Emp_Cerf_IR_File'] = $upload_ir['uploaded_path'];
            }            

            //insert or update?
            if ($id == "") {
                //insert to DB.
                $_save_data['Emp_CreatedDate'] = $now;
                $_save_data['Emp_CreatedById'] = $create_by;

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
                $get_data = $this->Phonebook_model->get_all_data(array(
                    "conditions" => array("Emp_Id" => $id),
                    "row_array"  => true
                ))['datas'];

                $_save_data['Emp_UpdatedById'] = $create_by;
                $_save_data['Emp_UpdatedDate'] = $now;

                //update
                $condition = array('Emp_Id' => $id);

                if(!empty($upload_wi) && isset($get_data['Emp_Cerf_WI_File']) && !empty($get_data['Emp_Cerf_WI_File'])) {
                    unlink( FCPATH .$get_data['Emp_Cerf_WI_File']);
                }

                if(!empty($upload_ut) && isset($get_data['Emp_Cerf_UT_File']) && !empty($get_data['Emp_Cerf_UT_File'])) {
                    unlink( FCPATH .$get_data['Emp_Cerf_UT_File']);
                }

                if(!empty($upload_mpi) && isset($get_data['Emp_Cerf_MPI_File']) && !empty($get_data['Emp_Cerf_MPI_File'])) {
                    unlink( FCPATH .$get_data['Emp_Cerf_MPI_File']);
                }

                if(!empty($upload_pt) && isset($get_data['Emp_Cerf_PT_File']) && !empty($get_data['Emp_Cerf_PT_File'])) {
                    unlink( FCPATH .$get_data['Emp_Cerf_PT_File']);
                }

                if(!empty($upload_ut) && isset($get_data['Emp_Cerf_RI_File']) && !empty($get_data['Emp_Cerf_RI_File'])) {
                    unlink( FCPATH .$get_data['Emp_Cerf_RI_File']);
                }

                //condition for update.
                $condition = array("Emp_Id" => $id);
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

     public function list_select_kategori()
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
            $filters['kategori_name'] = $select_q;

        }
        $conditions = array();

        $params = $this->Dynamic_model->set_model("tbl_kategori","tr","kategori_id")->get_all_data(array(
            "select"     => "kategori_id, kategori_name",
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
		$this->load->model("Phonebook_model");
		$message['is_error'] = true;
		$message['error_msg'] = "";

		$id = $this->input->post('id');
        $date = date("Y-m-d H:i:s");
        $by_id = $this->session->userdata("user_id");
		if(empty($id)) {
			$message['error_msg'] = "Invalid ID.";
		} else {
            //first get data
            $get_data = $this->Phonebook_model->get_all_data(array(
                "conditions" => array("Emp_Id" => $id),
                "row_array"  => true
            ))['datas'];
            //conditions delete
			$conditions = array(
                "Emp_Id" => $id
            );
            //delete update flag isactive = 0
            $data = array(
                "Emp_Is_Active"     => STATUS_DELETE,
                "Emp_DeletedBy"     => $by_id,
                "Emp_DeletedDate"   => $date
            );

			$delete = $this->Phonebook_model->delete($data, $conditions);

			if($delete) {
                //delete file on path
                if(isset($get_data['Emp_Cerf_WI_File']) && !empty($get_data['Emp_Cerf_WI_File'])) {
                    unlink( FCPATH .$get_data['Emp_Cerf_WI_File']);
                }
                
				$message['is_error'] = false;
				$message['notif_title']	  = "Good !!!";
				$message['notif_message'] = "Success deleted";
			} else {
				$message['error_msg'] = "Internal Server Error!!";
			}
		}
		//encoding and returning.
		$this->output->set_content_type('application/json');
		echo json_encode($message);
		exit;
	}

    protected function upload_file ($key, $file_name, $multiple = false, $upload_path, $id) {
        $message['is_error'] = true;
        $message['error_msg'] = "";
        $message['redirect_to'] = "";

        //load the uploader library.
        $this->load->library('Uploader');

        $config = array(
            "allowed_types"         =>  FILE_TYPE_UPLOAD,
            "file_ext_tolower"      =>  true,
            "overwrite"             =>  false,
            "max_size"              =>  MAX_UPLOAD_FILE_SIZE_IN_KB,
            "upload_path"           =>  $upload_path,
        );

        if (!empty($file_name)) {
            $config['filename_overwrite'] = $file_name;
        }

        //try to upload the image.
        $upload_result = $this->uploader->upload_files($key, $multiple, $config);

        if ($upload_result['is_error']) {
            if ($upload_result['is_error']) {
                if (($id == "" && $upload_result['result'][0]['error_code'] == 0) || $upload_result['result'][0]['error_code'] != 0) {
                    //file upload error of something.
                    //show the error.
                    $message['error_msg'] = $upload_result['result'][0]['error_msg'];

                    //encoding and returning.
                    $this->output->set_content_type('application/json');
                    echo json_encode($message);
                    exit;
                }

            }
        }

        return $upload_result['result'];
    }
}
