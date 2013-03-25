jQuery(function($) {
  $('.i-want-stuff a[data-type=json]').on('ajax:success', function(event, data, status, xhr) {
    alert(data.text);
  });
});