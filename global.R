app_jscode <-
  "shinyjs.disableTab = function(name) {
    var tab = $('.nav li a[data-value=' + name + ']');
    tab.bind('click.tab', function(e) {
      e.preventDefault();
      return false;
    });
    tab.addClass('disabled');
  }
  shinyjs.enableTab = function(name) {
    var tab = $('.nav li a[data-value=' + name + ']');
    tab.unbind('click.tab');
    tab.removeClass('disabled');
  }"

reset_all_evenData <-
    "shinyjs.resetSelected = function() { Shiny.setInputValue('plotly_selected-pca_isO', 'null', {priority: 'event'});
                              Shiny.setInputValue('plotly_selected-pca_is', 'null', {priority: 'event'});
                              Shiny.setInputValue('plotly_selected-pca_NO', 'null', {priority: 'event'});
                              Shiny.setInputValue('plotly_selected-pca_N', 'null', {priority: 'event'});
                              Shiny.setInputValue('plotly_click-A', 'null', {priority: 'event'});
                                                                          }"
