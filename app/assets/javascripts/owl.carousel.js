$(document).on("ready page:load", function(){
  var owl = $('.owl-carousel');
  owl.owlCarousel({
      items:2,
      center: true,
      loop:true,
      margin:183,
      autoplay:true,
      autoplayTimeout:3000,
      autoplayHoverPause:true
  });
});
