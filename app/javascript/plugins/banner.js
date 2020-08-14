import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Let's dive into ...", "Cocktails World !"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };