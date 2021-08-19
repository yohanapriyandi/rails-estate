$(function(){    
    $("#toggleDetails").on("click", function(){
        var details = $("#prop-details");
        // console.log('test');
        details.toggleClass("open");
        if (details.hasClass("open")) {
            $(this).text("Show less");
        } else {
            $(this).text("Show more");
        }
    });

    $("#send-email").on("click", function(){
        var agent_id = $("#agent_id").val(),
            first_name = $("#message-first-name").val(),
            last_name = $("#message-last-name").val(),
            email = $("#message-email").val(),
            message = $("#message-text").val();

        $.ajax({
            url: "/agent/message",
            method: "POST",
            dataType: "json",
            data: {
                agent_id: agent_id,
                first_name: first_name,
                last_name: last_name,
                email: email,
                message: message,
            },
            success: function(data){
                $('#contact-modal form').remove();
                $('#send-email').remove();
                $('#contact-modal .modal-body').text("Your message has been sent succesfully!");                
            }
        });
    });

    // modal
        
      $("#contact_modal").on("click", function(event){
        var button = $(event.relatedTarget);
        var modal = $(this);
      });        
});