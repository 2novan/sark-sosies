import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["startDate", "endDate", "price"]
  connect () {
    console.log("Connecte");
  }
  timePeriod () {
    const startDate = new Date(this.startDateTarget.value);
    const endDate = new Date(this.endDateTarget.value);
    const price = this.priceTarget.value;
    const period = Math.abs(endDate-startDate);
    const totalPrice = period*price;
    // let totalPrice = (endDate - startDate)*price;  
    console.log(totalPrice);



  }
}
