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
        var div = createResultDiv(rand, "green");
        addResultToTop(div);
        setTimeout(() => {
            window.location.reload();
        }, 1000);
    } 
    else if (x === "") {
        return alert("Pole nie może być puste.");
    } 
    else {
        var div = createResultDiv(rand, "red");
        addResultToTop(div);
    }
}

function createResultChild(data) {
    var div = document.createElement("div");
    div.style.height = "90%";
    div.style.width = "20%";
    div.textContent = data;
    div.style.backgroundColor = "lightgreen";
    div.style.display = "flex";
    div.style.justifyContent = "center";
    div.style.alignItems = "center";
    div.style.border = "1px solid black";
    
    return div;
}

function createResultDiv(rand, bgColor) {
    var div = document.createElement("div");
    div.style.display = "flex";
    div.style.gap = "10px";
    div.style.height = "200px";
    div.style.width = "50%";
    div.style.backgroundColor = bgColor || "white";
    div.style.marginTop = "15px";
    div.style.justifyContent = "center";
    div.style.alignItems = "center";
    div.style.border = "2px solid gray";
    
    if (Array.isArray(rand)) {
        rand.forEach(cell => {
            var childDiv = createResultChild(cell);
            div.appendChild(childDiv);
        });
    } else {
        console.error("rand is not an array:", rand);
    }

    return div;
}

function clearInput() {
    document.getElementById('guess').value = '';
}

function addResultToTop(div) {
    const resultsContainer = document.getElementById("results");
    resultsContainer.prepend(div);
}

document.addEventListener('DOMContentLoaded', async () => {
    const modeleDB = document.getElementById('modele');
    const inputField = document.getElementById('guess');

    try {
        const odp = await fetch('input.php');
        let modelelista = await odp.json();
        console.log("Otrzymane dane:", modelelista);

        if (!Array.isArray(modelelista)) {
            modelelista = [modelelista];
        }

        let modeleinput = modelelista.map(item => `${item.marka} ${item.model}`);
        console.log("Lista modeli:", modeleinput);

        modeleDB.innerHTML = ''; 

        modeleinput.forEach(item => {
            const option = document.createElement('option');
            option.value = item;
            modeleDB.appendChild(option);
        });

        inputField.addEventListener('change', () => {
            if (!modeleinput.includes(inputField.value)) {
                alert("Wybierz poprawny model z listy!");
                inputField.value = ''; // Resetuje pole
            }
        });

    } catch (error) {
        modeleDB.innerHTML = "<option>Błąd ładowania danych</option>";
        console.error(error);
    }
});

function checkEnter(event) {
    if (event.key === "Enter") {
        event.preventDefault();
        document.getElementById("but").click();
    }
}

console.log(modeleDB)