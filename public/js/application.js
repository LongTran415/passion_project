$(document).ready(function() {
  ('#tag-button').on('click', function(event){
    event.preventDefault();

    var button = $(this);
    var form = $("#image-tag-adder");

    button.hide();
    form.show();
  });
});
