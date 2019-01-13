$(document).on('turbolinks:load', function(){
  $('#page').infiniteScroll({
    path: "nav.pagination a[rel=next]",
    hideNav: '.pagination',
    append: ".card",
    history: false,
    prefill: true,
    status: '.page-load-status'
  });
});
