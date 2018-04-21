let updateCart = (inputObject) => {
    let id = inputObject.id;
    let idNumber = id.substr(id.length - 3);

    let cartTotal = document.getElementById(`cartTotal${idNumber}`);
    let cartQuantity = document.getElementById(`cartQuantity${idNumber}`);
    let cartPrice = document.getElementById(`cartPrice${idNumber}`);
    let grandTotal = document.getElementById('cartTotal');
    let grandTotalValue = Number(grandTotal.innerHTML);

    let newTotal = inputObject.value * cartPrice.innerHTML;
    let oldTotal = Number(cartTotal.innerHTML);

    console.log('new Total', newTotal);
    console.log('old Total', oldTotal);

    console.log('grand total value', grandTotalValue)

    grandTotalValue = grandTotalValue + (newTotal - oldTotal);

  

    console.log('grand total value', grandTotalValue)

    cartQuantity.innerHTML = inputObject.value; 
    cartTotal.innerHTML = round(newTotal, 2);

    grandTotal.innerHTML = round(grandTotalValue, 2);

}


function round(number, precision) {
    var shift = function (number, precision, reverseShift) {
        if (reverseShift) {
            precision = -precision;
        }
        var numArray = ("" + number).split("e");
        return +(numArray[0] + "e" + (numArray[1] ? (+numArray[1] + precision) : precision));
    };
    return shift(Math.round(shift(number, precision, false)), precision, true);
}

//updateCart(this)