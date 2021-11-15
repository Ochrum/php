<?php
    $day = $_GET['day'];
    $hour = $_GET['hour'];
    $newName = $_GET['przedmiot'];
    $baza = mysqli_connect('localhost', 'root', '', 'purpurowy_kutacz');
    if(mysqli_errno($baza)) {
        echo "Error";
    }

    if(isset($_GET['edit'])) {
        mysqli_query($baza, "UPDATE plan_lekcji SET nazwa='$newName' WHERE int_d='$day' AND int_nr='$hour';");
    }
    if(isset($_GET['delete'])) {
        mysqli_query($baza, "DELETE FROM plan_lekcji WHERE int_d='$day' AND int_nr='$hour';");
    }
    ob_start();
    header('Location: http://localhost:8080/eee/');
    ob_end_flush();
    die();
    mysqli_close($baza);
?>