$("#submit").click(function(){
        var formData = $("#loginform").serialize();
        $.ajax({
            type: "POST",
            url: "/checklogin",
            cache: false,
            data: formData
            
        });
        return false;
});
