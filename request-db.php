<?php
function addPatients($pID, $first, $last, $gender, $DOB, $SSN, $ethnicity, $street, $city, $state, $zip)
{
   global $db;  
   // $DOB = date('Y-m-d', strtotime($DOB)); // ensure proper data type before inserting it into a db
   
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
?>
