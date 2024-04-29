<?php
require ("connect-db.php");
session_start();
?>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    global $db;
    // username and password sent from form 
    $myusername = $_POST['username'];
    $mypassword = $_POST['passwd'];
    $hashed_password = password_hash($mypassword, PASSWORD_DEFAULT);

    $query = 'SELECT * FROM Users WHERE username=:username';
    $statement = $db->prepare($query);
    $statement->bindValue(':username', $myusername);
    $statement->execute();
    $result = $statement->fetch();

    if (password_verify($mypassword, $result['passcode'])) {
        $_SESSION['username'] = $myusername;
        $_SESSION['usertype'] = $result['usertype'];
        $_SESSION['userID'] = intval($result['userID']);;
        header("location: home.php");
    } else {
        $error = 'Your Username or Password is invalid ';
    }
    $statement->closeCursor();
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
    <div class="container" align="center">
        <div class="row g-3 mt-2">
            <div class="col">
                <h2>Login to Medical Portal</h2>
            </div>
        </div>
        <div>
            <form action="" method="post">
                <table>
                    <tr>
                        <td>
                            <div class='mb-3'>
                                <label for="username"><b>Username</b></label>
                                <input type="text" class="form-control" placeholder="Enter Username" name="username"
                                    required>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class='mb-3'>
                                <label for="passwd"><b>Password</b></label>
                                <input type="password" class="form-control" placeholder="Enter Password" name="passwd"
                                    required>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <div class="row g-3 mx-auto ">
                                <button type="submit" class="btn btn-primary">Login</button>
                            </div>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div style="color:#cc0000"><?php echo $error; ?></div>
</body>

</html>