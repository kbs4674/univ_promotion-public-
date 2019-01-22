document.addEventListener('DOMContentloaded', function() {
  var a = $$('.twitter-typeahead');
  a[0].style.display = 'none';

  $('#input_form').click(function() {
    console.log('clicked');
  });
});
