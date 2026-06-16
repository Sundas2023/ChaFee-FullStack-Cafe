<?php
include 'db.php';

header('Content-Type: application/json');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $phone = mysqli_real_escape_string($conn, $_POST['phone']);
    $address = mysqli_real_escape_string($conn, $_POST['address']);
    $total = intval($_POST['total']);

    if (!empty($name) && !empty($phone) && $total > 0) {
        $sql = "INSERT INTO orders (customer_name, phone, address, total_amount, status) 
                VALUES ('$name', '$phone', '$address', '$total', 'Order Placed')";
        
        if ($conn->query($sql) === TRUE) {
            // Success response send karna order_id ke sath
            echo json_encode([
                "success" => true, 
                "order_id" => $conn->insert_id
            ]);
        } else {
            echo json_encode(["success" => false, "error" => $conn->error]);
        }
    } else {
        echo json_encode(["success" => false, "error" => "Invalid Data"]);
    }
}
$conn->close();
?>