<script type="text/javascript">
    var create = function (){
    //init validate form org
    var create_form = "#template-form";
    var create_rules = {
        name: {
            //required: true,
            maxlength:100,
        },
        content: {
            required: true,
            maxlength:160
        },
    };

    init_validate_form (create_form,create_rules);
};


$(document).ready(function() {
    create();
});
</script>