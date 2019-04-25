import "bootstrap";

const headerScroll = () => {
  const header = document.querySelector('header');
  document.addEventListener("scroll", function(){
    if (document.scrollTop > 50 || document.scrollTop < 350) {
    header.className = "slideUp";
  }
  });
};

headerScroll();
console.log("helloguuurl");
