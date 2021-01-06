const orderCalc = () => {
  const priceInput = document.getElementById("order-price");
  const costInput = document.getElementById("order-cost");
  const orderProfit = document.getElementById("order-profit");
  const profitMargin = document.getElementById("profit-margin")
  if(orderProfit != null){
    costInput.addEventListener("input", () => {
      const priceValue = priceInput.value;
      const costValue = costInput.value;
      var profit = priceValue - costValue;
      orderProfit.innerHTML = profit;
      profitMargin.innerHTML = Math.floor((profit / priceValue * 100) * 10) / 10;
    })
    priceInput.addEventListener("input", () => {
      const priceValue = priceInput.value;
      const costValue = costInput.value;
      var profit = priceValue - costValue;
      orderProfit.innerHTML = profit;
      profitMargin.innerHTML = Math.floor((profit / priceValue * 100) * 10) / 10;
    })
  }
}

window.addEventListener("load", orderCalc)