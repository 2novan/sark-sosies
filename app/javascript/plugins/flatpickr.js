import flatpickr from "flatpickr"
// import "flatpickr/dist/flatpickr.min.css"
import "flatpickr/dist/themes/material_blue.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin" // for range date!
// flatpickr(".datepicker", {})
const initFlatpickr = () => {
  flatpickr("#range_start", {
    altInput: true,
    plugins: [new rangePlugin({ input: "#range_end"})]
  })
}

export {initFlatpickr}
