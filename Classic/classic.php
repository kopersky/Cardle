<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="classicstyle.css"/>
    <title>Classic</title>
    <script src="classic.js"></script>
</head>
<body><center>
    <div class="logo">
        <a href="../main.php">
            <img src="../Graphics/logo.png">
        </a>
    </div></center>
    <div>
        <?php include ('dane_classic.php'); ?>
    </div>
    <form onsubmit="clearInput(); return false;">
        <input type="text" id="guess" value="" placeholder="Podaj nazwę samochodu" onkeydown="checkEnter()"></input>
        <button type="submit" id="but" onclick="func()">Submit</button>
    </form>
    <center>
    <div id="results" class="results"></div>
    </center>
</body>
</html>