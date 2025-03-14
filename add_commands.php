<?php
// error_reporting(E_ALL);
// ini_set('display_errors',1);

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include_once("config.php");


if (isset($_POST['submit']) && $_SERVER['REQUEST_METHOD'] === 'POST') {
	print_r($_POST);
    $command = htmlspecialchars(trim($_POST['command']));
    $description = htmlspecialchars(trim($_POST['description']));
    $category = htmlspecialchars(trim($_POST['category']));
    $example = htmlspecialchars(trim($_POST['example']));

    if (!empty($command) && !empty($description) && !empty($category) && !empty($example)) {
    	echo "Command: " . $command . "<br>";
echo "Description: " . $description . "<br>";
echo "Category: " . $category . "<br>";
echo "Example: " . $example . "<br>";
        $stmt = $pdo->prepare("INSERT INTO linux_commands (command, description, category, example) VALUES (?, ?, ?, ?)");

        if ($stmt->execute([$command, $description, $category, $example])) {
    $success_message = "Command added successfully";
    echo $example;
} else {
    $error_message = "Error: " . implode(" ", $stmt->errorInfo());
    echo $error_message; // Debugging line
}

    } else {
        $error_message = "All fields are required";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Linux Commands Keeper 🐧 | Add Commands</title>
<link rel="stylesheet" href="assets/bootstrap-5.3.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
<style>
    /* Gradient Background */
    body {
        background: linear-gradient(135deg, #290B2EFF, #121212); /* Dark Purple to Deep Black */
        color: white;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
    }

    /* Navbar */
    .navbar {
        background: rgba(30, 30, 47, 0.9) !important; /* Slight Transparency */
    }

    /* Cards */
    .card {
        background-color: #222;
       /* background: linear-gradient(135deg, #240B28FF, #000000FF); */
        color: white;
        border: 1px solid rgba(255, 255, 255, 0.1);
    }

    /* Footer */
    footer {
        background: rgba(18, 18, 18, 0.9); /* Dark Gray */
        margin-top: auto;
    }

</style>
 <style>
    .run-btn {
        background-color: #28a745; /* Green color */
        color: white;
        border: none;
        padding: 5px 10px;
        border-radius: 5px;
        transition: 0.3s;
    }
    .run-btn:hover {
        background-color: #218838; /* Darker green */
    }
    .copy-btn:hover, .edit-btn:hover {
transform: scale(1.05);
transition: 0.2s;
}

</style>
</head>
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">Linux Commands <i class="fa fa-2x fa-linux" aria-hidden="true"></i></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="index.php">Home <i class="fa fa-2x fa-home" aria-hidden="true"></i></a></li>
                <li class="nav-item"><a class="nav-link" href="add_commands.php">Add Commands <i class="fa fa-2x fa-plus" aria-hidden="true"></i></a></li>
            </ul>
        </div>
    </div>
</nav>


<div class="container mt-5">
    <h2 class="text-center">Add Linux Command  <i class="fa fa-2x fa-linux" aria-hidden="true"></i></a> </h2>
    <?php if (isset($success_message)) : ?>
        <div class="alert alert-success text-light"> <?= $success_message; ?> </div>
    <?php elseif (isset($error_message)) : ?>
        <div class="alert alert-danger text-light"> <?= $error_message; ?> </div>
    <?php endif; ?>
    <form method="POST" action="add_commands.php" class="card p-4">
        <div class="mb-3">
            <label class="form-label">Command</label>
            <input type="text" name="command" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Description</label>
            <textarea name="description" class="form-control" required></textarea>
        </div>
        <div class="mb-3">
            <label class="form-label">Category</label>
            <input type="text" name="category" class="form-control" required>
        </div>
         <div class="mb-3 mt-4 py-2">
            <label class="form-label">Example</label>
            <input type="text" name="example" class="form-control" required placeholder="pwd. Sample code goes here">
        </div>
        <div class="mb-3 mt-4 w-100">
        	
        <button type="submit" class="btn btn-success btn-lg fw-bold">Add Command 
        	<i class="fa fa-linux"> </i>
        </button>
        </div>

        <div class="mb-3 mt-4 w-100">
        <a href="index.php" class="btn btn-danger btn-lg fw-bold"><i class=" fa fa-sign-out"></i> Back</a> 
    </div>

    </form>
</div>
</body>
</html>
