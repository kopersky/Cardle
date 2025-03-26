<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="classicstyle.css"/>
    <title>Cardle - Guess the Car</title>
    <script src="classic.js"></script>
</head>
<body>
    <img src="../Graphics/logo.png">
    <div class="container">
        <div class="game-info">
            <p>Witaj w grze Cardle! Twoim zadaniem jest odgadnąć prawidłowe auto po kryteriach</p>
            <p><span style="color: green">Zielony</span> = Dobrze, <span style="color: gold">Żółty </span> = Blisko (np. ta sama dekada), <span style="color: red">Czerwony</span> = Niepoprawne</p>
        </div>
        
        <form onsubmit="clearInput(); return false;" method="POST" class="input">
            <input list='modele' type="text" id="guess" value="" placeholder="Podaj markę i model auta" onkeydown="checkEnter(event)"></input>
            <datalist id="modele"></datalist>
            <button type="submit" id="but" onclick="func()" name="sub">Zgadnij</button>
        </form>
        
        <div class="result-container">
            <div id="results" class="results"></div>
        </div>
    </div>
</body>
</html>