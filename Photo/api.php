<?php
header('Content-type: application/json');
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cardle";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die(json_encode(["error" => "Connection failed: " . $conn->connect_error]));
}
<<<<<<< HEAD:Photo/dane_photo.php
$sql = "SELECT id, marka, model, zdjecia FROM cardle ORDER BY rand() LIMIT 1";
$result = $conn->query($sql);
$data = [];
if ($result->num_rows > 0) {
    $data = $result->fetch_assoc();
} else {
    $data = ["error" => "0 results"];
=======

$sql = "SELECT marka, model, zdjecia FROM cardle ORDER BY rand() LIMIT 1"
$result = $conn->query($sql);

$input = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $input[] = $row;
    }
} else {
    $input = ["error" => "0 results"];
>>>>>>> 82b92173550c945612c1b31f56acc20126aa38f8:Photo/api.php
}

echo json_encode($data);
$conn->close();
<<<<<<< HEAD:Photo/dane_photo.php
=======

header('Content-Type: application/json');
echo json_encode($input);
>>>>>>> 82b92173550c945612c1b31f56acc20126aa38f8:Photo/api.php
?>