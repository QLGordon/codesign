import "bootstrap";

const headerScroll = () => {
  let prevScrollpos = window.pageYOffset;
  window.onscroll = function() {
    let currentScrollPos = window.pageYOffset;
    if (prevScrollpos > currentScrollPos || document.querySelector('.content').onmouseover) {
      document.querySelector('.content').style.opacity = "1";
    } else {
      document.querySelector('.content').style.opacity = ".1";
    }
    prevScrollpos = currentScrollPos;
  }
};

headerScroll();
