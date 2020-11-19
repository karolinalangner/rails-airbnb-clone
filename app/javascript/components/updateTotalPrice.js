export const updateTotalPrice = () => {
 const startDate = document.getElementById("booking_start_date")
 const endDate = document.getElementById("booking_end_date")
 const price = document.getElementById("total_price")
 const car_price = document.getElementById("car_price")
 if (endDate) {
 endDate.addEventListener("change", event => {
  const date1 = new Date(startDate.value);
  const date2 = new Date(endDate.value);
  const days = date2.getDate() - date1.getDate();
  const total_price = Number(car_price.innerText) * days
  price.innerText = total_price
 });
}
}
