
const initForm = () => {
  const choices = document.querySelectorAll(".sport-choice");
  const btnNextDisable = document.querySelector(".btn-next-disable");

  if (choices) {
    choices.forEach((choice) => {
      choice.addEventListener("click", (event) => {
        choices.forEach((element) => {
          element.classList.remove("square-active")
        });
        event.currentTarget.classList.toggle("square-active");
        btnNextDisable.classList.add("btn-active")
      });
    })
  }
}

const secondForm = () => {
  const btnNextDisable = document.querySelector(".btn-step2");
  const inputTitle = document.querySelector("#event_title") //input
  const inputLocation = document.querySelector("#event_location") //input

  const inputStartTime = document.querySelector("#event_start_time")
  const inputDuration = document.querySelector("#event_duration")

  const keyupList = [inputTitle,inputLocation];
  const clickList = [inputStartTime,inputDuration];
  keyupList.forEach((input) => {
    input.addEventListener("keyup", (event) => {
    const inputs = [inputTitle.value, inputLocation.value]
     if (!inputs.includes("")) {
        btnNextDisable.classList.add("btn-active")
      }
    })
  })
  clickList.forEach((click) => {
    click.addEventListener("click", (event) => {
    const inputs = [inputTitle.value, inputLocation.value, inputStartTime.value, inputDuration.value]
     if (!inputs.includes("")) {
        btnNextDisable.classList.add("btn-active")
      }
    })
  })
}

const thirdForm = () => {
  const btnNextDisable = document.querySelector(".btn-step3");
  const inputNumberParticipants = document.querySelector("#event_number_of_participants") //input
  inputNumberParticipants.addEventListener("keyup", (event) => {
    console.log(btnNextDisable)
    if (inputNumberParticipants.value !== "") {
      btnNextDisable.classList.add("btn-active")
    }
    else {
      btnNextDisable.classList.remove("btn-active")
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
  thirdForm();
}

export { initForm, changeStep };
