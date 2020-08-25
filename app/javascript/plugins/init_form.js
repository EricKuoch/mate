
const initForm = () => {
  const choices = document.querySelectorAll(".sport-choice");
  if (choices) (
    choices.forEach((choice) => {
      choice.addEventListener("click", (event) => {
        choices.forEach((element) => {
          element.classList.remove("active")
        });
        event.currentTarget.classList.toggle("active");
      });
    })
  )
}

const stepForm = () => {
  const next = document.querySelectorAll(".next");
  next.forEach(next)
  next.addEventListener('click', (event) => {
    event.currentTarget.remove("form-second")
  });
};

export { stepForm };
export { initForm };
