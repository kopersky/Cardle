document.addEventListener("DOMContentLoaded", async () => {
    const carInfoDiv = document.getElementById("results");

    const response = await fetch("api.php");
    const carData = await response.json();
    console.log(response)
    // console.log(carData)
});

//niech sie uleży (odbiera dane z pliku php)

function clearInput(){
    document.getElementById("guess").innerText = ""
}

function func(){
    console.log("test")
    document.getElementById("guess").value = ""
}

function checkEnter(event){
    if (event.key === "Enter"){
        document.getElementById("guess").click();
    }
}
