<?php
	$this->load->model('Dynamic_model');
	$notif_inbox  = $this->Dynamic_model->set_model("inbox","in","ID")->get_all_data(
        array(
            "status"            => -1,
            "count_all_first"   => false,
            "conditions"		=> array("IsRead" => 0)
        )
    )['datas'];
?>
<ul class="notification-body">
	<?php
		foreach($notif_inbox as $key => $value) :
			$from 		= $value['SenderNumber'];
			$time 		= $value['ReceivingDateTime'];
			$content 	= $value['TextDecoded'];
			$id			= $value['ID'];
	?>
	<li>
		<span class="unread">
			<a href="<?= site_url('sms/view_inbox/'.$id); ?>" class="">
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
