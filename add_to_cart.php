<?php
include 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $item_name = mysqli_real_escape_string($conn, $_POST['item_name']);
    $price = isset($_POST['price']) ? intval($_POST['price']) : 0; // Agar JavaScript se price na aaye to 0

    if (!empty($item_name)) {
        $sql = "INSERT INTO cart (item_name, price) VALUES ('$item_name', '$price')";
        if ($conn->query($sql) === TRUE) {
            echo "Success";
        } else {
            echo "Error: " . $conn->error;
        }
    }
}
$conn->close();
?>