<?php
$servername = "localhost"; 
$username = "root";        
$password = "";            
$dbname = "cardle";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Chuj nie dziala: " . $conn->connect_error);
}

$sql = "SELECT id, logo FROM cardle WHERE id=1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "ID: " . $row["id"] . " - logo: " . $row["logo"];
    }
} else {
    echo "0 results";
}

$conn->close();

?>