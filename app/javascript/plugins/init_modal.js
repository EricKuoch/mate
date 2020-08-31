
const initModal = () => {
  const btn =  document.querySelector(".myBtn")
  const modal = document.querySelector("#myModal");
  const span = document.querySelector(".close")

  if (modal)  {
    btn.addEventListener("click", (event) => {
      modal.style.display = "block"
      })
  }
}

export { initModal };
