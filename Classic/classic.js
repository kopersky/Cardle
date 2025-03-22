let rand;
let targetCar;

document.addEventListener("DOMContentLoaded", async () => {
    const carInfoDiv = document.getElementById("results");

    try {
        const response = await fetch("api.php");
        const carData = await response.json();

        if (carData.error) {
            carInfoDiv.textContent = carData.error;
        } else {
            rand = [carData.marka, carData.model, carData.rok_produkcji, carData.typ_nadwozia];
            targetCar = {
                marka: carData.marka,
                model: carData.model,
                rok_produkcji: carData.rok_produkcji,
                typ_nadwozia: carData.typ_nadwozia
            };
            console.log(rand);
        }
    } catch (error) {
        carInfoDiv.textContent = "Błąd podczas ładowania danych.";
        console.error(error);
    }
});

function func() {
    var x = document.getElementById("guess").value;
    var carBrand = rand[0] + ' ' + rand[1];
    
    if (x === "") {
        return alert("Pole nie może być puste.");
    }

    // Find the details of the guessed car
    findCarDetails(x).then(guessedCar => {
        if (!guessedCar) {
            return alert("Wybierz poprawny model z listy!");
        }

        var isCorrect = x.toLowerCase() === carBrand.toLowerCase();
        
        // Create result div with comparison
        var div = createComparisonResultDiv(guessedCar, isCorrect);
        addResultToTop(div);
        
        if (isCorrect) {
            setTimeout(() => {
                window.location.reload();
            }, 2000); // Give user a bit more time to see the matches
        }
    });
}

async function findCarDetails(carFullName) {
    try {
        // Split the car name to get brand and model
        const [brand, ...modelParts] = carFullName.split(' ');
        const model = modelParts.join(' ');
        
        // Fetch all cars from the database
        const response = await fetch('get_all_cars.php');
        const cars = await response.json();
        
        // Find the matching car
        return cars.find(car => 
            car.marka.toLowerCase() === brand.toLowerCase() && 
            car.model.toLowerCase() === model.toLowerCase()
        );
    } catch (error) {
        console.error("Error finding car details:", error);
        return null;
    }
}

function createResultChild(data, isMatching) {
    var div = document.createElement("div");
    div.style.height = "90%";
    div.style.width = "20%";
    div.textContent = data;
    div.style.backgroundColor = isMatching ? "lightgreen" : "pink";
    div.style.display = "flex";
    div.style.justifyContent = "center";
    div.style.alignItems = "center";
    div.style.border = "1px solid black";
    
    return div;
}

function createComparisonResultDiv(guessedCar, isCorrectGuess) {
    var div = document.createElement("div");
    div.style.display = "flex";
    div.style.gap = "10px";
    div.style.height = "200px";
    div.style.width = "50%";
    div.style.backgroundColor = isCorrectGuess ? "green" : "red";
    div.style.marginTop = "15px";
    div.style.justifyContent = "center";
    div.style.alignItems = "center";
    div.style.border = "2px solid gray";
    
    // Compare brand
    const brandMatches = guessedCar.marka.toLowerCase() === targetCar.marka.toLowerCase();
    div.appendChild(createResultChild(guessedCar.marka, brandMatches));
    
    // Compare model
    const modelMatches = guessedCar.model.toLowerCase() === targetCar.model.toLowerCase();
    div.appendChild(createResultChild(guessedCar.model, modelMatches));
    
    // Compare production year
    const yearMatches = guessedCar.rok_produkcji === targetCar.rok_produkcji;
    div.appendChild(createResultChild(guessedCar.rok_produkcji, yearMatches));
    
    // Compare body type
    const bodyTypeMatches = guessedCar.typ_nadwozia.toLowerCase() === targetCar.typ_nadwozia.toLowerCase();
    div.appendChild(createResultChild(guessedCar.typ_nadwozia, bodyTypeMatches));

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
                inputField.value = '';
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