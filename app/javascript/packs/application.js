import "bootstrap";

const headerScroll = () => {
  let prevScrollpos = window.pageYOffset;
  window.onscroll = function() {
    let currentScrollPos = window.pageYOffset;
    if (prevScrollpos > currentScrollPos || document.querySelector('header').onmouseover) {
      document.querySelector('header').style.opacity = "1";
    } else {
      document.querySelector('header').style.opacity = ".1";
    }
    prevScrollpos = currentScrollPos;
  }
};

headerScroll();
