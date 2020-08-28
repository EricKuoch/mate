const initBurger = () => {
  const burger = document.querySelector(".menu-burger");
  const sidebar =  document.querySelector(".side-bar")
  const quitnav = document.querySelector(".quit-nav")

  if (burger)  {
    burger.addEventListener("click", (event) => {

    sidebar.classList.toggle("side-bar-hidden")

      })

    quitnav.addEventListener("click", (eventquit) => {

      sidebar.classList.add("side-bar-hidden")

      })

  }

  }

export { initBurger };
