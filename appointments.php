<?php
require("connect-db.php");
require("request-db.php");

$list_of_patients = getAllPatients(); 
$list_of_appointments = getAllAppointments();

if ($_SERVER['REQUEST_METHOD'] == 'POST') { 
    if (!empty($_POST['addBtn'])) { 
        addPatients($_POST['pID'], $_POST['first'], $_POST['last'], $_POST['gender'], $_POST['DOB'], $_POST['SSN'], $_POST['ethnicity'], $_POST['street'], $_POST['city'], $_POST['state'], $_POST['zip']); 
    } else if (!empty($_POST['updateBtn'])) {
        $patient_to_update = getPatientById($_POST['pID']); 
    } else if (!empty($_POST['cofmBtn'])) { 
        updatePatient($_POST['cofm_pID'], $_POST['first'], $_POST['last'], $_POST['gender'], $_POST['DOB'], $_POST['SSN'], $_POST['ethnicity'], $_POST['street'], $_POST['city'], $_POST['state'], $_POST['zip']); 
        $list_of_patients = getAllPatients(); 
    } else if (!empty($_POST['deleteBtn'])) { 
        deletePatient($_POST['pID']); 
        $list_of_patients = getAllPatients(); 
    } 

    if (!empty($_POST['addAppointmentBtn'])) { 
        addAppointment($_POST['docID'], $_POST['pID'], $_POST['appID'], $_POST['date'], $_POST['description']); 
        $list_of_appointments = getAllAppointments(); 
    } else if (!empty($_POST['deleteAppointmentBtn'])) { 
        deleteAppointment($_POST['appID']); 
        $list_of_appointments = getAllAppointments(); 
    } else if (!empty($_POST['updateAppointmentBtn'])) { 
        $appointment_to_update = getAppointmentById($_POST['appID']); 
    } else if (!empty($_POST['confirmUpdateAppointmentBtn'])) { 
        updateAppointment($_POST['confirmUpdateAppID'], $_POST['docID'], $_POST['pID'], $_POST['date'], $_POST['description']); 
        $list_of_appointments = getAllAppointments(); 
    } 
} 
?>

<!DOCTYPE html>
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
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">  
  <link rel="stylesheet" href="maintenance-system.css">  
</head>

<body> 
<div class="container">
  <h2>Appointment Input</h2>
  <form method="post" action="<?php $_SERVER['PHP_SELF'] ?>">
    <label for="docID">Doctor ID:</label><br>
    <input type="text" id="docID" name="docID"><br>
    <label for="pID">Patient ID:</label><br>
    <input type="text" id="pID" name="pID"><br>
    <label for="appID">Appointment ID:</label><br>
    <input type="text" id="appID" name="appID"><br>
    <label for="date">Date:</label><br>
    <input type="date" id="date" name="date"><br>
    <label for="description">Description:</label><br>
    <input type="text" id="description" name="description"><br>
    <input type="submit" value="Add Appointment" id="addAppointmentBtn" name="addAppointmentBtn" class="btn btn-dark" title="Add an Appointment" />
  </form>
</div> 
<div class="container">
  <div class="row g-3 mt-2">
    <div class="col">
      <h2>Patient Record Input</h2>
    </div>  
  </div>

  <form method="post" action="<?php $_SERVER['PHP_SELF'] ?>" onsubmit="return validateInput()">
    <table style="width:98%">
      <tr>
        <td>
          <div class='mb-3'>
            First Name:
            <input type='text' class='form-control'
                   id='first' name='first'
                   value="<?php if ($patient_to_update != null) echo $patient_to_update['first'] ?>" />
          </div>
        </td>
        <td>
          <div class='mb-3'>
            Last Name:
            <input type='text' class='form-control' id='last' name='last'
            value="<?php if ($patient_to_update != null) echo $patient_to_update['last'] ?>" />
          </div>
        </td>
        <td>
          <div class='mb-3'>
            Gender:
            <input type='text' class='form-control' id='gender' name='gender'
            value="<?php if ($patient_to_update != null) echo $patient_to_update['gender'] ?>" />
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class='mb-3'>
            DOB:
            <input type='text' class='form-control'
                   id='DOB' name='DOB'
                   value="<?php if ($patient_to_update != null) echo $patient_to_update['DOB'] ?>" />
          </div>
        </td>
        <td>
          <div class='mb-3'>
            SSN:
            <input type='text' class='form-control' id='SSN' name='SSN'
            value="<?php if ($patient_to_update != null) echo $patient_to_update['SSN'] ?>" />
          </div>
        </td>
        <td>
          <div class='mb-3'>
            Ethnicity:
            <input type='text' class='form-control' id='ethnicity' name='ethnicity'
            value="<?php if ($patient_to_update != null) echo $patient_to_update['ethnicity'] ?>" />
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class='mb-3'>
            Street:
            <input type='text' class='form-control'
                   id='street' name='street'
                   value="<?php if ($patient_to_update != null) echo $patient_to_update['street'] ?>" />
          </div>
        </td>
        <td>
          <div class='mb-3'>
            City:
            <input type='text' class='form-control' id='city' name='city'
            value="<?php if ($patient_to_update != null) echo $patient_to_update['city'] ?>" />
          </div>
        </td>
        <td>
          <div class='mb-3'>
            State:
            <input type='text' class='form-control' id='state' name='state'
            value="<?php if ($patient_to_update != null) echo $patient_to_update['state'] ?>" />
          </div>
        </td>
        <td>
          <div class='mb-3'>
            ZIP:
            <input type='text' class='form-control' id='zip' name='zip'
            value="<?php if ($patient_to_update != null) echo $patient_to_update['zip'] ?>" />
          </div>
        </td>
      </tr>
    </table>

    <div class="row g-3 mx-auto">    
      <div class="col-4 d-grid ">
      <input type="submit" value="Add" id="addBtn" name="addBtn" class="btn btn-dark"
           title="Add a Patient" />             
      </div>      
      <div class="col-4 d-grid ">
      <input type="submit" value="Confirm update" id="cofmBtn" name="cofmBtn" class="btn btn-primary"
           title="Update a patient record" />    
           <input type="hidden" value="<?= $_POST['pID'] ?>" name="cofm_pID" />            
      </div>      
      <div class="col-4 d-grid">
        <input type="reset" value="Clear form" name="clearBtn" id="clearBtn" class="btn btn-secondary" />
      </div>      
    </div>  
    <div>
  </div>  
</form>

</div>

<hr/>
<div class="container">
  <h3>List of appointments</h3>
  <table class="w3-table w3-bordered w3-card-4 center" style="width:100%">
    <thead>
      <tr style="background-color:#B0B0B0">
        <th>Doctor ID</th>
        <th>Patient ID</th>
        <th>Appointment ID</th>
        <th>Date</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($list_of_appointments as $appointment_info): ?>
        <tr>
          <td><?php echo $appointment_info['docID']; ?></td>
          <td><?php echo $appointment_info['pID']; ?></td>
          <td><?php echo $appointment_info['appID']; ?></td>
          <td><?php echo $appointment_info['date']; ?></td>
          <td><?php echo $appointment_info['description']; ?></td>
          <td>
            <form action="request.php" method="post">
              <input type="submit" value="Update" name="updateAppointmentBtn"
                     class="btn btn-primary" />
              <input type="hidden" name="appID"
                     value="<?php echo $appointment_info['appID']; ?>" />
            </form>
          </td>
          <td>
            <form action="request.php" method="post">
              <input type="submit" value="Delete" name="deleteAppointmentBtn"
                     class="btn btn-danger" />
              <input type="hidden" name="appID"
                     value="<?php echo $appointment_info['appID']; ?>" />
            </form>
          </td>s
        </tr>
      <?php endforeach; ?>
    </tbody>
  </table>
<div class="container">
<h3>List of patients</h3>
<div class="row justify-content-center">  
<table class="w3-table w3-bordered w3-card-4 center" style="width:100%">
  <thead>
  <tr style="background-color:#B0B0B0">
    <th><b>Name</b></th>
    <th><b>Gender</b></th>        
    <th><b>DOB</b></th>
    <th><b>Address</b></th>
    <th><b>Update?</b></th>
    <th><b>Delete?</b></th>
  </tr>
  </thead>
  <?php foreach ($list_of_patients as $patient_info): ?>
  <tr>
     <td><?php echo $patient_info['first'] . ' ' . $patient_info['last']; ?></td>        
     <td><?php echo $patient_info['gender']; ?></td>
     <td><?php echo $patient_info['DOB']; ?></td> 
     <td><?php echo $patient_info['street'] . ' ' . $patient_info['city'] . ', ' . $patient_info['state'] . ' ' . $patient_info['zip']; ?></td>
     <td>
       <form action="request.php" method="post">
          <input type="submit" value="Update" name="updateBtn"
                 class="btn btn-primary" />
          <input type="hidden" name="pID"
                 value="<?php echo $patient_info['pID']; ?>" />
       </form>
     </td>
     <td>
       <form action="request.php" method="post">
          <input type="submit" value="Delete" name="deleteBtn"
                 class="btn btn-danger" />
          <input type="hidden" name="pID"
                 value="<?php echo $patient_info['pID']; ?>" />
       </form>
     </td>
  </tr>
<?php endforeach; ?>  

</table>
</div>  

<br/><br/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
