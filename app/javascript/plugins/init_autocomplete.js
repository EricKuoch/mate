import places from 'places.js';

const initAutocomplete = () => {
  const evenLocation = document.getElementById('event_location');
  const queryLocation = document.getElementById('query_location');

  if (evenLocation) {
    places({ container: evenLocation });
  }
  if (queryLocation) {
    places({ container: queryLocation });
  }
};

export { initAutocomplete };
