$(document).ready(function() {
  $('.bn_item').each(function() {
    var $this = $(this);
    var currentIndex = 0;
    var images = $this.find('img');

    function nextImage() {
      var nextIndex = (currentIndex + 1) % images.length;
      images.eq(currentIndex).removeClass('active');
      images.eq(nextIndex).addClass('active');
      currentIndex = nextIndex;
    }

    setInterval(nextImage, 3000);
  });
});