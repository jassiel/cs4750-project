<?php
session_start();
// require("connect-db.php");
require ("request-db.php");
?>

<?php   // form handling
$patient = getPatientById($_POST['pID']);
$allergies = getPatientAllergies($patient[0]);
$appointments = getPatientAppointments($patient[0]);
$bills = getPatientBills($patient[0]);
$immunizations = getPatientImmunizations($patient[0]);
$meds = getPatientMedications($patient[0]);
$name = $patient['first'] . ' ' . $patient['last'];

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (!empty($_POST['exportApps'])) {
        exportApps($appointments);
    } else if (!empty($_POST['exportBills'])) {
        exportBills($bills);
    } else if (!empty($_POST['exportImms'])) {
        exportImms($immunizations);
    } else if (!empty($_POST['exportMeds'])) {
        exportMeds($meds);
    } else if (!empty($_POST['exportAlls'])) {
        exportAlls($allergies);
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


    <div class="container">
        <div class="container" align="center">
            <div class="row g-3 mt-2">
                <div class="col">
                    <h2>Viewing <?php echo $name; ?>'s Medical Record</h2>
                </div>
            </div>
        </div>
        <div align="left">
            <?php if ($appointments == NULL) { ?>
                <div class="col-md-8">
                    <h3>Appointments</h3>
                    <p>No upcoming appointments</p>
                </div>
            <?php } else { ?>
                <div class="row g-3 mx-auto">
                    <div class="col-4 d-grid ">
                        <h3>Appointments</h3>
                    </div>
                </div>
                <button type="btn btn-secondary" class="collapsible">View</button>
                <div class="content row justify-content-center">
                    <table class="w3-table w3-bordered w3-card-4" style="width:100%">
                        <thead>
                            <tr style="background-color:#B0B0B0">
                                <th><b>Date</b></th>
                                <th><b>Reason for Visit</b></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($appointments as $app): ?>
                                <tr>
                                    <td><?php echo $app['date']; ?></td>
                                    <td><?php echo $app['description']; ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            <?php } ?>
        </div>
    </div>

    <hr />

    <div class="container">
        <div align="left">
            <?php if ($bills == NULL) { ?>
                <div class="col-md-8">
                    <h3>Bills</h3>
                    <p>No bills to show</p>
                </div>
            <?php } else { ?>
                <div class="row g-3 mx-auto">
                    <div class="col-4 d-grid ">
                        <h3>Bills</h3>
                    </div>
                </div>
                <button type="btn btn-secondary" class="collapsible">View</button>
                <div class="content row justify-content-center">
                    <table class="w3-table w3-bordered w3-card-4" style="width:100%">
                        <thead>
                            <tr style="background-color:#B0B0B0">
                                <th><b>From date</b></th>
                                <th><b>Amount</b></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($bills as $bill): ?>
                                <?php $temp = getBillApp($bill['appID']); ?>
                                <tr>
                                    <td><?php echo $temp['date']; ?></td>
                                    <td><?php echo $bill['cost']; ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            <?php } ?>
        </div>
    </div>

    <hr />

    <div class="container">
        <div align="left">
            <?php if ($immunizations == NULL) { ?>
                <div class="col-md-8">
                    <h3>Immunizations</h3>
                    <p>No records on file</p>
                </div>
            <?php } else { ?>
                <div class="row g-3 mx-auto">
                    <div class="col-4 d-grid ">
                        <h3>Immunizations</h3>
                    </div>
                </div>
                <button type="btn btn-secondary" class="collapsible">View</button>
                <div class="content row justify-content-center">
                    <table class="w3-table w3-bordered w3-card-4" style="width:100%">
                        <thead>
                            <tr style="background-color:#B0B0B0">
                                <th><b>Immunization</b></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($immunizations as $imm): ?>
                                <tr>
                                    <td><?php echo $imm['description']; ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            <?php } ?>
        </div>
    </div>

    <hr />

    <div class="container">
        <div align="left">
            <?php if ($meds == NULL) { ?>
                <div class="col-md-8">
                    <h3>Medications</h3>
                    <p>None perscribed</p>
                </div>
            <?php } else { ?>
                <div class="row g-3 mx-auto">
                    <div class="col-4 d-grid ">
                        <h3>Medications</h3>
                    </div>
                </div>
                <button type="btn btn-secondary" class="collapsible">View</button>
                <div class="content row justify-content-center">
                    <table class="w3-table w3-bordered w3-card-4" style="width:100%">
                        <thead>
                            <tr style="background-color:#B0B0B0">
                                <th><b>Medication</b></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($meds as $med): ?>
                                <tr>
                                    <td><?php echo $med['description']; ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            <?php } ?>
        </div>
    </div>

    <hr />

    <div class="container">
        <div align="left">
            <?php if ($allergies == NULL) { ?>
                <div class="col-md-8">
                    <h3>Allergies</h3>
                    <p>None on record</p>
                </div>
            <?php } else { ?>
                <div class="row g-3 mx-auto">
                    <div class="col-4 d-grid ">
                        <h3>Allergies</h3>
                    </div>
                </div>
                <button type="btn btn-secondary" class="collapsible">View</button>
                <div class="content row justify-content-center">
                    <table class="w3-table w3-bordered w3-card-4" style="width:100%">
                        <thead>
                            <tr style="background-color:#B0B0B0">
                                <th><b>Allergy</b></th>
                                <th><b>Description</b></th>
                                <th><b>Severity</b></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($allergies as $allergery): ?>
                                <tr>
                                    <td><?php echo $allergery['aType']; ?></td>
                                    <td><?php echo $allergery['description']; ?></td>
                                    <td><?php echo $allergery['severity']; ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            <?php } ?>
        </div>
    </div>

    <!-- <div class="container">
        <div align="left">
            <form action="record.php" method="POST">
                <input type="submit" value="Delete Record?" name="updateBtn" class="btn btn-danger" />
                <input type="hidden" name="pID" value="<?php echo $patient_info['pID']; ?>" />
            </form>
        </div>
    </div> -->



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