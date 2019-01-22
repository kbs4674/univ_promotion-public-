document.addEventListener('DOMContentLoaded', function() {
  var typed = new Typed('#main_typed', {
    stringsElement: '#typed_string',
    typeSpeed: 100,
    backSpeed: 80,
    startDelay: 400,
    loop: true,
    loopCount: Infinity,
  });
});

function toggleLoop(typed) {
  if (typed.loop) {
    typed.loop = false;
  } else {
    typed.loop = true;
  }
}
