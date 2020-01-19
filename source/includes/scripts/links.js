$(document).ready(function() {
    $(".clip_button").click(function(){
        $(".timg").html("کپی شد!");
        $(".timg").fadeIn("fast");
        $(".timg").delay(900).fadeOut(1100);                
    });
});

function decodeEntities(encodedString) {
    var textArea = document.createElement('textarea');
    textArea.innerHTML = encodedString;
    return textArea.value;
}

$(function() { 
       var client = new ZeroClipboard( $('.clip_button'), {
           moviePath: "//cdnjs.cloudflare.com/ajax/libs/zeroclipboard/2.2.0/ZeroClipboard.swf"
       } )
       client.on("copy", function(e) {
           var clipboard = e.clipboardData;
       })
})