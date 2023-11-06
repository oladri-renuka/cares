<?php
$servername = "localhost:3308";
$username = "root";
$password = "";
$dbname = "doctor";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get form data
$name = $_POST["name"];
$age = $_POST["age"];
$sex = $_POST["sex"];

$course = $_POST["course"];
$specialization = $_POST["specialization"];
$year = $_POST["year"];
$tabletName = $_POST["tabletName"];
$quantity = $_POST["quantity"];
$amountPaid = $_POST["amountPaid"];

// Insert data into database
$sql = "INSERT INTO patient (name, age, sex, course, specialization, year, tablet_name, quantity, amount_paid)
        VALUES ('$name', $age, '$sex', '$course', '$specialization', $year, '$tabletName', $quantity, $amountPaid)";

if ($conn->query($sql) === TRUE) {
    echo "Form submitted successfully!";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>