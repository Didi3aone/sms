<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Change_log extends CI_Controller {

	function __construct() {
		parent::__construct();
	}

	public function index()
	{
		$this->load->model('Dynamic_model');

		$log = $this->Dynamic_model->set_model("tbl_change_log","tcl","log_id")->get_all_data()['datas'];
		$data = array(
			"datas" => $log
		);

		$this->load->view('change_log_view', $data);
	}

}

/* End of file Change_log.php */
/* Location: ./application/controllers/Change_log.php */