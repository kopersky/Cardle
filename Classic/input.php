<?php
$servername = "localhost"; 
$username = "root";        
$password = "";            
$dbname = "cardle";
$conn = new mysqli($servername, $username, $password, $dbname);
$sql = "SELECT marka, model FROM cardle ORDER BY rand() LIMIT 1";
$result = $conn->query($sql);

$input = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $input = $row;
    }
} else {
    $input = ["error" => "0 results"];
}

$conn->close();
?>