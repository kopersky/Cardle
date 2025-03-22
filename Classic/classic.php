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
    <div class="container">
        <center>
            <div class="logo">
                <h1 style="color: #3498db; font-size: 2.5em;">Cardle</h1>
            </div>
        </center>
        
        <div class="game-info">
            <p>Guess today's mystery car! You have 8 attempts.</p>
            <p>Green = correct, Yellow = partially correct (e.g., same decade), Red = incorrect</p>
        </div>
        
        <form onsubmit="clearInput(); return false;" method="POST" class="input">
            <input list='modele' type="text" id="guess" value="" placeholder="Enter car make and model" onkeydown="checkEnter(event)"></input>
            <datalist id="modele"></datalist>
            <button type="submit" id="but" onclick="func()" name="sub">Guess</button>
        </form>
        
        <div class="result-container">
            <div id="results" class="results"></div>
        </div>
    </div>
</body>
</html>