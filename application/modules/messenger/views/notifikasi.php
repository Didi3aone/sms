<?php
	$this->load->model('Dynamic_model');
	$sess = $this->session->userdata("user_id");
	$notif_inbox  = $this->Dynamic_model->set_model("tbl_chat","tc","ChatId")->get_all_data(
        array(
        	"select" 		    => "tu.user_full_name, tc.*",
            "joined" 		    => array("tbl_user tu" => array("tu.user_id" => "tc.ChatFromId")),
            "count_all_first"   => false,
            "conditions"		=> array(
            	"ChatToId"    => $sess, 
            	"ChatIsRead"  => STATUS_UNREAD
            ),
            "status"            => -1,
        )
    )['datas'];
?>
<ul class="notification-body">
	<?php
		foreach($notif_inbox as $key => $value) :
			$from 		= $value['user_full_name'];
			$time 		= $value['ChatDate'];
			$content 	= $value['ChatContent'];
			$id			= $value['ChatFromId'];
			$chat_id    = $value['ChatId'];
	?>
	<li>
		<span class="unread">
			<a href="<?= site_url('messenger/send-msg/'.$id.'/'.$chat_id); ?>" class="">
				<!-- <img src="img/avatars/4.png" alt="" class="air air-top-left margin-top-5" width="40" height="40" /> -->
				<span class="from"><?= $from; ?> <i class="icon-paperclip"></i></span>
				<time><??></time>
				<!-- <span class="subject">Msed quia non numquam eius modi tempora</span> -->
				<span class="msg-body"><?= $content; ?> </span>
			</a>
		</span>
	</li>
	<?php endforeach;?>
</ul>
