document.addEventListener("DOMContentLoaded", function () {
    var minPriceInput = document.getElementById('minPrice');
    var maxPriceInput = document.getElementById('maxPrice');
    var minPriceDisplay = document.getElementById('minPriceDisplay');
    var maxPriceDisplay = document.getElementById('maxPriceDisplay');
    var priceSlider = document.getElementById('priceSlider');
    var maxPriceFromServer = parseInt(priceSlider.getAttribute('data-max-price'));

    if (isNaN(maxPriceFromServer) || maxPriceFromServer <= 0) {
        console.error('A maxPriceFromServer értéke érvénytelen:', maxPriceFromServer);
        maxPriceFromServer = 2000;
    }

    noUiSlider.create(priceSlider, {
        start: [0, maxPriceFromServer],
        connect: true,
        range: {
            'min': 0,
            'max': maxPriceFromServer
        }
    });

    priceSlider.noUiSlider.on('update', function (values, handle) {
        var value = values[handle];
        if (handle) {
            maxPriceDisplay.innerHTML = Math.round(value);
            maxPriceInput.value = Math.round(value);
        } else {
            minPriceDisplay.innerHTML = Math.round(value);
            minPriceInput.value = Math.round(value);
        }
    });

  
    var minStorageInput = document.getElementById('minStorage');
    var maxStorageInput = document.getElementById('maxStorage');
    var minStorageDisplay = document.getElementById('minStorageDisplay');
    var maxStorageDisplay = document.getElementById('maxStorageDisplay');
    var storageSlider = document.getElementById('storageSlider');
    var minStorageFromServer = parseInt(storageSlider.getAttribute('data-min-storage'));
    var maxStorageFromServer = parseInt(storageSlider.getAttribute('data-max-storage'));



    if (isNaN(maxStorageFromServer) || maxStorageFromServer <= 0) {
        console.error('A maxStorageFromServer értéke érvénytelen:', maxStorageFromServer);
        minStorageFromServer = 0;
        maxStorageFromServer = 2000;
    }

    noUiSlider.create(storageSlider, {
        start: [minStorageFromServer, maxStorageFromServer],
        connect: true,
        range: {
            'min': minStorageFromServer,
            'max': maxStorageFromServer
        }
    });

    storageSlider.noUiSlider.on('update', function (values, handle) {
        var value = values[handle];
        if (handle) {
            maxStorageDisplay.innerHTML = Math.round(value);
            maxStorageInput.value = Math.round(value);
        } else {
            minStorageDisplay.innerHTML = Math.round(value);
            minStorageInput.value = Math.round(value);
        }
    });


});