const themeBtn = document.querySelector(".theme__btn");
const themeBody = document.body;

themeBtn.addEventListener("click", () => {
  themeBody.classList.toggle("theme-dark");
});
