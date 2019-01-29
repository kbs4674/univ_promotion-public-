var checkboxes = $(".select_option > div > div > input[type='checkbox']");
checkboxes.on('change', function() {
  $('#univ-content').val(
    checkboxes.filter(':checked').map(function(item) {
      return this.placeholder;
    }).get().join(', ')
  );
});