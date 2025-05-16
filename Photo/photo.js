var correcrCarImage;
var correctCar;

document.addEventListener("DOMContentLoaded", async () => {
    const carInfoDiv = document.getElementById("results");

    const response = await fetch("api.php");
    const carData = await response.json();
    console.log(carData)
    correctCarImage = carData.zdjecia
    correctCar = `${carData.marka} ${carData.model}`;

    let zdj = document.getElementById("zdjecie");
    zdj.src = `../assety/photo/${correctCarImage}`;
});

//niech sie uleży (odbiera dane z pliku php)

function clearInput(){
    document.getElementById("guess").innerText = ""
}

function checkEnter(event){
    if (event.key === "Enter"){
        document.getElementById("guess").click();
    }
}

// dodanie marek do datalist
document.addEventListener('DOMContentLoaded', async () => {
    const modeleDB = document.getElementById('modele');
    const inputField = document.getElementById('guess');

    try {
        const odp = await fetch('input.php');
        let modelelista = await odp.json();

        if (!Array.isArray(modelelista)) {
            modelelista = [modelelista];
        }

        let modeleinput = modelelista.map(item => `${item.marka} ${item.model}`);

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

// tworzenie mini diva
function createResultChild(color, content) {
    let mdiv = document.createElement('div')
    mdiv.textContent = content
    mdiv.style.width = '100px'
    mdiv.style.height = '100px'
    mdiv.style.backgroundColor = color
}

// tworzenie diva
function createResultDiv(color) {
    let div = document.createElement('div')
    div.innerHTML(createResultChild(color, guess))
}

// wyswietlanie diva od gory
function addResultToTop(div) {
    const resultsContainer = document.getElementById("results");
    resultsContainer.prepend(div);
}

// glowna funkcja gry eksperyment rn
function main(){
    let guess = document.getElementById("guess").value;

    const brandMatches = guessedCar.marka.toLowerCase() === targetCar.marka.toLowerCase();
    div.appendChild(createResultChild(guessedCar.marka, brandMatches));
    
    const modelMatches = guessedCar.model.toLowerCase() === targetCar.model.toLowerCase();
    div.appendChild(createResultChild(guessedCar.model, modelMatches));

    // if (guess === correctCar){
    //     alert("Gratulacje!");
    //     setTimeout(window.location.reload(), 2000);
    // }
    // else{
    //     addResultToTop(createResultChild('red', guess))
    //     clearInput();
    // }

    
}


