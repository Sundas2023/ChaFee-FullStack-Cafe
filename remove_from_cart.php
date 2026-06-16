<?php
include 'db.php';

header('Content-Type: application/json');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $item_name = mysqli_real_escape_string($conn, $_POST['item_name']);

    if (!empty($item_name)) {
        // Sirf aik row delete karega jo sabse aakhir me add hui thi us naam ki
        $sql = "DELETE FROM cart WHERE item_name = '$item_name' LIMIT 1";
        
        if ($conn->query($sql) === TRUE) {
            echo json_encode(["success" => true]);
        } else {
            echo json_encode(["success" => false, "error" => $conn->error]);
        }
    } else {
        echo json_encode(["success" => false, "error" => "Empty Name"]);
    }
}
$conn->close();
?>