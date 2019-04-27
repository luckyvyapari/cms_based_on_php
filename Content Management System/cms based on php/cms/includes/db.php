<?php
//main start and this comment
//    $db['db_host'] ="localhost";
//    $db['db_user'] = "root";
//    $db['db_pass'] = "";
//    $db['db_name'] ="cms";
//DB_HOST,DB_USER,DB_PASS,DB_NAME
//foreach($db as $key => $value){
//    
//    define(strtoupper($key), $value);
//       
//}

//$connection = mysqli_connect('localhost','root','','cms');
//
//if($connection)
//{
//    
//    echo "database connected";
//}
//main close and this comment
?>

<?php






//$db['db_host'] = "localhost";
//$db['db_user'] = "root";
//$db['db_pass'] = "";
//$db['db_name'] = "cms";
//
//foreach($db as $key => $value){
//define(strtoupper($key), $value);
//}
//
//$connection = mysqli_connect(DB_HOST, DB_USER,DB_PASS,DB_NAME);



//$query = "SET NAMES utf8";
//mysqli_query($connection,$query);

//if($connection) {
//
//echo "We are connected";
//
//}








?>

<?php
   $connection = mysqli_connect('localhost','root','','cms');
    
    if(!$connection ){
        
        die ("database connection fail");
    }
?>









