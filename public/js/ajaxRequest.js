$(document).ready(function(){
  $.getJSON('https://domination-all.herokuapp.com/game_data', function(data) {
    data.countries.forEach(function(state) {
      $('svg path[data-code="' + state.country + '"]').attr('fill', state.color)
      $('svg path[data-code="' + state.country + '"]').hover(function() {
        $(this).attr('fill', 'black')}, function() {
          $(this).attr('fill', state.color)
        });
    });
  });
});