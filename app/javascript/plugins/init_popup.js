
// When the user clicks on <div>, open the popup
function initPopup() {
  const popup = document.querySelector(".popup")
  const myPopup = document.getElementById("myPopup");
  if(popup) {
  popup.addEventListener("click", (event) => {
    myPopup.classList.toggle("show");
  })
  }
}

export { initPopup };
