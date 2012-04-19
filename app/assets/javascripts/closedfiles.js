$(function () {
  // Sorting and pagination links.  
  $('#closedfiles th a, #closedfiles .pagination a').live('click', function () {
    $.getScript(this.href);
    return false;
  });
  
  // Search form.
  
  $('#closedfiles_search').submit(function () {
    $.get(this.action, $(this).serialize(), null, 'script');
    return false;
  }); 
  
  $('.client_name, .matter_name').jTruncate({
    length: 25,
    minTrail: 0,
    moreText: "",
    lessText: "",
    ellipsisText: "…"
   });
 
})