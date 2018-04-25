let updateCart = (inputObject) => {
    //var id = inputObject.id;
    //var idNumber = id.substr(id.length - 3);

    //var cartTotal = document.getElementById(`cartTotal${idNumber}`);
    //var cartQuantity = document.getElementById(`cartQuantity${idNumber}`);
    //var cartPrice = document.getElementById(`cartPrice${idNumber}`);
    //var grandTotal = document.getElementById('cartTotal');
    //var grandTotalValue = Number(grandTotal.innerHTML);
    //var tax = document.getElementById('tax');
    //var taxValue = Number(tax.innerHTML);

    //var shipping = document.getElementById('shipping');
    //var shippingValue = Number(shipping.innerHTML);

    

    //var newTotal = inputObject.value * cartPrice.innerHTML;
    //var oldTotal = Number(cartTotal.innerHTML);

    
   
    //grandTotalValue = grandTotalValue + (newTotal - oldTotal);

    //console.log((newTotal - oldTotal));

    //taxValue = grandTotalValue * .07;
    //shippingValue = grandTotalValue * .01;

    //grandTotalValue = grandTotalValue + ((newTotal - oldTotal) * .07) + ((newTotal - oldTotal) * .01);

    //cartQuantity.innerHTML = inputObject.value; 
    //cartTotal.innerHTML = round(newTotal, 2);
    //tax.innerHTML = round(taxValue, 2);
    //shipping.innerHTML = round(shippingValue, 2);

    //grandTotal.innerHTML = round(grandTotalValue, 2);

    var id = inputObject.id;
    var idNumber = id.substr(id.length - 3);

   
    let cartPriceObject = document.getElementById(`cartPrice${idNumber}`);
    let itemPrice = Number(cartPriceObject.innerHTML);
    let itemQuantityObject = document.getElementById(`quantity${idNumber}`);
    let itemQuantity = Number(itemQuantityObject.innerHTML);

    let itemTotalObject = document.getElementById(`cartTotal${idNumber}`);
    let oldItemTotal = Number(itemTotalObject.innerHTML);
    let cartQuantityObject = document.getElementById(`cartQuantity${idNumber}`);
    let cartQuantity = Number(cartQuantityObject.innerHTML);


    let newItemTotal = itemPrice * inputObject.value;
    

    let priceChange = newItemTotal - oldItemTotal;

    itemTotalObject.innerHTML = newItemTotal;
    cartQuantityObject.innerHTML = inputObject.value;



    let cartTotalObject = document.getElementById('cartTotal');
    let taxObject = document.getElementById('tax');
    let shippingObject = document.getElementById('shipping');

    let cartTotalWithoutExcess = Number(cartTotal.innerHTML) - Number(taxObject.innerHTML) - Number(shippingObject.innerHTML);

    let cartTotalWithNewValue = cartTotalWithoutExcess + priceChange;

    let tax = cartTotalWithNewValue * .07;
    let shipping = cartTotalWithNewValue * .01;

    cartTotalWithNewValue = cartTotalWithNewValue + tax + shipping;

    taxObject.innerHTML = round(tax, 2);
    shippingObject.innerHTML = round(shipping,2);
    cartTotalObject.innerHTML = round(cartTotalWithNewValue,2);
    

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