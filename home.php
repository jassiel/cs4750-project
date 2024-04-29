<?php
session_start();
// require("connect-db.php");
// require ("request-db.php");
?>
<html>

<head>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="author" content="Group Project">
   <meta name="description" content="Medical Portal">
   <meta name="keywords" content="CS 4750 Project">
   <link rel="icon" type="image/png" href="https://www.cs.virginia.edu/~up3f/cs4750/images/db-icon.png" />

   <title>Medical Portal</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
   <?php include ("header.php"); ?>
   <?php if (isset($_SESSION['username'])) { ?>
      <div class="container" align="center">
         <div class="row g-3 mt-2">
            <div class="col">
               <h2>Welcome <?php echo $_SESSION['username']; ?></h2>
               
               <!-- <p><?php 
               $patient = getPatientByUserId(($_SESSION['userID']));
               var_dump($patient);
               ?></p> -->
                  
            </div>
         </div>
      </div>

      <?php if ($_SESSION['usertype'] == "patient") { ?>
         <div class="container" align="center">
            <div class="row g-3 mt-2">
               <div class="col">
                  <?php include ("patient.php"); ?>
               </div>
            </div>
         </div>
      <?php } else { ?>
         <div class="container" align="center">
            <div class="row g-3 mt-2">
               <div class="col">
                  <?php include ("doctor.php"); ?>
               </div>
            </div>
         </div>
      <?php } ?>


   <?php } else { ?>
      <div class="container" align="center">
         <div class="row g-3 mt-2">
            <div class="col">
               <h2>Please login</h2>
            </div>
         </div>
      </div>
   <?php } ?>

</body>

</html>