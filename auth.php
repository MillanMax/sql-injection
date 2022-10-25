<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>SQL Injection</title>
 <meta name="description" content="">
 <link href="http://localhost/twitter-bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap.css" rel="stylesheet">
 </head>
 <body style="margin-top: 50px">
 <div class="container">
 <div class="row">
 <div class="span6">

 <?php $host ="localhost";
 $username="root";
 $password="";
 $db_name="hr_dept";


$mysqli = new mysqli("$host", "$username", "$password")
or 
die("cannot connect");

$mysqli -> select_db("$db_name")or
 die("cannot select DB");

$uid = $_POST['uid'];
$pid = $_POST['passid'];
$sql = "select * from user_details where userid = '$uid' 
and password = '$pid' ";

$result = mySQLi_query($mysqli, "$sql");

if(mySQLi_num_rows($result)>0)
{echo "<h4>".
    
"------ USER DETAILS  ------ ".
"</h4>",
"</br>";

while ($row=mySQLi_fetch_row($result)){
echo "
<p>".
"User ID : ".
$row[0]."
</p>";

echo "<p>".
"Password : ".
$row[1]."</p>";

echo "<p>".
"First Name : ".
$row[2]."</p>
Last Name : ".
$row[3]."</p>";

echo "<p>".
"Gender : ".
$row[4]."</p>

Date of Birth :".
$row[5]."</p>
";echo "
<p>".

"Country : ".
$row[6]." <p>
User Address : ".$row[7].
"</p>";

echo "<p>
"."Email ID : ".
$row[8].
"</p>
";
echo "<br>";
echo "--------------------------------------------";}
}else
echo "Invalid User ID or Password, please enter valid details";?>
</div>
</div>
</div>
</body>
</html>