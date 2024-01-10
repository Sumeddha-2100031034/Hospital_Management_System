const cards = document.querySelectorAll(".card");

function isElementInViewport(el) {
  const rect = el.getBoundingClientRect();
  return (
    rect.top >= 0 &&
    rect.left >= 0 &&
    rect.bottom <= (
    window.innerHeight || document.documentElement.clientHeight) &&
    rect.right <= (window.innerWidth || document.documentElement.clientWidth));

}

function isCardVisible() {
  for (card of cards) {
    isElementInViewport(card) ?
    card.classList.add("isVisible") :
    card.classList.remove("isVisible");
  }
}

function book_appointment() {
      window.location.href = "https://www.apollo247.com/?utm_campaign=BAA_Home_Banner&utm_source=Apollo_Hospitals&utm_medium=Organic"; // Replace with the URL you want to redirect to
    }
document.addEventListener("DOMContentLoaded", isCardVisible);
window.addEventListener("scroll", isCardVisible);
window.addEventListener("resize", isCardVisible);