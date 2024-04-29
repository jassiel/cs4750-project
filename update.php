<?php
session_start();
// require("connect-db.php");
require ("request-db.php");
?>

<?php   // form handling
$patient_to_update = getPatientById($_POST['pID']);

// var_dump($patient_to_update);

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (!empty($_POST['cofmBtn'])) {
        $res = updateAddress($_POST["cofm_pID"], $_POST["street"], $_POST["city"], $_POST["state"], $_POST["zip"]);
        // var_dump($patient_to_update);
        // header("location: home.php");
        if ($res) {
            $error = 'Failed to update address';
        }
        else {
            // header("location: home.php");
        }

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
    </hr>
    <div class="container" align="center">
        <div class="row g-3 mt-2">
            <div class="col">
                <h2>Update Billing Address</h2>
            </div>
        </div>


        <form method="post" action="<?php $_SERVER['PHP_SELF'] ?>" onsubmit="return validateInput()">
            <table style="width:98%">
                <tr>
                    <td>
                        <div class='mb-3'>
                            Street:
                            <input type='text' class='form-control' id='street' name='street' value="<?php if ($patient_to_update != null)
                                echo $patient_to_update['street'] ?>">
                            </div>
                        </td>
                        <td>
                            <div class='mb-3'>
                                City:
                                <input type='text' class='form-control' id='city' name='city' value="<?php if ($patient_to_update != null)
                                echo $patient_to_update['city'] ?>">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class='mb-3'>
                                State:
                                <input type='text' class='form-control' id='state' name='state' value="<?php if ($patient_to_update != null)
                                echo $patient_to_update['state'] ?>">
                            </div>
                        </td>
                        <td>
                            <div class='mb-3'>
                                ZIP:
                                <input type='text' class='form-control' id='zip' name='zip' value="<?php if ($patient_to_update != null)
                                echo $patient_to_update['zip'] ?>">
                            </div>
                        </td>
                    </tr>

                </table>
                <div class="row g-3 mx-auto ">
                    <input type="submit" value="Confirm update" id="cofmBtn" name="cofmBtn" class="btn btn-primary"
                        title="Update a patient record">
                    <input type="hidden" value="<?= $patient_to_update['pID'] ?>" name="cofm_pID">
            </div>
        </form>
    </div>
    <div style="color:#cc0000"><?php echo $error; ?></div>

</body>

</html>