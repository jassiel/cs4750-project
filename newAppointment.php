<?php
// require ("connect-db.php");
require ("request-db.php");
session_start();
?>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    global $db;

    $doctor = getDocIdFromUserId($_SESSION["userID"]);
    $patientID = getUserIdFromUsername($_POST["patientUser"]);
    $patient = getPidFromUserID(intval($patientID['userID']));
    $date = $_POST["date"];
    $description = $_POST["description"];
    $temp = $doctor[0] . ' ' . $patient[0] . ' ' . $date . ' ' . $description;
    $appID = hash('md5', $temp);
    $res = addAppt($doctor[0], $patient[0], $appID, $date, $description);
    if ($res) {
        $error = 'There is an appointment for that date already';
    } else {
        header("location: home.php");
    }
}
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
    <div class="container" align="center">
        <div class="row g-3 mt-2">
            <div class="col">
                <h2>New Appointment</h2>
            </div>
        </div>
        <form method="post" action="">
            <table>
                <tr>
                    <td>
                        <div class='mb-3'>
                            <label for="pID">Patient:</label><br>
                            <input type="text" id="patientUser" name="patientUser" required><br>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class='mb-3'>
                            <label for="date">Date:</label><br>
                            <input type="date" id="date" name="date" required><br>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class='mb-3'>
                            <label for="description">Description:</label><br>
                            <input type="text" id="description" name="description" required><br>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class='row g-3 mx-auto '>
                            <input type="submit" value="Add Appointment" id="addAppointmentBtn" name="addAppointmentBtn"
                                class="btn btn-dark" title="Add an Appointment" />
                        </div>
                    </td>
                </tr>
            </table>
        </form>
        <div style="color:#cc0000"><?php echo $error; ?></div>
    </div>
    
</body>

</html>