<script>
	$(document).ready(function(){
		add_chat();
		var d = new Date();
        var n = d.getTime();
		var sess = "<?= $this->session->userdata('user_id'); ?>";
		var urls = '<?= site_url('messenger/load_chat/'); ?>'+id+'?'+n;
		// alert(id);
		// alert(urls);
		setInterval(function(){
			// if( id == sess ) {
			   $('#pesan').load(urls);
			// }
		}, 2000)
	});


	function add_chat ()
	{
		var url = "<?= site_url('messenger/process_form'); ?>";
		var data = $("form");
		$("#btnsub").click(function(e){
			e.preventDefault();	
			$.ajax({
	            url: url,
	            type:'post',
	            data: data.serialize(),
	            // dataType: 'json',
	            success: function( response ){
	            	load_chat();

	            	$('#chat').val('');
	            },error:function(xhr){
	            	alert("Internal server error !!!" + xhr);
	            	// return false;
	            }
			});
		})
	}

	function load_chat()
	{
		var sess = "<?= $this->session->userdata('user_id'); ?>";
		var url =  "<?= site_url('messenger/load_chat/'); ?>"+id;
		// alert(url);
		$.ajax({
            url: url,
            type:'POST',
            // chache: false,
            // data: data.serialize(),
            // dataType : 'json',
            success: function( response ){
                // console.log(response);
                $("#pesan").html(response);
            },error:function(){
            	alert("Internal server error !!!");
            	return false;
            }
		});
	}
	load_chat();
</script>