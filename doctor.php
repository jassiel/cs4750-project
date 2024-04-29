<?php
session_start();
?>

<?php   // form handling

$doctor = getDocIdFromUserId($_SESSION["userID"]);
$list_of_patients = getAllPatients();
$list_of_appointments = getAllAppointments();
// var_dump($list_of_patients);   // debug

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
    } else if (!empty($_POST['exportCSV'])) {
        exportPatients($list_of_patients);
    } else if (!empty($_POST['addAppointmentBtn'])) {
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
    } else if (!empty($_POST['deleteBtn'])) {
        var_dump($list_of_appointments);
        deleteAppointment($_POST['appID']);
        $list_of_appointments = getAllAppointments();
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

    <hr />
    <div class="container">
        <div align="left">
            <div class="row g-3 mx-auto">
                <div class="col-4 d-grid ">
                    <h3>Appointments</h3>
                </div>
                <div class="col text-end">
                    <button type="btn btn-primary" onclick="location.href='newAppointment.php'">New Appointment</button>
                </div>
            </div>
        </div>
        <button type="btn btn-secondary" class="collapsible">View</button>
        <div class="content row justify-content-center">
            <table class="w3-table w3-bordered w3-card-4 center" style="width:100%">
                <thead>
                    <tr style="background-color:#B0B0B0">
                        <th>Patient</th>
                        <th>Date</th>
                        <th>Description</th>
                        <th><b>Delete</b></th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($list_of_appointments as $appointment_info): ?>
                        <?php $temp = getPatientById($appointment_info['pID']); ?>
                        <tr>
                            <td><?php echo $temp['first'] . ' ' . $temp['last']; ?></td>
                            <td><?php echo $appointment_info['date']; ?></td>
                            <td><?php echo $appointment_info['description']; ?></td>
                            <td>
                                <form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST">
                                    <input type="submit" value="Delete" name="deleteBtn" class="btn btn-danger" />
                                    <input type="hidden" name="appID" value="<?php echo $appointment_info['appID']; ?>" />
                                </form>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>

    <hr />

    <div class="container">
        <div align="left">
            <div class="col-md-8">
                <h3>Patients</h3>
            </div>
        </div>
        <button type="btn btn-secondary" class="collapsible">View</button>
        <div class="content row justify-content-center">
            <table class="w3-table w3-bordered w3-card-4" style="width:100%">
                <thead>
                    <tr style="background-color:#B0B0B0">
                        <th><b>Name</b></th>
                        <th><b>Gender</b></th>
                        <th><b>DOB</b></th>
                        <th><b>Full Record</b></th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($list_of_patients as $patient_info): ?>
                        <tr>
                            <td><?php echo $patient_info['first'] . ' ' . $patient_info['last']; ?></td>
                            <td><?php echo $patient_info['gender']; ?></td>
                            <td><?php echo $patient_info['DOB']; ?></td>
                            <td>
                                <form action="record.php" method="POST">
                                    <input type="submit" value="View" name="updateBtn" class="btn btn-primary" />
                                    <input type="hidden" name="pID" value="<?php echo $patient_info['pID']; ?>" />
                                </form>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>


    <style>
        .collapsible {
            background-color: #eee;
            color: #444;
            cursor: pointer;
            padding: 18px;
            width: 100%;
            border: none;
            text-align: left;
            outline: none;
            font-size: 15px;
        }

        /* Add a background color to the button if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
        .active,
        .collapsible:hover {
            background-color: #ccc;
        }

        .content {
            padding: 0 18px;
            background-color: white;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.2s ease-out;
        }

        .collapsible:after {
            content: '\02795';
            /* Unicode character for "plus" sign (+) */
            font-size: 13px;
            color: white;
            float: right;
            margin-left: 5px;
        }

        .active:after {
            content: "\2796";
            /* Unicode character for "minus" sign (-) */
        }
    </style>

    <script>
        var coll = document.getElementsByClassName("collapsible");
        var i;

        for (i = 0; i < coll.length; i++) {
            coll[i].addEventListener("click", function () {
                this.classList.toggle("active");
                var content = this.nextElementSibling;
                if (content.style.maxHeight) {
                    content.style.maxHeight = null;
                } else {
                    content.style.maxHeight = content.scrollHeight + "px";
                }
            });
        }
    </script>

</body>

</html>