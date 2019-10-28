<?php

header('Content-type: text/javascript');
$json = array(
		'result' => 'fail',
);

if (isset($_POST["name"]) && isset($_POST["email"]) && isset($_POST["contact"]) && isset($_POST["game_score"]) && isset($_POST["register_datetime"]))
{
    require "connect.php";

    $name = mysqli_real_escape_string($con, $_POST["name"]);
    $email = mysqli_real_escape_string($con, $_POST["email"]);
    $contact = mysqli_real_escape_string($con, $_POST["contact"]);
   // $score = mysqli_real_escape_string($con, $_POST["score"]);
    $game_score = mysqli_real_escape_string($con, $_POST["game_score"]);
    $register_datetime = mysqli_real_escape_string($con, $_POST["register_datetime"]);

    $sql = mysqli_query($con, "INSERT INTO registration (name, contact, email, game_score, register_datetime) 
    VALUES ('$name', '$contact', '$email', '$game_score', '$register_datetime')");

    if ($sql)
    {
        $json['result'] = 'success';
    }
    else
    {
        $json['result'] = 'fail';
    }

    echo json_encode($json);
}
else
{
    $json['result'] = 'fail';
    echo json_encode($json);
}

?>