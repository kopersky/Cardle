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
