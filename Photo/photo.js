document.addEventListener("DOMContentLoaded", async () => {
    const carInfoDiv = document.getElementById("results");

    const response = await fetch("api.php");
    const carData = await response.json();
    console.log(carData)
    var correctCarImage = carData.zdjecia
    var correctCar = [carData.marka, carData.model]
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
