$(function(){
     $("#showPhone").on("click", function(){
        var phone = $(this).attr("data_phone");        
        $(this).find("span").text(phone);
    });    
});
