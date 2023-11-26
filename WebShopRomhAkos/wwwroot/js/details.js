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
        console.error('pricePerUnit not a number: ', price);
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

// Cookies section

document.addEventListener("DOMContentLoaded", function () {
    var addToCartButton = document.querySelector('.purchase-button');
    
    if (addToCartButton) {
        addToCartButton.addEventListener('click', function () {
            var productId = this.getAttribute('data-product-id');
            var quantity = document.getElementById('quantity').value;
            addToCart(productId, quantity);
        });
    } else {
        console.log('There is no button in the cart.');
    }
});

function addToCart(productId, quantity) {
    fetch('/ShoppingCart/AddToCart', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ ProductId: parseInt(productId, 10), Quantity: parseInt(quantity, 10) })
    })
        .then(response => {
            if (!response.ok) {
                return response.text().then(text => {
                    throw new Error('Error in response: ' + text);
                });
            }
            return response.json();
        })
        .then(data => {
            console.log('Success:', data);
        })
        .catch(error => {
            console.error('Error:', error);
        });
}
