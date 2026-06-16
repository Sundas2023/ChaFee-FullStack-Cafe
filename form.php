<?php
include 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = $_POST['password'];

    // Password ko secure (encrypt) karna
    $hashed_password = password_hash($password, PASSWORD_BCRYPT);

    // Email check karna ke pehle se exist to nahi karti
    $checkEmail = "SELECT * FROM users WHERE email='$email'";
    $result = $conn->query($checkEmail);

    if ($result->num_rows > 0) {
        echo "<script>alert('Email already registered!'); window.location.href='index.html';</script>";
    } else {
        // Data database mein insert karna
        $sql = "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$hashed_password')";
        
        if ($conn->query($sql) === TRUE) {
            echo "<script>alert('Registration Successful!'); window.location.href='index.html';</script>";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
}
$conn->close();
?>