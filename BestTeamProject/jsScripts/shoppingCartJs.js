let updateCart = (inputObject) => {
    var id = inputObject.id;
    var idNumber = id.substr(id.length - 3);

    var cartTotal = document.getElementById(`cartTotal${idNumber}`);
    var cartQuantity = document.getElementById(`cartQuantity${idNumber}`);
    var cartPrice = document.getElementById(`cartPrice${idNumber}`);
    var grandTotal = document.getElementById('cartTotal');
    var grandTotalValue = Number(grandTotal.innerHTML);

    var newTotal = inputObject.value * cartPrice.innerHTML;
    var oldTotal = Number(cartTotal.innerHTML);

   
    grandTotalValue = grandTotalValue + (newTotal - oldTotal);
    

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