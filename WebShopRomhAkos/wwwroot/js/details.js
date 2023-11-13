document.addEventListener('DOMContentLoaded', function () {
    var accordionToggles = document.querySelectorAll('.accordion-toggle');

    accordionToggles.forEach(function (toggle) {
        toggle.addEventListener('click', function () {

            var content = this.nextElementSibling;


            if (content.classList.contains('accordion-content')) {
                content.style.display = (content.style.display === 'block' ? 'none' : 'block');
            }
        });
    });
});


let pricePerUnit; // gobal variable

document.addEventListener('DOMContentLoaded', function () {
    var price = document.getElementById('pricePerUnit').value;
    initDetailsScript(price);
});

function initDetailsScript(price) {
    price = price.replace(',', '.');
    pricePerUnit = parseFloat(price);
    if (isNaN(pricePerUnit)) {
        console.error('A pricePerUnit nem szám: ', price);
        return;
    }

    document.getElementById('quantity').addEventListener('input', updatePrice);
}

window.initDetailsScript = initDetailsScript;

function updatePrice() {
    var quantity = Number(document.getElementById('quantity').value); // Convert quantity to number
    if (isNaN(quantity) || quantity < 1) {
        console.error('Not a number.');
        return; // Exit, if quantity not a number
    }
    var newPrice = pricePerUnit * quantity;
    document.getElementById('priceValue').innerText = newPrice.toFixed(2);
}