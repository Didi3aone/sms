<script type="text/javascript">

    // $('#numb').change(function() {
    //     if ($(this).val() === '1') {
    //         $("#input_numb").hide();
    //         $("#from_db").show();
    //     } else if( $(this).val()  === '2'){
    //         $("#input_numb").show();
    //         $("#from_db").hide();
    //     } else {
    //         $("#input_numb").hide();
    //         $("#from_db").hide();
    //     }
    // });

    function countChar(val) {
        var len = val.value.length;
        
        if (len >= 160) {
            val.value = val.value.substring(0, 160);
        } else {
            $('#charNum').text(160 - len);
        } 
    };

    var create = function (){
        //init validate form org
        var create_form = "#sms-form";
        var create_rules = {
            isi: {
                //required: true,
                maxlength:100,
            },
            // code: {
            //     required: true,
            //     maxlength:10
            // },
        };

        init_validate_form (create_form,create_rules);
    };

    //function get template sms
    function get_template ( id )
    {
        var url = '<?= site_url("sms/get_template"); ?>';

        $.ajax({
            type: "POST",
            url: url,
            data: {
                id : id
            },
            // dataType: 'json',
            success: function( data ){
                var jsonData = JSON.parse(data);
                console.log(jsonData);

                if(jsonData.is_error == false) {
                    // console.log(data.data.template_content);
                    for (var i = 0; i < jsonData.datas.length; i++) {
                        var counter = jsonData.datas[i];
                        console.log(counter.template_content);
                        $("textarea[name='content']").val(counter.template_content);
                    }
                }
            },error: function ( error ) {
                alert("internal server error" + error);
                console.log(error);
                return false;
            }
        });
    }

    $(document).ready(function() {     

        var url = "<?= site_url('sms/process_form_replay'); ?>";
        var data = $("form");

        $("#btnsub").click(function(e){
            e.preventDefault(); 
            $.ajax({
                url: url,
                type:'post',
                data: data.serialize(),
                dataType: 'json',
                success: function( response ){
                    // alert();
                    console.log(response);
                    if( response['is_error'] == false) {
                        $.smallBox({
                            title: '<strong>' + response['notif_title'] + '</strong>',
                            content: response['notif_message'],
                            color: "#659265",
                            iconSmall: "fa fa-check fa-2x fadeInRight animated",
                            timeout: 1000
                        }, function() {
                            //triger form submit success
                            location.reload();
                            // $(document).trigger("form-submit:success", [form_id,data]);

                            // if (data['redirect_to'] == "") {
                            //     $(form)[0].reset();
                            //     $(form).find("button").attr('disabled', false);

                            //     //triger form submit no redirection
                            //     $(document).trigger("form-submit:noredirect", [form_id,data]);
                            // } else {
                            //     // go(data['redirect_to']);
                            // }
                        });
                    }
                },error:function(xhr){
                    alert("Internal server error !!!" + xhr);
                    return false;
                }
            });
        })

        $('#template').change(function() {
            var id  = $("#template").val();

            if ( id )
                get_template(id);
            else 
                $("textarea[name='content']").val('');
        });
    });
</script>