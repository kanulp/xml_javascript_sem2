function calculateTax() {
    let price = parseFloat(document.getElementById("price").value);
    let tax = parseFloat(document.getElementById("tax").value);

    let total = price + tax;
    console.log("total " + total + " p:" + price + " t:" + tax);
    document.getElementById("total").innerHTML = "Total : " + total;
}