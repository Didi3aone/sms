<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Upload extends CI_Controller {

    private $_title         = "Upload";
    private $_title_page    = '<i class="fa-fw fa fa-envelope"></i> Upload ';
    private $_breadcrumb    = "<li><a href='".MANAGER_HOME."'>Home</a></li>";
    private $_active_page   = "Upload";
    private $_back          = "upload";
    private $_js_view       = "upload/";
    private $_view_folder   = "upload/";
    private $_js_path       = "assets/js/";

    protected $_header;
    protected $_footer;

    private $_table         = "mst_employee";
    private $_table_aliases = "me";
    private $_pk            = "Emp_Id";

    public function __construct() {
        parent::__construct();
    }

    /**
     * Create an upload
     */
    public function import () {
        $this->_breadcrumb .= '<li><a href="#">upload</a></li>';
        //prepare header title.
        $this->_header = array(
            "title"         => $this->_title,
            "title_page"    => $this->_title_page . '<span>> Upload Data</span>',
            "title_msg"     => "Form Create",
            "active_page"   => "import",
            "breadcrumb"    => $this->_breadcrumb . '<li>Upload Data</li>',
            "back"          => $this->_back,
        );

        $this->_footer = array(
                "view_js_nav" => $this->_js_view."import-js"
        );

        //load the view.
        $this->load->view(MANAGER_HEADER, $this->_header);
        $this->load->view($this->_view_folder . 'import');
        $this->load->view(MANAGER_FOOTER, $this->_footer);
    }


    /**
     * validating import section
     */
    public function validate_import($data, $line)
    {
        $error = "";

        if (check_null_space($data['Emp_Name'])) {
            $error .= "Row " . $line . ": Name cannot be empty.";
        }

        if (check_null_space($data['Emp_PhoneNumber'])) {
            $error .= "Row " . $line . ": Phone cannot be empty.";
        }

        if ($error != "") {
            return $error;
        } else {
            return true;
        }
    }

    /**
    * proses import data to db
    * author : didi ganteng
    * it-underground.web.id
    */
    public function process_import()
    {
        //must ajax and must post.
        if (!$this->input->is_ajax_request() || $this->input->method(true) != "POST") {
            exit('No direct script access allowed');
        }

        //load the model.
        $this->load->model('Dynamic_model');

        //initial.
        $message['is_error'] = true;
        $message['error_msg'] = "";
        $validate = "";
        $error_validate_flag = false;

        //check validation
        if (isset($_FILES['file']['size']) && $_FILES['file']['size'] > 0) {
            $filename = $_FILES['file']['tmp_name'];
            // pr($_FILES['file']);exit;

            // move_uploaded_file($_FILES['file'], $path);
            //check max file upload
            if ($_FILES['file']['size'] > MAX_UPLOAD_FILE_SIZE) {
                $message['error_msg'] = "Maximum file size is ".WORDS_MAX_UPLOAD_FILE_SIZE;
            } 
            elseif (mime_content_type($filename) != "application/vnd.ms-excel"
                        && mime_content_type($filename) != "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet") {
                //check extension if xls dan xlsx
                $message['error_msg'] = "File must .xls or .xlsx";
            } 
            else {
                //load and init library
                $this->load->library("PHPExcel_reader");
                $excel = new PHPExcel_reader();

                //read the file and give back the result of the file in array
                $result = $excel->read_from_excel($filename);

                if ($result['is_error'] == true) {
                    $message['redirect_to'] = "";
                    $message['error_msg']   = $result['error_msg'];
                } else {

                    //begin transaction
                    $this->db->trans_begin();

                    if (count($result['datas']) > 0) {
                        //loop the result and insert to db
                        $line = 2;
                        foreach ($result['datas'] as $model) {
                            if (count($model) < 1) {
                                $validate = "Invalid Template.";
                                $error_validate_flag = true;
                                break;
                            } else {
                                //check untuk semua kolom apakah null
                                if (empty($model[0]) && empty($model[1]) && empty($model[2]) && empty($model[3]) && empty($model[4]) && empty($model[5]) && empty($model[6]) && empty($model[7]) && empty($model[8]) && empty($model[9]) && empty($model[10]) && empty($model[11]) && empty($model[12]) && empty($model[13]) && empty($model[14]) && empty($model[15]) && empty($model[16]) && empty($model[17]) && empty($model[19]) && empty($model[20]) && empty($model[21]) && empty($model[22]) && empty($model[23]) && empty($model[24]) && empty($model[25]) && empty($model[26]) && empty($model[27]) && empty($model[28]) && empty($model[29]) && empty($model[30])) {
                                    $line++;
                                } else {
                                    // persiapan data

                                    $get_area = $this->Dynamic_model->set_model("tbl_region","tr","region_id")->get_all_data(array(
                                            "conditions" => array("tr.region_name" => strtoupper($model[3])),
                                            "row_array"  => true,
                                            "debug"      => false,
                                            // "order_by"   => false
                                        ))['datas'];

                                    $get_kategori = $this->Dynamic_model->set_model("tbl_kategori","tk","kategori_id")->get_all_data(array(
                                            "conditions" => array("tk.kategori_name" => strtoupper($model[29])),
                                            "row_array"  => true,
                                            "debug"      => false,
                                        ))['datas'];

                                    // pr($get_area);exit();
                                    $area  = "";
                                    $code  = "00";
                                    $code += 1;

                                    if( empty($get_area['region_name'] )) {
                                        $this->Dynamic_model->set_model("tbl_region","tr","region_id")->insert(
                                            array(
                                                "region_name" => strtoupper($model[3]),
                                                "region_code" => str_pad($code, 4, "0", STR_PAD_LEFT)
                                            )
                                        );
                                    } 

                                    if( empty($get_kategori['kategori_name'] )) {
                                        $this->Dynamic_model->set_model("tbl_kategori","tk","kategori_id")->insert(
                                            array(
                                                "kategori_name" => strtoupper($model[29])
                                            )
                                        );
                                    } 

                                    // foreach($get_area as $key => $val) {
                                    //     $get_a = $val['region_id'];
                                    // }

                                    $data = array(
                                        "Emp_Name" 		       => $model[0],
                                        "Emp_DOB_POB"          => $model[1],
                                        // "Emp_Pob"  	           => $model[2],
                                        "Emp_Address"          => $model[2],
                                        "Emp_AreaId"           => $model[3],
                                        "Emp_PhoneNumber"      => $model[4], 
                                        "Emp_Email"            => $model[5], 
                                        "Emp_LastEducation"    => $model[6], 
                                        "Emp_EndEducation"     => $model[7], 
                                        "Emp_TotalWorkExp"     => $model[8], 
                                        "Emp_WI_CerfNo"        => $model[9], 
                                        "Emp_WI_Level"         => $model[10], 
                                        "Emp_WI_IssuedBy"      => $model[11], 
                                        "Emp_WI_ValidPeriod"   => $model[12], 
                                        "Emp_UT_CerfNo"        => $model[13], 
                                        "Emp_UT_Level"         => $model[14], 
                                        "Emp_UT_IssuedBy"      => $model[15], 
                                        "Emp_UT_ValidPeriod"   => $model[16],
                                        "Emp_MPI_CerfNo"       => $model[17],
                                        "Emp_MPI_Level"        => $model[18],
                                        "Emp_MPI_IssuedBy"     => $model[19],
                                        "Emp_MPI_ValidPeriod"  => $model[20],
                                        "Emp_PT_CerfNo"        => $model[21],
                                        "Emp_PT_Level"         => $model[22],
                                        "Emp_PT_IssuedBy"      => $model[23],
                                        "Emp_PT_ValidPeriod"   => $model[24],
                                        "Emp_IR_CerfNo"        => $model[25],
                                        "Emp_IR_Level"         => $model[26],
                                        "Emp_IR_IssuedBy"      => $model[27],
                                        "Emp_IR_ValidPeriod"   => $model[28],
                                        "Emp_KategoriId"       => $model[29]
                                    );

                                    // validasi di jadikan satu di fungsi validate_import.
                                    $validate = $this->validate_import($data, $line);

                                    if ($validate !== true) {
                                        //if validate false, return error
                                        $error_validate_flag = true;
                                        break;
                                    } else {
                                        // Prepare 2 dimensions data array for insert_batch
                                        $today = date("Y-m-d H:i:s");
                                        $user_upload = $this->session->userdata("user_id");

                                        $get_area = $this->Dynamic_model->set_model("tbl_region","tr","region_id")->get_all_data(array(
                                            "conditions" => array("tr.region_name" => strtoupper($model[3])),
                                            "row_array"  => true,
                                            "debug"      => false,
                                        ))['datas'];

                                        $get_kategori = $this->Dynamic_model->set_model("tbl_kategori","tk","kategori_id")->get_all_data(array(
                                            "conditions" => array("tk.kategori_name" => strtoupper($model[29])),
                                            "row_array"  => true,
                                            "debug"      => false,
                                        ))['datas'];

                                        //cek no jika awalan 0 ,8,62
                                        //di ganti  +62
                                        $No = $model[4];
                                        $No62 = substr($No, 0,1 );
                                        if( !strcmp($No62, '0')){
                                            $No = substr($No, 1, strlen($No)-1);
                                            $No = sprintf("+62%s", $No);
                                        } else if(!strcmp($No62, '8')) {
                                            $No = sprintf("+62%s", $No);
                                        } else {
                                            $No = "+";
                                            $No .= $model[4];
                                        }
                                        // print_r($model[0]);exit;
                                        $array_insert = array(
                                            "Emp_Name"             => $model[0],
                                            "Emp_DOB_POB"          => $model[1],
                                            "Emp_Address"          => $model[2],
                                            "Emp_AreaId"           => $get_area['region_id'],
                                            "Emp_PhoneNumber"      => $No, 
                                            "Emp_Email"            => $model[5], 
                                            "Emp_LastEducation"    => $model[6], 
                                            "Emp_EndEducation"     => $model[7], 
                                            "Emp_TotalWorkExp"     => $model[8], 
                                            "Emp_WI_CerfNo"        => $model[9], 
                                            "Emp_WI_Level"         => $model[10], 
                                            "Emp_WI_IssuedBy"      => $model[11], 
                                            "Emp_WI_ValidPeriod"   => $model[12], 
                                            "Emp_UT_CerfNo"        => $model[13], 
                                            "Emp_UT_Level"         => $model[14], 
                                            "Emp_UT_IssuedBy"      => $model[15], 
                                            "Emp_UT_ValidPeriod"   => $model[16],
                                            "Emp_MPI_CerfNo"       => $model[17],
                                            "Emp_MPI_Level"        => $model[18],
                                            "Emp_MPI_IssuedBy"     => $model[19],
                                            "Emp_MPI_ValidPeriod"  => $model[20],
                                            "Emp_PT_CerfNo"        => $model[21],
                                            "Emp_PT_Level"         => $model[22],
                                            "Emp_PT_IssuedBy"      => $model[23],
                                            "Emp_PT_ValidPeriod"   => $model[24],
                                            "Emp_IR_CerfNo"        => $model[25],
                                            "Emp_IR_Level"         => $model[26],
                                            "Emp_IR_IssuedBy"      => $model[27],
                                            "Emp_IR_ValidPeriod"   => $model[28],
                                            "Emp_KategoriId"       => $get_kategori['kategori_id'],
                                            "Emp_CreatedDate"      => $today,
                                            "Emp_UploadedDate"     => $today,
                                            "Emp_UploadedBy"       => $user_upload
                                        );

                                        // insert_batch 
                                        $insert_data = $this->Dynamic_model->set_model(
                                            $this->_table, 
                                            $this->_table_aliases, 
                                            $this->_pk)->
                                        insert(
                                                $array_insert
                                        );

                                        // print_r($insert_data);exit();
                                        $line++;
                                    }
                                }
                            }
                        }
                    }

                    if ($this->db->trans_status() === false) {
                        $this->db->trans_rollback();
                        $message['redirect_to'] = "";

                        if ($error_validate_flag == true) {
                            $message['error_msg'] = $validate;
                        } else {
                            $message['error_msg'] = 'database operation failed.';
                        }
                    } else {
                        $this->db->trans_commit();

                        $message['is_error'] = false;

                        // success.
                        $message['notif_title']   = "Good!";
                        $message['datas']         = count($insert_data);
                        $message['notif_message'] = "Data has been imported.";

                        // on insert, not redirected.
                        $message['redirect_to'] = "";
                    }
                }
            }
        } else {
            $message['error_msg'] = 'File is empty (xls or xlsx).';
        }

        echo json_encode($message);
        exit;
    }
}
