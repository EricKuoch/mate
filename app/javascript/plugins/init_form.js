
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


const steps = Array.from(document.querySelectorAll(".step"));
console.log(steps)
const nextBtn = document.querySelectorAll('.next-btn');
const prevBtn = document.querySelectorAll('.previous-btn');
const form = document.querySelector('.form');

nextBtn.forEach((button) =>{
  button.addEventListener('click', (e) => {
    changeStep('next');
  })
})

prevBtn.forEach((button) =>{
  button.addEventListener('click', () => {
    changeStep('prev')
  })
})

const changeStep = (btn) => {
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
}



export { initForm, changeStep };

