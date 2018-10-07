<script type="text/javascript">
    var create = function (){
    //init validate form org
    var create_form = "#data-form";
    var create_rules = {
        name: {
            required: true,
            maxlength:100,
        },
        no1: {
            required: true,
            maxlength:15
        },
    };

    init_validate_form (create_form,create_rules);
};

    function group() {
        //select2 for gudang.
        var element = $("#group");
        var url     = "<?= site_url('data/list_select_group')?>";

        $(element).select2({
            ajax: {
                url: url,
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
                                text: item.group_name,
                                id: item.group_id,
                            }
                        }),
                        pagination: {
                            more: (params.page * data.paging_size) < data.total_data,
                        }
                    };
                },
                cache: true,
            },
            minimumInputLength: 0,
            allowClear: true,
            placeholder: " -- choose --",
            tags: false,
            maximumSelectionLength: 1,
        });
    }

    function region() {
        var element = $("#region");
        var url     = "<?= site_url('phonebook/list_select_region')?>";

        $(element).select2({
            ajax: {
                url: url,
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
                                text: item.region_name,
                                id: item.region_id,
                            }
                        }),
                        pagination: {
                            more: (params.page * data.paging_size) < data.total_data,
                        }
                    };
                },
                cache: true,
            },
            minimumInputLength: 0,
            allowClear: true,
            placeholder: " -- choose --",
            tags: false,
            maximumSelectionLength: 1,
        });
    }

    function kategori() {
        var element = $("#kategori");
        var url     = "<?= site_url('phonebook/list_select_kategori')?>";

        $(element).select2({
            ajax: {
                url: url,
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
                                text: item.kategori_name,
                                id: item.kategori_id,
                            }
                        }),
                        pagination: {
                            more: (params.page * data.paging_size) < data.total_data,
                        }
                    };
                },
                cache: true,
            },
            minimumInputLength: 0,
            allowClear: true,
            placeholder: " -- choose --",
            tags: false,
            maximumSelectionLength: 1,
        });
    }

    // function delete()
    // {
    //     var title = 'Delete Confirmation';
    //     var content = 'Do you really want to delete this ?';
    //     var type = 'warning';
    //     var replace_data = '<?php //site_url("phonebook/delete_file"); ?>';
    //     swal({
    //         title: title,
    //         text: content,
    //         type: type,
    //         showCancelButton: true,
    //         confirmButtonText: "Yes",
    //     }).then(function () {
    //         $.ajax({
    //             type: "post",
    //             url: url,
    //             cache: false,
    //             data: replace_data,
    //             dataType: 'json',
    //             beforeSend: function() {
    //                 $('.loading-box').css("display", "block");
    //             },
    //             success: function(data) {
    //                 $('.loading-box').css("display", "none");

    //                 if (data.is_error == true) swal("Error!", data.error_msg, "error");
    //                 else {
    //                     $.smallBox({
    //                         title: '<strong>' + data.notif_title + '</strong>',
    //                         content: data.notif_message,
    //                         color: "#659265",
    //                         iconSmall: "fa fa-check fa-2x fadeInRight animated",
    //                         timeout: 2000
    //                     }, function() {
    //                         $(document).trigger("popup-confirm:success", [url,data_id,data]);
    //                     });
    //                 }
    //             },
    //             error: function() {
    //                 $('.loading-box').css("display", "none");
    //                 swal("Error!", "Something Went wrong", "error");
    //             }
    //         });
    //     }).catch(swal.noop);;
    // }


$(document).ready(function() {
    create();
    group();

    kategori();
    $('.datepicker').datepicker({
        dateFormat: 'yyyy-mm-dd'
    });
    region();
});
</script>
