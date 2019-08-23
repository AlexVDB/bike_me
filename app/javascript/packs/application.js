// CSS
import 'flatpickr/dist/flatpickr.css';


import "bootstrap";
import flatpickr from "flatpickr";

const flatInputs = document.querySelectorAll('.flatpickr');

flatInputs.forEach((input) => {
  flatpickr(input, {});
})

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
