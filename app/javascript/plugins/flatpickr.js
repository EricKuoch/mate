import flatpickr from "flatpickr";

const datepicker = () => {
  flatpickr(".datepicker", {
    enableTime: true,
    dateFormat: "Y-m-d H:i",
    disableMobile: "true"
  });
}


export {datepicker};
