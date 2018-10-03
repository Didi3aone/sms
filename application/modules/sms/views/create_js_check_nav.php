<script type="text/javascript">
    $('#numb').change(function() {
        if ($(this).val() === '1') {
            $("#input_numb").hide();
            $("#from_db").show();
        } else if( $(this).val()  === '2'){
            $("#input_numb").show();
            $("#from_db").hide();
        } else {
            $("#input_numb").hide();
            $("#from_db").hide();
        }
    });

    function countChar(val) {
        var len = val.value.length;
            $('#charNum').text(160 - len);
        
        // if (len >= 160) {
        //     val.value = val.value.substring(0, 160);
        // } else {
        // } 
    };

    var create = function (){
        //init validate form org
        var create_form = "#check-form";
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


    $(document).ready(function() {
            //init
        create();
        // From_db();
        $('#template').change(function() {
            var id  = $("#template").val();

            if ( id )
                get_template(id);
            else 
                $("#message").val('');
        });
    });
</script>