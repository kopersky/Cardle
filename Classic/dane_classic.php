<?php
$servername = "localhost"; 
$username = "root";        
$password = "";            
$dbname = "cardle";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Chuj nie dziala: " . $conn->connect_error);
}

$sql = "SELECT id, marka, rok_produkcji, model, typ_nadwozia FROM cardle WHERE id=1" ;
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "ID: " . $row["id"] . " - marka: " . $row["marka"] . " - rok produkcji: " . $row["rok_produkcji"] . " - model: " . $row["model"] . " - typ nadwozia: " . $row["typ_nadwozia"];
    }
} else {
    echo "0 results";
}

$conn->close();

?>