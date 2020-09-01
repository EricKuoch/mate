import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('query_location');
  if (addressInput) {
    places({ container: addressInput });
  }
  const evenLocation = document.getElementById('event_location');
  if (evenLocation) {
    places({ container: evenLocation });
  }
  
};

export { initAutocomplete };