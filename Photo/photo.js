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

// fetch('dane_photo.php')
// .then(response => {
//     if (!response.ok){
//         throw new Error('Wystapil blad');
//     }
//     return response.json();
// })
// .then(data => {
//     console.log("id:", data.id);
//     console.log("zdj: ", data.zdjecia);
//     console.log("marka: ", data.marka);
//     console.log("model: ", data.model)
// })
// .catch(error =>{
//     console.error("wystapil blad", error);
// })