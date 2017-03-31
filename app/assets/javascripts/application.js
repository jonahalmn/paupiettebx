// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

var lastScrollTop = 0;
document.getElementById("header");
// element should be replaced with the actual target element on which you have applied scroll, use window in case of no target element.
window.addEventListener("scroll", function(){ // or window.addEventListener("scroll"....
 var st = window.pageYOffset || document.documentElement.scrollTop; // Credits: "https://github.com/qeremy/so/blob/master/so.dom.js#L426"
 if (st > lastScrollTop){
     document.getElementById("header").classList.add('scrolldown');
 } else {
  console.log(header.scrollHeight);
    document.getElementById("header").classList.remove('scrolldown');
 }
 lastScrollTop = st;
 if (window.scrollY<header.scrollHeight) {
  //havent scrolled past header
  document.getElementById("header").className = "";
} else {
}
}, false);


document.getElementById('menu-burger').addEventListener('click', function () {
  // Using an if statement to check the class
  if (document.body.classList.contains('menu-burger-closed')) {
    // The box that we clicked has a class of bad so let's remove it and add the good class
   document.body.classList.add('menu-burger-open');
   document.body.classList.remove('menu-burger-closed');
 } else if (document.body.classList.contains('menu-burger-open')) {
    // The box that we clicked has a class of bad so let's remove it and add the good class
    document.body.classList.remove('menu-burger-open');
   document.getElementById('body').classList.add('menu-burger-closed');
  }
});


document.getElementById('deroul').addEventListener('click', function () {
  // Using an if statement to check the class
  if (document.getElementById('deroul-menu').classList.contains('closed')) {
    // The box that we clicked has a class of bad so let's remove it and add the good class
   document.getElementById('deroul').classList.add('open');
   document.getElementById('deroul').classList.remove('closed');
	 document.getElementById('deroul-menu').classList.add('open');
   document.getElementById('deroul-menu').classList.remove('closed');
 } else if (document.getElementById('deroul').classList.contains('open')) {
		document.getElementById('deroul').classList.remove('open');
    document.getElementById('deroul').classList.add('closed');
 	 	document.getElementById('deroul-menu').classList.remove('open');
    document.getElementById('deroul-menu').classList.add('closed');
  }
});
