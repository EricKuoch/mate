// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initForm, changeStep } from '../plugins/init_form';
import { initMapbox } from '../plugins/init_mapbox';
import { initProfile } from '../plugins/init_profile';
import { initDashboard} from '../plugins/init_dashboard';
import { initBurger } from '../plugins/init_burger';
import { initPopup } from '../plugins/init_popup';
import { initModal } from '../plugins/init_modal';
import { datepicker} from "../plugins/flatpickr";
import { initAutocomplete } from "../plugins/init_autocomplete";
import { initSlider } from "../plugins/init_slider";



document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();

  initForm()
  if(document.querySelector('.form .step.active')){
    changeStep()
  }
  initMapbox();
  initDashboard();
  initBurger();
  initPopup();
  initModal();
  datepicker();
  initAutocomplete();
  initSlider();
});

