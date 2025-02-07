let rand;

document.addEventListener("DOMContentLoaded", async () => {
    const carInfoDiv = document.getElementById("results");

    try {
        const response = await fetch("api.php");
        const carData = await response.json();

        if (carData.error) {
            carInfoDiv.textContent = carData.error;
        } else {
            rand = [carData.marka, carData.model, carData.rok_produkcji, carData.typ_nadwozia]
            console.log(rand)
        }
    } catch (error) {
        carInfoDiv.textContent = "Błąd podczas ładowania danych.";
        console.error(error);
    }
});


function func() {
    var x = document.getElementById("guess").value;
    var carBrand = rand[0] + ' ' + rand[1];

    if (x.toLowerCase() === carBrand.toLowerCase()) {
        var div = createResultDiv(x, "green");
        addResultToTop(div);
        setTimeout(() => {
            window.location.reload();
        }, 1000);
    } 
    else if (x === "") {
        return alert("Pole nie może być puste.");
    } 
    else {
        var div = createResultDiv(x, "red");
        addResultToTop(div);
    }
}

function createResultChild(data) {
    var div = document.createElement("div");
    div.style.height = "90%";
    div.style.width = "20%";
    div.textContent = data;
    div.style.backgroundColor = "light green";
}

function createResultDiv(text, bgColor) {
    var div = document.createElement("div");
    div.style.display = "flex";
    div.style.height = "200px";
    div.style.width = "200px";
    div.style.backgroundColor = "plum";
    div.style.marginTop = "15px";
    div.style.justifyContent = "center";
    div.style.alignItems = "center";
    div.textContent = text;
    return div;
}

function clearInput() {
    document.getElementById('guess').value = '';
}

function addResultToTop(div) {
    const resultsContainer = document.getElementById("results");
    resultsContainer.prepend(div);
}
