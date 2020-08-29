
// When the user clicks on <div>, open the popup
function initPopup() {
  const popup = document.querySelector(".popup")
  const myPopup = document.getElementById("myPopup");
  popup.addEventListener("click", (event) => {
    myPopup.classList.toggle("show");
  })
}

export { initPopup };
