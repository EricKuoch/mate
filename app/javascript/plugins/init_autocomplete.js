import places from 'places.js';

const initAutocomplete = () => {
  const evenLocation = document.getElementById('event_location');
  if (evenLocation) {
    places({ container: evenLocation });
  }

};

export { initAutocomplete };
