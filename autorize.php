<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Row</title>
</head>
<body>
<?php

session_start();

$login = $_POST['login'];
$pass = $_POST['pass'];


if(isset($login) && (isset($pass))){
    
    require_once "config.php";

    $result = mysqli_query($con, "SELECT * FROM user where login = '$login' and pass = md5('$pass')");
    $row = mysqli_fetch_assoc($result);
    mysqli_free_result($result);

    if($row['pass'] != null && $row['login'] !=null) {
        $id = $row['id_u'];
        $stat = $row['stat'];
        $fio = $row['fio'];
        $stat = $row['stat'];

        $_SESSION['id'] = $id;
        $_SESSION['stat'] = $stat;
        $_SESSION['fio'] = $fio;
        $_SESSION['stat'] = $stat;

        if($_SESSION['stat']=='a') {
            header("Location:index_admin.php");
            exit;
        }
        elseif($_SESSION['stat']=='u'){
            header("Location: index_user.php");
            exit;
        }

        else{
            header("Location: autorize.php");
            exit;
        }
        mysqli_close($con);
    }
    else{
        echo "Enter login and pass!";
    }
}

?>
</body>
</html>
