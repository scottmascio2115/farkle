$(function() {
    $( "#dialog" ).dialog({
      autoOpen: false,
      show: {
        effect: "blind",
        duration: 1000
      },
      hide: {
        effect: "drop",
        duration: 1000
      }
    });

    $( "#opener" ).click(function() {
      $( "#dialog" ).dialog( "open" );
    });
  });

  $(function() {
        $( "#dialog2" ).dialog({
      autoOpen: false,

      show: {
        effect: "blind",
        duration: 1000
      },
      hide: {
        effect: "fade",
        duration: 1000
      }
    });

    $( "#opener2" ).click(function() {
      $( "#dialog2" ).dialog( "open" );


    });
  });

$(function() {
    $( "#zerod" ).dialog({
      modal: true,
      buttons: {
        Ok: function() {
          $( this ).dialog( "close" );
        }
      }
    });
  });

$(function() {
    $( "#skizzlingdice" ).dialog({
      modal: true,
      buttons: {
        Ok: function() {
          $( this ).dialog( "close" );
        }
      }
    });
  });

$(document).ready(function() {

  $("#sixdice").hide();
  $("#fivedice").hide();
  $("#twodice").hide();
  $("#threedice").hide();
  $("#fourdice").hide();
  $("#sixer").on('click', function(event){
    event.preventDefault();
  $("#fivedice").hide();
  $("#fourdice").hide();
  $("#onedice").hide();
  $("#twodice").hide();
  $("#threedice").hide();
  $('#sixdice').toggle();

    });

  $("#sixdice").hide();
  $("#fivedice").hide();
  $("#twodice").hide();
  $("#threedice").hide();
  $("#fourdice").hide();
  $("#fiver").on('click', function(event){
    event.preventDefault();
  $("#sixdice").hide();
  $("#fourdice").hide();
  $("#twodice").hide();
  $("#onedice").hide();
  $("#threedice").hide();
  $('#fivedice').slideToggle(700);

    });
  $("#sixdice").hide();
  $("#fivedice").hide();
  $("#threedice").hide();
  $("#onedice").hide();
  $("#twodice").hide();
  $("#fourdice").hide();
  $("#fourer").on('click', function(event){
    event.preventDefault();
  $("#sixdice").hide();
  $("#threedice").hide();
  $('#fivedice').hide();
  $("#onedice").hide();
  $("#twodice").hide();
  $('#fourdice').slideToggle(700);

    });
  $("#sixdice").hide();
  $("#fivedice").hide();
  $("#fourdice").hide();
  $("#twodice").hide();
  $("#onedice").hide();
  $("#threedice").hide();
  $("#threeer").on('click', function(event){
    event.preventDefault();
  $("#sixdice").hide();
  $('#fivedice').hide();
  $('#fourdice').hide();
  $("#onedice").hide();
  $("#twodice").hide();
  $('#threedice').slideToggle(700);

    });

  $("#sixdice").hide();
  $("#fivedice").hide();
  $("#fourdice").hide();
  $("#threedice").hide();
  $("#onedice").hide();
  $("#twodice").hide();
  $("#twoer").on('click', function(event){
    event.preventDefault();
  $("#sixdice").hide();
  $('#fivedice').hide();
  $('#fourdice').hide();
  $('#threedice').hide();
  $("#onedice").hide();
  $('#twodice').slideToggle(700);

    });
  $("#sixdice").hide();
  $("#fivedice").hide();
  $("#fourdice").hide();
  $("#threedice").hide();
  $("#twodice").hide();
  $("#onedice").hide();
  $("#oneer").on('click', function(event){
    event.preventDefault();
  $("#sixdice").hide();
  $('#fivedice').hide();
  $('#fourdice').hide();
  $('#threedice').hide();
  $('#twodice').hide();
  $('#onedice').slideToggle(700);

    });
   });

