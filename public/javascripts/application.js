// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery.ajaxSetup({
    'beforeSend' : function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})
$(document).ready(function() {
    $("#new_comment").submit(function() {
        $.post($(this).attr("action"), $(this).serialize(), null, "script");
        return false;
    })
})

$(function(){
    $("#event_time").AnyTime_picker(  { 
    //format: "%W, %M %D in the Year %z %E", firstDOW: 1 
    format: "%Y-%m-%d %H:%i:00 %p",firstDOW: 0 
    //        formatUtcOffset: "%: (%@)",
    //        hideInput: true
    } );    
});


// $(document).ready(function(){
//     $("#comments a").click(function(event){
//          $(this).parent().hide("slow");
//          event.preventDefault();
//    });
// });
    
