<?php

include_once("config.php");

try {
    $sql = "SELECT * FROM linux_commands";
    $stmt = $pdo->query($sql); // Use $pdo, not $conn
    $commands = $stmt->fetchAll(PDO::FETCH_ASSOC); // Fetch all rows as an associative array
} catch (PDOException $e) {
    die("Database query failed: " . $e->getMessage());
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Linux Commands Keeper 🐧 | Home</title>
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
<body>
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

    <!-- Content Section -->
    <div class="container text-center mt-5">
        <h1 class="fw-bold">Welcome to Linux Commands Keeper 🐧</h1>
        <p class="lead">Store, Search & Explore Linux Commands in One Place.</p>

        <input type="text" id="search-box" class="form-control" placeholder="Search commands...">



        <div id="copy-alert" class="alert alert-success alert-dismissible fade show d-none" role="alert">
    Command copied successfully!
    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
</div>

        <!-- show the commands here -->
        <div class="container mt-4">
        <div class="row" id="commands-container">
            <?php foreach ($commands as $command): ?>
                <div class="col-md-4 mb-4 command-card" data-category="<?= htmlspecialchars($command['category']) ?>">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><i class="fa fa-terminal me-2"></i> <?= htmlspecialchars($command['category']) ?></h5>
                            <p><strong>Command:</strong> <code><?= htmlspecialchars($command['command']) ?></code></p>
                            <p><strong>Description:</strong> <?= htmlspecialchars($command['description']) ?></p>
                            <p><strong>Example:</strong> <?= htmlspecialchars($command['example']) ?></p>
                            <button class="btn btn-primary btn-sm copy-btn" title="Copy to Clipboard" data-command="<?= htmlspecialchars($command['command']) ?>">
                                <i class="fa fa-copy"></i> Copy
                            </button>
                            <button class="btn btn-warning btn-sm edit-btn" data-id="<?= $command['id'] ?>" data-command="<?= htmlspecialchars($command['command']) ?>" data-description="<?= htmlspecialchars($command['description']) ?>" data-category="<?= htmlspecialchars($command['category']) ?>">
                                <i class="fa fa-edit"></i> Edit
                            </button>
                           
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
    </div>


    <!-- edit the command using a modal -->
     <!-- Edit Command Modal -->
<div class="modal fade" id="editModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title text-dark">Edit The Linux Command</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <form id="edit-form" method="POST">
                    <input type="hidden" id="edit-id" name="id">
                    <div class="mb-3">
                        <label>Category</label>
                        <input type="text" class="form-control" id="edit-category" name="category" required>
                    </div>
                    <div class="mb-3">
                        <label>Command</label>
                        <input type="text" class="form-control" id="edit-command" name="command" required>
                    </div>
                    <div class="mb-3">
                        <label>Description</label>
                        <textarea class="form-control" id="edit-description" name="description" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Update Command</button>
                </form>
            </div>
        </div>
    </div>
</div>

    <!-- Footer -->
    <footer class="text-white py-3">
        <div class="container text-center">
            <p>© Linux Commands <i class="fa fa-linux fa-2x" aria-hidden="true"></i> | Built with ❤ by TejTheDev</p>
        </div>
    </footer>

    <script src="assets/bootstrap-5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Copy the command script
        document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('.copy-btn').forEach(button => {
        button.addEventListener('click', () => {
            navigator.clipboard.writeText(button.getAttribute('data-command'));

            let alertBox = document.getElementById('copy-alert');
            alertBox.classList.remove('d-none'); // Show the alert
            setTimeout(() => alertBox.classList.add('d-none'), 2000); // Hide after 2 sec
        });
    });
});

document.getElementById('search-box').addEventListener('keyup', function() {
    let filter = this.value.toLowerCase();
    document.querySelectorAll('.command-card').forEach(card => {
        let text = card.textContent.toLowerCase();
        card.style.display = text.includes(filter) ? 'block' : 'none';
    });
});



        // edit the command modal

    document.querySelectorAll('.edit-btn').forEach(button => {
        button.addEventListener('click', () => {
            document.getElementById('edit-id').value = button.getAttribute('data-id');
            document.getElementById('edit-command').value = button.getAttribute('data-command');
            document.getElementById('edit-description').value = button.getAttribute('data-description');
            document.getElementById('edit-category').value = button.getAttribute('data-category');

            var editModal = new bootstrap.Modal(document.getElementById('editModal'));
            editModal.show();
        });
    });

    document.getElementById('edit-form').addEventListener('submit', (e) => {
        e.preventDefault();
        let formData = new FormData(e.target);

        fetch('edit_command.php', {
            method: 'POST',
            body: formData
        })
        .then(response => response.text())
        .then(result => {
            alert(result);
            location.reload();
        })
        .catch(error => console.error('Error:', error));
    });
    </script>

   
</body>
</body>
</html>
