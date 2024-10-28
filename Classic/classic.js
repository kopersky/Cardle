
function func(){
    var x = document.getElementById("guess").value;
    var carBrand = 'bmw';

    if (x.toLowerCase() == carBrand){
        var div = document.createElement("div");
        div.style.display = "flex";
        div.style.margin = "0 auto";
        div.style.height = "200px";
        div.style.width = "200px";
        div.style.backgroundColor = "green";
        div.style.marginTop = "15px";
        div.textContent = x;
        div.style.justifyContent = "center";
        div.style.alignItems = "center"

        document.body.appendChild(div);
        
        setTimeout(() => {
            window.location.reload();
          }, 1000);
    }
    else if (x === ""){
        return alert(null);
    }
    else{
        var div = document.createElement("div");
        div.style.margin = "0 auto";
        div.style.display = "flex";
        div.style.height = "200px";
        div.style.width = "200px";
        div.style.backgroundColor = "red";
        div.style.marginTop = "15px";
        div.textContent = x;
        div.style.justifyContent = "center";
        div.style.alignItems = "center";
        document.body.appendChild(div);
    }

}

function sleep(ms){
    return new Promise(resolve => setTimeout(resolve, ms));
}

function clearInput() {
    document.getElementById('guess').value = '';
}