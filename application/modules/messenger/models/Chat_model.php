<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Chat_model extends CI_Model {

	function __construct() {
		parent::__construct();
	}	

	function get_chat($id)
	{
		$sess = $this->session->userdata('user_id');
		$this->db->select("tc.*, tu.*");
		$this->db->from("tbl_chat tc");
		$this->db->join("tbl_user tu","tc.ChatFromId = tu.user_id");
		$this->db->join("tbl_user ts","tc.ChatToId = ts.user_id");
		$this->db->where("(tc.ChatToId = '".$id."' AND tc.ChatFromId= '".$sess."' OR tc.ChatToId = '".$sess."' AND tc.ChatFromId= '".$id."')");
		$this->db->order_by("tc.ChatId","desc");
		// $this->output->enable_profiler(TRUE);
		$res = $this->db->get();

		return $res->result_array();
	}

	function get_chat_row($id)
	{
		$this->db->select("tc.*, tu.*");
		$this->db->from("tbl_chat tc");
		$this->db->join("tbl_user tu","tc.ChatFromId = tu.user_id");
		$this->db->join("tbl_user ts","tc.ChatToId = ts.user_id");
		$this->db->where("tc.ChatToId",$id);
		$this->db->where("tc.ChatFlagClose",STATUS_CLOSE);
		$this->db->order_by("tc.ChatId","desc");
		// echo $this->db->last_query();
		$res = $this->db->get();

		return $res->row_array();
	}

}

/* End of file Chat_model.php */
/* Location: ./application/modules/messenger/models/Chat_model.php */