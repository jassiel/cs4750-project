<?php 
session_start(); 
require("connect-db.php");
require ("request-db.php"); 
?>

<header>
  <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="home.php">Medical Portal</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar"
        aria-controls="collapsibleNavbar" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav ms-auto">
          <!-- <li class="nav-item">
            <a class="nav-link" href="#">Software</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">Research</a>
            <ul class="dropdown-menu" aria-labelledby="dropdown01">
              <li><a class="dropdown-item" href="#">Design</a></li>
              <li><a class="dropdown-item" href="#">Development</a></li>
              <li><a class="dropdown-item" href="#">Testing</a></li>
              <li><a class="dropdown-item" href="#">Maintenance</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Activity</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li> -->
          <!-- check if currently logged in, display Log out button 
               otherwise, display sign up and log in buttons -->
          <?php if (!isset($_SESSION['username'])) { ?>
            <li class="nav-item">
              <a class="nav-link" href="login.php">Login</a>
            </li>
          <?php } else { ?>
            <li class="nav-item">
              <a class="nav-link" href="logout.php">Logout</a>
            </li>
          <?php } ?>
        </ul>
      </div>
    </div>
  </nav>
</header>