// CSS
import 'flatpickr/dist/flatpickr.css';


import "bootstrap";
import flatpickr from "flatpickr";

const flatInputs = document.querySelectorAll('.flatpickr');

flatInputs.forEach((input) => {
  flatpickr(input, {});
})
