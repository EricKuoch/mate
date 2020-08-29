const initProfile = () => {
  const events = document.querySelector('.event-title');
  console.log(events)
  if (events) (
    events.forEach((event) => {
      addEventListener('click', (event) => {

        if(event.style.display === "none"){
          event.style.display = "block";
        } else {
          event.style.display = "none";
        }
      })
    })
  )
}
