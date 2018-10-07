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
    };

    var create = function (){
        //init validate form org
        var create_form = "#sms-form";
        var create_rules = {
            // nomor: {
            //     // required: true,
            //     // maxlength:100,
            // },
            methode: {
                required: true,
                // maxlength:10
            },
        };

        init_validate_form (create_form,create_rules);
    };

    function From_db() {
        var url = "<?= site_url(); ?>";
        //select2 for gudang.
        var element = $("#from_dbs");
        $(element).select2({
            ajax: {
                url: url + "sms/list_select_no",
                dataType: "json",
                delay: 500,
                data: function(params) {
                    return {
                        q: params.term,
                        page: params.page,
                    };
                },
                processResults: function(data, params) {

                    params.page = params.page || 1;

                    return {
                        results: $.map(data.datas, function(item) {
                            return {
                                text: item.Emp_Name,
                                id: item.Emp_PhoneNumber
                            }
                        }),
                        pagination: {
                            more: (params.page * data.paging_size) < data.total_data,
                        }
                    };
                },
                cache: true,
            },
            minimumInputLength: 1,
            allowClear: true,
            placeholder: " -- Choose --",
            tags: false,
            maximumSelectionLength: false,
        });
    }

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
                        $("textarea[name='isi']").val(counter.template_content);
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
        From_db();

        $('#template').change(function() {
            var id  = $("#template").val();

            if ( id )
                get_template(id);
            else
                $("#message").val('');
        });
    });
</script>
