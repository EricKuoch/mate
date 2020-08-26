
const initForm = () => {
  const choices = document.querySelectorAll(".sport-choice");
  const btnNextDisable = document.querySelector(".btn-next-disable");

  if (choices) (
    choices.forEach((choice) => {
      choice.addEventListener("click", (event) => {
        choices.forEach((element) => {
          element.classList.remove("square-active")
        });
        event.currentTarget.classList.toggle("square-active");
        btnNextDisable.classList.add("btn-active")
      });
    })
  )
}

const secondForm = () => {
  const btnNextDisable = document.querySelector(".btn-step2");
  const title = document.querySelector("#event_title") //input
  title.addEventListener("keyup", (event) => {
    if (title.value !== "") {
      console.log(btnNextDisable)
        btnNextDisable.classList.add("btn-active")
    }
  })
}

const changeStep = () => {

  const nextBtn = document.querySelectorAll('.next-btn');
  const prevBtn = document.querySelectorAll('.previous-btn');
  const form = document.querySelector('.form');

  nextBtn.forEach((button) =>{
    button.addEventListener('click', (e) => {
      stepIndex('next');
    })
  })

  prevBtn.forEach((button) =>{
    button.addEventListener('click', () => {
      stepIndex('prev')
    });
  });
}

const stepIndex = (btn) => {
  const steps = Array.from(document.querySelectorAll(".step"));
  console.log(steps)
  let index = 0;
  const active = document.querySelector('.form .step.active');

  index = steps.indexOf(active);
  steps[index].classList.remove('active');
  if(btn === 'next'){
    index ++;
  }else if(btn === 'prev'){
    index --;
  }
  steps[index].classList.add('active')
  secondForm();
}

export { initForm, changeStep };
