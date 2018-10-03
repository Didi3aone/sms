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
        var url     = "<?= site_url('phonebook/list_select_group')?>";

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


$(document).ready(function() {
    create();
    group();
    region();
});
</script>
