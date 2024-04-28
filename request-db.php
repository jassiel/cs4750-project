<?php
function addPatients($pID, $first, $last, $gender, $DOB, $SSN, $ethnicity, $street, $city, $state, $zip)
{
   global $db;  
   
   $query = "INSERT INTO Patient (pID, first, last, gender, DOB, SSN, ethnicity, street, city, state, zip) VALUES (:pID, :first, :last, :gender, :DOB, :SSN, :ethnicity, :street, :city, :state, :zip)";  
   
   try {
      $statement = $db->prepare($query);

      $statement->bindValue(':pID', $pID);
      $statement->bindValue(':first', $first);
      $statement->bindValue(':last', $last);
      $statement->bindValue(':gender', $gender);
      $statement->bindValue(':DOB', $DOB);
      $statement->bindValue(':SSN', $SSN);
      $statement->bindValue(':ethnicity', $ethnicity);
      $statement->bindValue(':street', $street);
      $statement->bindValue(':city', $city);
      $statement->bindValue(':state', $state);
      $statement->bindValue(':zip', $zip);

      $statement->execute();
      $statement->closeCursor();
   } catch (PDOException $e)
   {
      $e->getMessage();   // consider a generic message
   } catch (Exception $e)
   {
      $e->getMessage();   // consider a generic message
   }
}




function getAllPatients()
{
   global $db;
   $query = "select * from Patient";    
   $statement = $db->prepare($query);    // compile
   $statement->execute();
   $result = $statement->fetchAll();     // fetch()
   $statement->closeCursor();


   return $result;
}


function getPatientById($pID)  
{
   global $db;
   $query = "select * from Patient where pID=:pID";
   $statement = $db->prepare($query);    // compile
   $statement->bindValue(':pID', $pID);
   $statement->execute();
   $result = $statement->fetch();
   $statement->closeCursor();


   return $result;
}


function updatePatient($pID, $first, $last, $gender, $DOB, $SSN, $ethnicity, $street, $city, $state, $zip)
{
   global $db;
   $query = "update Patient set first=:first, last=:last, gender=:gender, DOB=:DOB, SSN=:SSN, ethnicity=:ethnicity, street=:street, city=:city, state=:state, zip=:zip where pID=:pID" ;


   $statement = $db->prepare($query);
   $statement->bindValue(':pID', $pID);
   $statement->bindValue(':first', $first);
   $statement->bindValue(':last', $last);
   $statement->bindValue(':gender', $gender);
   $statement->bindValue(':DOB', $DOB);
   $statement->bindValue(':SSN', $SSN);
   $statement->bindValue(':ethnicity', $ethnicity);
   $statement->bindValue(':street', $street);
   $statement->bindValue(':city', $city);
   $statement->bindValue(':state', $state);
   $statement->bindValue(':zip', $zip);


   $statement->execute();
   $statement->closeCursor();
}


function deletePatient($pID)
{
   global $db;
   $query = "delete from Patient where pID=:pID" ;


   $statement = $db->prepare($query);
   $statement->bindValue(':pID', $pID);
   $statement->execute();
   $statement->closeCursor();
}

function addAppointment($docID, $pID, $appID, $date, $description)
{
    global $db;
    $query = "INSERT INTO Appointments (docID, pID, appID, date, description) VALUES (:docID, :pID, :appID, :date, :description)";
    $statement = $db->prepare($query);
    $statement->bindValue(':docID', $docID);
    $statement->bindValue(':pID', $pID);
    $statement->bindValue(':appID', $appID);
    $statement->bindValue(':date', $date);
    $statement->bindValue(':description', $description);
    $statement->execute();
    $statement->closeCursor();
}

function getAllAppointments()
{
    global $db;
    $query = "SELECT * FROM Appointments";
    $statement = $db->prepare($query);
    $statement->execute();
    $result = $statement->fetchAll();
    $statement->closeCursor();
    return $result;
}

function getAppointmentById($appID)
{
    global $db;
    $query = "SELECT * FROM Appointments WHERE appID=:appID";
    $statement = $db->prepare($query);
    $statement->bindValue(':appID', $appID);
    $statement->execute();
    $result = $statement->fetch();
    $statement->closeCursor();
    return $result;
}

function updateAppointment($docID, $pID, $appID, $date, $description)
{
    global $db;
    $query = "UPDATE Appointments SET docID=:docID, pID=:pID, date=:date, description=:description WHERE appID=:appID";
    $statement = $db->prepare($query);
    $statement->bindValue(':docID', $docID);
    $statement->bindValue(':pID', $pID);
    $statement->bindValue(':appID', $appID);
    $statement->bindValue(':date', $date);
    $statement->bindValue(':description', $description);
    $statement->execute();
    $statement->closeCursor();
}

function deleteAppointment($appID)
{
    global $db;
    $query = "DELETE FROM Appointments WHERE appID=:appID";
    $statement = $db->prepare($query);
    $statement->bindValue(':appID', $appID);
    $statement->execute();
    $statement->closeCursor();
}
function exportPatients($patients) {
   $filename = "patients_" . date('Y-m-d') . ".csv";
   header('Content-Type: text/csv; charset=utf-8');
   header('Content-Disposition: attachment; filename="' . $filename . '"');
   $output = fopen('php://output', 'w');
   fputcsv($output, array('Patient ID', 'First Name', 'Last Name', 'Gender', 'DOB', 'SSN', 'Ethnicity', 'Street', 'City', 'State', 'Zip'));

   foreach ($patients as $row) {
       fputcsv($output, array(
           $row['pID'],
           $row['first'],
           $row['last'],
           $row['gender'],
           $row['DOB'],
           $row['SSN'],
           $row['ethnicity'],
           $row['street'],
           $row['city'],
           $row['state'],
           $row['zip'],
       ));
   }

   fclose($output);
   exit();
}
?>