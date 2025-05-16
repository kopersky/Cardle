var correcrCarImage;
var correctCar;

document.addEventListener("DOMContentLoaded", async () => {
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

document.addEventListener("keydown", function(e){
    if (e.key === "Enter"){
        main();
    }
})

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



function main(){
    let guess = document.getElementById("guess");
    if (guess.value === correctCar){
        alert(`Gratulacje! Widoczny model to: ${guess.value}`);
        setTimeout(location.reload(), 3000);
    }
    else{
        alert("Błędna odpowiedź!")
    }
}
