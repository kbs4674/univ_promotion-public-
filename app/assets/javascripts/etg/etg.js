var stack = 0;
var char = [];
var e1 = [76, 73, 75, 69, 76, 73, 79, 78];
var e2 = [68, 65, 77, 68, 65];
document.addEventListener('keydown', function(e) {
if (e.keyCode == 65 || e.keyCode == 68 || e.keyCode == 69 || e.keyCode == 73 || e.keyCode == 75 || e.keyCode == 76 || e.keyCode == 77 || e.keyCode == 78 || e.keyCode == 79) {
    char.push(e.keyCode);
    console.log(char);
}

if (char.sort().toString() == e1.sort().toString() || char.sort().toString() == e2.sort().toString()) {
    $(".trg").bind("click", function(){
    $(".trg").css("background-image", "url('/img/likelion_background.png')");
    $(".trg").css("position", "fixed");
    $(".trg").css("background-size", "100% 100%");
    $(".trg").css("width", "100%");
    $(".trg").css("height", "100%");
    $(".trg").css("z-index", "5000000");
    $(".trg").css("margin-top", "-2130px");
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