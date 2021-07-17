import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["startDate", "endDate", "price", 'display']
  connect () {
    console.log("Connecte");
  }
  timePeriod () {
    // console.log((this.startDateTarget.value).substring(0,10))
    // console.log((this.startDateTarget.value).substring(14,24))
    // console.log(Date.parse((this.startDateTarget.value).substring(0,10)))
    // console.log(Date.parse((this.startDateTarget.value).substring(14,24)))
    // console.log((this.startDateTarget.value).substring(13,24))

    


    const startDate = Date.parse((this.startDateTarget.value).substring(0,10))
    const endDate = Date.parse((this.startDateTarget.value).substring(14,24))

    const result = (new Date(endDate))- (new Date(startDate))
    // const result =new Time(endDate - startDate)
    const ok = result / 24 / 3600 / 1000
    const price = parseInt(this.priceTarget.dataset.price, 10);
    const totalPrice = price * ok


    console.log(totalPrice)

    this.displayTarget.innerText = totalPrice
    // console.log(ok)


    // console.log(startDate)
    // console.log(endDate)
    // const period = endDate.getTime()-startDate.getTime();
    // const period = endDate.getTime()-startDate.getTime();
    // const totalPrice = (new Date(period)*price;
    // let totalPrice = (endDate - startDate)*price;  
    // console.log(endDate);
    // console.log(period);
    // console.log(startDate);
    // console.log(endDate);

    // console.log(this.startDateTarget.value);

  }
}
