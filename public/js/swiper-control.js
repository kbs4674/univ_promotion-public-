var swiper = new Swiper('.swiper-container', {
    spaceBetween: 30,
    effect: 'fade',
    autoplay: {
      delay: 2500,
      disableOnInteraction: false,
      },
      navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
});