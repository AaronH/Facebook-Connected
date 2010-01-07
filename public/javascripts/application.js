$(document).ready(function(){
  // AJAX	
  initAjax();
  
  // Forms
  initForms();
  
  // Call any JS required by the view
  callPrep();
});

function isIe(){return $.browser.msie;}
function isIe6(){return (isIe() && (parseFloat($.browser.version) < 7.0));}
function hasMetaKey(e) {return (e.ctrlKey || e.metaKey);}
function noTarget(e) {return (typeof(e.target.href) == 'undefined');}
function isLink(e){return !hasTarget(e);}

