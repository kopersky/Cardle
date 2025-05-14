// tego typu tu zdjecia beda robic brr i z blob zrobi sie jpg czy cos
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

fetch('dane_photo.php')
.then(response => {
    if (!response.ok){
        throw new Error('Wystapil blad');
    }
    return response.json();
})
.then(data => {
    console.log("id:", data.id);
    console.log("zdj: ", data.zdjecia);
    console.log("marka: ", data.marka);
    console.log("model: ", data.model)
})
.catch(error =>{
    console.error("wystapil blad", error);
})