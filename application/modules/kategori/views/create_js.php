<script type="text/javascript">
    var create = function (){
    //init validate form org
    var create_form = "#groups-form";
    var create_rules = {
        nama: {
            required: true,
            maxlength:100,
        },
        // code: {
        //     required: true,
        //     maxlength:10
        // },
    };

    init_validate_form (create_form,create_rules);
};


$(document).ready(function() {
    create();
});
</script>
