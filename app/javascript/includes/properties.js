$(function(){    
    $("#toggleDetails").on("click", function(){
        var details = $("#prop-details");
        // console.log('test');
        details.toggleClass("open");
    })        
});