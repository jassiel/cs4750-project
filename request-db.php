<?php
require ("connect-db.php");
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
   } catch (PDOException $e) {
      $e->getMessage();   // consider a generic message
   } catch (Exception $e) {
      $e->getMessage();   // consider a generic message
   }
}

function addAppt($docID, $pID, $appID, $date, $description)
{
   global $db;

   $query = "INSERT INTO Appointments (`docID`, `pID`, `appID`, `date`, `description`) VALUES (:docID, :pID, :appID, :date, :description)";

   try {
      $statement = $db->prepare($query);
      $statement->bindValue(':docID', $docID);
      $statement->bindValue(':pID', $pID);
      $statement->bindValue(':appID', $appID);
      $statement->bindValue(':date', $date);
      $statement->bindValue(':description', $description);

      $statement->execute();
      $statement->closeCursor();
      return 0;
   } catch (PDOException $e) {
      $e->getMessage();   // consider a generic message
      return 1;
   } catch (Exception $e) {
      $e->getMessage();   // consider a generic message
      return 1;
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
   $query = "update Patient set first=:first, last=:last, gender=:gender, DOB=:DOB, SSN=:SSN, ethnicity=:ethnicity, street=:street, city=:city, state=:state, zip=:zip where pID=:pID";


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
   $query = "delete from Patient where pID=:pID";


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
   echo "here";
   try {
      $query = "DELETE FROM Appointments WHERE appID=:appID";
      $statement = $db->prepare($query);
      $statement->bindValue(':appID', $appID);
      $statement->execute();
      $statement->closeCursor();
      return 0;
   } catch (PDOException $e) {
      $e->getMessage();   // consider a generic message
      return 1;
   } catch (Exception $e) {
      $e->getMessage();   // consider a generic message
      return 1;
   }

}
function exportPatients($patients)
{
   $filename = "patients_" . date('Y-m-d') . ".csv";
   header('Content-Type: text/csv; charset=utf-8');
   header('Content-Disposition: attachment; filename="' . $filename . '"');
   $output = fopen('php://output', 'w');
   fputcsv($output, array('Patient ID', 'First Name', 'Last Name', 'Gender', 'DOB', 'SSN', 'Ethnicity', 'Street', 'City', 'State', 'Zip'));

   foreach ($patients as $row) {
      fputcsv(
         $output,
         array(
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
         )
      );
   }

   fclose($output);
   exit();
}

function getPatientByUserId($userID)
{
   global $db;
   $query = "select * from Patient where userID=:userID";
   $statement = $db->prepare($query);    // compile
   $statement->bindValue(':userID', $userID);
   $statement->execute();
   $result = $statement->fetch();
   $statement->closeCursor();

   return $result;
}

function getPidFromUserID($userID)
{
   global $db;
   $query = 'select pID from Patient where userID=:userID';
   $statement = $db->prepare($query);    // compile
   $statement->bindValue(':userID', $userID);
   $statement->execute();
   $result = $statement->fetch();
   $statement->closeCursor();

   return $result;
}

function getPatientAllergies($pID)
{
   global $db;
   $query = 'select aType, description, severity from Allergies where pID=:pID';
   $statement = $db->prepare($query);    // compile
   $statement->bindValue(':pID', $pID);
   $statement->execute();
   $result = $statement->fetchAll();
   $statement->closeCursor();

   if ($result == 0) {
      return NULL;
   } else
      return $result;
}

function getPatientAppointments($pID)
{
   global $db;
   $query = 'select * from Appointments where pID=:pID';
   $statement = $db->prepare($query);    // compile
   $statement->bindValue(':pID', $pID);
   $statement->execute();
   $result = $statement->fetchAll();
   $statement->closeCursor();

   if ($result == 0) {
      return NULL;
   } else
      return $result;
}

function getPatientDoctor($docID)
{
   global $db;
   $query = 'select first, last from Doctor where docID=:docID';
   $statement = $db->prepare($query);    // compile
   $statement->bindValue(':docID', $docID);
   $statement->execute();
   $result = $statement->fetch();
   $statement->closeCursor();
   // echo $result == 0;
   if ($result == 0) {
      return NULL;
   } else
      return $result;
}

function getPatientBills($pID)
{
   global $db;
   $query = 'select appID, cost from Bill where pID=:pID';
   $statement = $db->prepare($query);    // compile
   $statement->bindValue(':pID', $pID);
   $statement->execute();
   $result = $statement->fetchAll();
   $statement->closeCursor();

   if ($result == 0) {
      return NULL;
   } else
      return $result;
}

function getBillApp($appID)
{
   global $db;
   $query = 'select date from Appointments where appID=:appID';
   $statement = $db->prepare($query);    // compile
   $statement->bindValue(':appID', $appID);
   $statement->execute();
   $result = $statement->fetch();
   $statement->closeCursor();

   if ($result == 0) {
      return NULL;
   } else
      return $result;
}

function getPatientImmunizations($pID)
{
   global $db;
   $query = 'select description from Immunizations where pID=:pID';
   $statement = $db->prepare($query);    // compile
   $statement->bindValue(':pID', $pID);
   $statement->execute();
   $result = $statement->fetchAll();
   $statement->closeCursor();

   if ($result == 0) {
      return NULL;
   } else
      return $result;
}

function getPatientMedications($pID)
{
   global $db;
   $query = 'select mCode, description, reason from Medications where pID=:pID';
   $statement = $db->prepare($query);    // compile
   $statement->bindValue(':pID', $pID);
   $statement->execute();
   $result = $statement->fetchAll();
   $statement->closeCursor();

   if ($result == 0) {
      return NULL;
   } else
      return $result;
}

function getMedsPerscribedBy($mCode)
{
   global $db;
   $query = 'select docID from Perscribes where mCode=:mCode';
   $statement = $db->prepare($query);    // compile
   $statement->bindValue(':mCode', $mCode);
   $statement->execute();
   $result = $statement->fetch();
   $statement->closeCursor();

   if ($result == 0) {
      return NULL;
   } else
      return $result;
}

function exportApps($apps)
{
   $filename = "appointments" . date('Y-m-d') . ".csv";
   header('Content-Type: text/csv; charset=utf-8');
   header('Content-Disposition: attachment; filename="' . $filename . '"');
   $output = fopen('php://output', 'w');
   fputcsv($output, array('Date', 'Reason for visit'));

   foreach ($apps as $row) {
      fputcsv(
         $output,
         array(
            $row['date'],
            $row['description'],
         )
      );
   }

   fclose($output);
   exit();
}

function exportBills($bills)
{
   $filename = "bills" . date('Y-m-d') . ".csv";
   header('Content-Type: text/csv; charset=utf-8');
   header('Content-Disposition: attachment; filename="' . $filename . '"');
   $output = fopen('php://output', 'w');
   fputcsv($output, array('Date', 'Cost'));

   foreach ($bills as $row) {
      $temp = getBillApp($row['appID']);
      fputcsv(
         $output,
         array(
            $temp['date'],
            $row['cost'],
         )
      );
   }

   fclose($output);
   exit();
}

function exportImms($imms)
{
   $filename = "immunizations" . date('Y-m-d') . ".csv";
   header('Content-Type: text/csv; charset=utf-8');
   header('Content-Disposition: attachment; filename="' . $filename . '"');
   $output = fopen('php://output', 'w');
   fputcsv($output, array('Immunization'));

   foreach ($imms as $row) {
      fputcsv(
         $output,
         array(
            $row['description'],
         )
      );
   }

   fclose($output);
   exit();
}

function exportMeds($meds)
{
   $filename = "medications" . date('Y-m-d') . ".csv";
   header('Content-Type: text/csv; charset=utf-8');
   header('Content-Disposition: attachment; filename="' . $filename . '"');
   $output = fopen('php://output', 'w');
   fputcsv($output, array('Medication'));

   foreach ($meds as $row) {
      fputcsv(
         $output,
         array(
            $row['description'],
         )
      );
   }

   fclose($output);
   exit();
}

function exportAlls($alls)
{
   $filename = "allergies" . date('Y-m-d') . ".csv";
   header('Content-Type: text/csv; charset=utf-8');
   header('Content-Disposition: attachment; filename="' . $filename . '"');
   $output = fopen('php://output', 'w');
   fputcsv($output, array('Allergy', 'Description', 'Severity'));

   foreach ($alls as $row) {
      fputcsv(
         $output,
         array(
            $row['aType'],
            $row['description'],
            $row['severity'],
         )
      );
   }

   fclose($output);
   exit();
}

function getDocIdFromUserId($userID)
{
   global $db;
   $query = "select * from Doctor where userID=:userID";
   $statement = $db->prepare($query);    // compile
   $statement->bindValue(':userID', $userID);
   $statement->execute();
   $result = $statement->fetch();
   $statement->closeCursor();

   return $result;
}

function getUserIdFromUsername($username)
{
   global $db;
   $query = "select * from Users where username=:username";
   $statement = $db->prepare($query);    // compile
   $statement->bindValue(':username', $username);
   $statement->execute();
   $result = $statement->fetch();
   $statement->closeCursor();

   return $result;
}
?>