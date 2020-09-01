import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('query_location');
  if (addressInput) {
      console.log(places({ container: addressInput }))
    places({ container: addressInput });
  }
};

export { initAutocomplete };