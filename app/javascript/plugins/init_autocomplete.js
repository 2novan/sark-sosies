import places from 'places.js';

const initAutocomplete = () => {
  console.log("coucou")
  const addressInput = document.getElementById('sosie_address');
  console.log(addressInput);
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
