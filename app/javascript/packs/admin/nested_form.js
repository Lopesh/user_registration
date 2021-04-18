$(document).ready(function () {
  $(document).on('click', '.remove_record', function (event) {
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('div.row').remove();
    return event.preventDefault();
  });

  $(document).on('click', '.add_fields', function (event) {
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');

    $(this).closest('.nested_form').find('.fields').append($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  });
})
