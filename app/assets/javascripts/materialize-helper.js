$(document).ready(function(){

  $(".button-collapse").sideNav({
    menuWidth: 175,
    edge: 'left',
    closeOnClick: true 
  });

  $('.slider').slider({
    Height: 425
  });

  $(".dropdown-button").dropdown({
    inDuration: 300,
    outDuration: 225,
    constrain_width: false, // Does not change width of dropdown to that of the activator
    hover: true, // Activate on hover
    gutter: 0, // Spacing from edge
    belowOrigin: true // Displays dropdown below the button
  });
});
