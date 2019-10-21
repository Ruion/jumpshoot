<?php

header('Content-type: text/javascript');

$json = array(
        'result' => 'fail',
		'emails' => array(),
);


//if (isset($_POST["license_key"]))
//{
    require "connect.php";

   // $license_key = mysqli_real_escape_string($con, $_POST["license_key"]);

    $sql = mysqli_query($con, "SELECT email FROM registration");

    if (mysqli_num_rows($sql) > 0) {
        // output data of each row
        while($row = mysqli_fetch_assoc($sql)) {
            array_push($json['emails'], $row);
        }
    }        

    if ($sql)
    {
        $json['result'] = 'success';
    }
    else
    {
        $json['result'] = 'fail';
    }

    mysqli_close($con);
//}
//else
//{
  //  $json['result'] = 'fail';
    
//}
echo json_encode($json);
?>