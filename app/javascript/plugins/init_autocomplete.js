import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('sosie_address');
  console.log(addressInput);
  if (addressInput) {
    places({ container: addressInput });
  }
};

const initAutocomplete2 = () => {
  const addressInput = document.getElementById('booking_address');
  console.log(addressInput);
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
export { initAutocomplete2 };

