//
// Flicker free fading
//
// show any hidden elements
// Stop animation on this element and fade to 100% 
$.fn.fadesIn = function(speed){
  return $(this).stop().show().fadeTo((speed || 'fast'), 1);
}
// Stop animation on this element and fade to 0%.
// After faded, hide so we can use the :hidden selector
$.fn.fadesOut = function(speed){
  return $(this).stop().fadeTo((speed || 'fast'), 0, function(){$(this).hide()});
}

// fade the element and remove once it's invisible
$.fn.fadeRemove = function(speed){
  return $(this).fadeOut((speed || 'fast'), function(){
    $(this).remove()
  });
}
