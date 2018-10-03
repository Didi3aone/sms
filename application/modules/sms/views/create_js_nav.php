<script type="text/javascript">

    $('#group').change(function() {
        if ($(this).val()) {
            $("#input_numb").show();    
        } else {
            $("#input_numb").hide();   
        }
    });

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
        var create_form = "#group-form";
        var create_rules = {
            nama: {
                //required: true,
                maxlength:100,
            },
            code: {
                required: true,
                maxlength:10
            },
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
                        $("textarea[name='message']").val(counter.template_content);
                    }
                }
            },error: function ( error ) {
                alert("internal server error" + error);
                console.log(error);
                return false;
            }
        });
    }

    //function get template sms
    function get_no_broadcast ( id )
    {
        var url = '<?= site_url("sms/get_no_broadcast"); ?>';

        $.ajax({
            type: "POST",
            url: url,
            data: {
                id : id
            },
            dataType: 'json',
            success: function( data ) {
                //get data and convert array to string;
                var datas = data.datas;
                var val  = datas.toString();
                console.log("sd"+val);
                $("input[name='no[]']").val(val);
            },error: function ( error ) {
                alert("internal server error" + error);
                console.log(error);
                return false;
            }
        });
    }


    $(document).ready(function() {
        
        //init
        create();

        $('#template').change(function() {
            var id  = $("#template").val();

            if ( id )
                get_template(id);
            else 
                $("#message").val('');
        });

        $("#group").change(function() {
            var id = $("#group").val();

            if ( id )
                get_no_broadcast( id )
            else 
                $("#no[]").val(' ');
        })

    });
</script>