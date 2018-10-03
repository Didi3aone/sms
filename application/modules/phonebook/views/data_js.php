<script type="text/javascript">
  var data_id=0;
	function init_datatable(extra_params = [".filter-this"], sorting = false , display_length = 50) {
	    var responsiveHelper_dt_basic = undefined;
	    var table_id = "#dataTable";
	    var ajax_source = "<?= site_url('phonebook/list_all_data'); ?>";
	    var url = "<?= site_url('phonebook/'); ?>";
	    var columns = [
	    	{
	    		'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'visible': true,
		        'className': 'select-checkbox',
		        'render': function (data, type, full)
		        {
		        	return '<input type="checkbox" onclick="handleClick(this)" name="id" id="select-all" value="' +full.UserDataId +'">';
	            }
	        },
	        {"data": "UserDataId" },
	        {"data": "UserDataName" },
	        {"data": "UserMobilePhone"},
	        {"data": "PENGALAMAN"},
	        {"data": "SERTIFIKAT"},
	        {
	            "title": "Action",
	            "class": "text-center",
	            "data": null,
	            "sortable": false,
	            "render": function(data, type, full) {
	                var edit =  '<td>';
	                    // edit +=  ' <a href="' + url + full.data_id + '" class="btn btn-info btn-circle" rel="tooltip" title="View Group" data-placement="top" ><i class="fa fa-eye"></i></a>';
	                    edit +=  ' <a href="'+ url +"edit/"+ full.UserDataId + '" class="btn btn-primary btn-circle" rel="tooltip" title="Edit Group" data-placement="top" ><i class="fa fa-pencil"></i></a>' +
	                             ' <a href="'+ url +'delete" data-id ="' + full.UserDataId + '" data-name ="' + full.UserDataName + '" class="btn btn-danger btn-circle delete-confirm" rel="tooltip" title="Delete Group" data-placement="top" ><i class="fa fa-trash-o"></i></a>';
	                    edit +=  '</td>';

	                return edit;
	            }
	        },
	    ];
	    var breakpointDefinition = {
	        desktop: 1320,
	        tablet: 1024,
	        phone: 480
	    };

	    if (sorting == false) {
	        sorting = [
	            [0, "desc"]
	        ];
	    }

        //f represent filter
        $(table_id).dataTable({
            "dom": "<'dt-toolbar'<'col-xs-12 col-sm-6'><'col-sm-6 col-xs-12 hidden-xs'l>r>" +
                "t" +
                "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
            "autoWidth": true,
            "order": sorting,
            "pageLength": display_length,
            "pagingType": "full_numbers",
            "processing" : true,
            "serverSide": true,
    		"ajax": {
                "url" : ajax_source,
                "data" : function ( d ) {
                    var extra = [];
                    if (extra_params) {
                        $.each(extra_params, function( key, value ) {
                            var form_data = $(value).serializeArray();
                            $.each(form_data, function( form_key, value ) {
                                var name = value.name;
                                d[name] = value.value;
                            });
                        });
                    }

                    return d;
                }
            },
            "columns": columns,
            "preDrawCallback": function() {
                // Initialize the responsive datatables helper once.
                if (!responsiveHelper_dt_basic) {
                    responsiveHelper_dt_basic = new ResponsiveDatatablesHelper($(table_id), breakpointDefinition);
                }
            },
            "rowCallback": function(nRow) {
                responsiveHelper_dt_basic.createExpandIcon(nRow);
            },
            "drawCallback": function(oSettings) {
                responsiveHelper_dt_basic.respond();
            }

        });

	    //setup before functions
	    var typingTimer;                //timer identifier
	    var doneTypingInterval = 800;  //time in ms, 1 second for example

	    //Handle click on "Select all" control
	   	$('#select-all').on('click', function(){
		    // Check/uncheck all checkboxes in the table
	      	var rows = table_id;
	      	$('input[type="checkbox"]', rows).prop('checked', this.checked);
            if ($('input[type="checkbox"]').is(':checked')) {
                $("#btns").show();
                $("#btn_1").show();
            } else {
                $("#btns").hide();
                // $("#btn_1").hide();
            }
	   	});

	 
	    $(table_id + " input[type=text].filter-this").on( 'keyup', function () {
	        clearTimeout(typingTimer);
	        typingTimer = setTimeout(function () {
	            $(table_id).dataTable().fnClearTable();
	        }, doneTypingInterval);
	    });

	    $(table_id + " select.filter-this, " + table_id + " input[type=radio].filter-this").on( 'change', function () {
	        $(table_id).dataTable().fnClearTable();
	    });

	    $(table_id + " .filter-this").on( 'keydown', function () {
	        clearTimeout(typingTimer);
	    });

	    $(table_id + " .clear-filter").on( 'click', function () {
	        $( this ).closest( ".input-group" ).find("input").val("");
	        $(table_id).dataTable().fnClearTable();
	    });

	    $(document).on("click", ".delete-confirm", function(e) {
	        e.stopPropagation();
	        e.preventDefault();
	        var url = $(this).attr("href");
	        var data_id = $(this).data("id");
	        var data_name = $(this).data("name");

	        title   = 'Delete Confirmation';
	        content = 'Do you really want to delete ' + data_name + ' ?';

	        popup_confirm (url, data_id, title, content);
	    });


	    $('.btn-click').click(function(){
	    	// var id = [];
		    
		    var id = $('input[type=checkbox]:checked').map(function()
            {
                return $(this).val();
            }).get();
	    	$("#id_sms").val(id);
	    	console.log(id);
	    	// return false;
	    });

	    $(document).on("popup-confirm:success", function (e, url, data_id){
	        $("#dataTable").dataTable().fnClearTable();
	    });
	}

	function handleClick()
	{
		if ($('input[type="checkbox"]').is(':checked')) {
            $("#btns").show();
            $("#btn_1").show();
        } else {
            $("#btns").hide();
            // $("#btn_1").hide();
        }
	}

	$(document).ready(function() {
	    init_datatable();

	    // submit handler from external button.
	    $(".submit-form").on("click", function() {
	        var formId = $(this).data("form-target");
	        $("#" + formId).submit();
	    });
	});

</script>
