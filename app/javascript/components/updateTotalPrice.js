export const updateTotalPrice = () => {
 const startDate = document.getElementById("booking_start_date")
 const endDate = document.getElementById("booking_end_date")
 const price = document.getElementById("total_price")
 const car_price = document.getElementById("car_price")
 if (endDate) {
 endDate.addEventListener("change", event => {
  const date1 = new Date(startDate.value);
  const date2 = new Date(endDate.value);
  const diffInDays =  (date2 - date1) / (1000 * 60 * 60 * 24)
  const total_price = Number(car_price.innerText) * diffInDays
  price.innerText = total_price
 });
}
}
