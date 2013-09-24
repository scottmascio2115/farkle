$(document).ready(function() {
  var $box1 = $('#player1_strip .active');
  var $box2 = $('#player2_strip .active');

  $(document).keyup(function(e) {
    if (e.keyCode == 37) {
      $box1 = $box1.next();
      $box1.addClass('active');
      $box1.prev().removeClass('active');
    }
    var p_1 = $('#player1_strip td:last-child')
    var name = $('#player1').text();
    if (p_1.hasClass('active')){
      $(document).unbind();
      var stats = {winner: name}
      $.post('/game', stats, function(response){
        $('body').append(response);
      });
    }
  });
  
  $(document).keyup(function(e) {
    if (e.keyCode == 39) {
      $box2 = $box2.next();
      $box2.addClass('active');
      $box2.prev().removeClass('active');
    }

    var p_2 = $('#player2_strip td:last-child')
    var name = $('#player2').text()
    if (p_2.hasClass('active')){
      
      $(document).unbind();
      var stats = {winner: name}
      $.post('/game', stats, function(response){
        $('body').append(response);
      });
    
    }
    
  });

});
