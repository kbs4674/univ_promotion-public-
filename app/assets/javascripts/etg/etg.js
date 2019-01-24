var stack = 0;
var char = [];
var compare = [76, 73, 75, 69, 76, 73, 79, 78];
document.addEventListener('keydown', function(e) {
if (e.keyCode == 76 || e.keyCode == 73 || e.keyCode == 75 || e.keyCode == 69 || e.keyCode == 79 || e.keyCode == 78) {
    char.push(e.keyCode);
    console.log(char);
}

if (char.sort().toString() == compare.sort().toString()) {
    $(".trg").bind("click", function(){
    $(".trg").css("background-image", "url('/img/likelion_background.png')");
    $(".trg").css("position", "fixed");
    $(".trg").css("background-size", "100% 100%");
    $(".trg").css("width", "100%");
    $(".trg").css("height", "100%");
    $(".trg").css("z-index", "5000000");
    $(".trg").css("margin-top", "-2100px");
    $(".trg").fadeIn();
    setTimeout(function() {
        $(".trg").fadeOut();
    }, 3000);
    
    $(".trg").click(function(){
        $(".trg").fadeOut();
    });
});

    $("#lkn").trigger("click");
        char.push("end");
    }
});