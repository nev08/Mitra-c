<?php
require("conn.php"); 

// Read JSON data from request body
$json = file_get_contents('php://input');
$data = json_decode($json, true);

// Email and password from request
$mail = $data["d_id"];
$password = $data["password"];

// Query to select data based on email and password
$sql = "SELECT * FROM doctor_profile WHERE d_id = '$mail' AND password = '$password'";
$result = $conn->query($sql);

// Check if any rows were returned
if ($result->num_rows > 0) {
    // Login successful
    $response = array('status' => 'success', 'message' => 'Login successful');
} else {
    // Login failed
    $response = array('status' => 'failure', 'message' => 'Invalid email or password');
}

// Send response as JSON
header('Content-Type: application/json');
echo json_encode($response);

// Close connection
$conn->close();
?>
