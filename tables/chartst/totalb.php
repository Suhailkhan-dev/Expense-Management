<?php

$servername ="localhost";
$username = "root";
$password = "";
$dbname="expenseoo";
session_start();
$a=$_SESSION["email"];


$conn = mysqli_connect($servername,$username,$password,$dbname);
if($conn){
	echo "";
}
else
{
	echo "no connection";
}

mysqli_select_db($conn,$dbname); 

//for travel sum
$query = "SELECT SUM(cost) FROM food WHERE email = '$a'";
$sum = mysqli_fetch_row(mysqli_query($conn, $query));

//for fuel sum
$query = "SELECT SUM(cost) FROM ent WHERE email='$a'";
$fuel = mysqli_fetch_row(mysqli_query($conn, $query));

//for ecomm sum
$query = "SELECT SUM(cost) FROM medic WHERE email='$a'";
$eco = mysqli_fetch_row(mysqli_query($conn, $query));

//for internet sum
$query = "SELECT SUM(cost) FROM misc WHERE email='$a'";
$inter = mysqli_fetch_row(mysqli_query($conn, $query));








?>

<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);

      function drawStuff() {
        var data = new google.visualization.arrayToDataTable([
         ['Order', 'amount'],
          ['FOOD', parseInt('<?php echo $sum[0]; ?>')],
          ['ENTERTAINMENT',       parseInt('<?php echo $fuel[0]; ?>')],
          ['MEDICAL', parseInt('<?php echo $eco[0]; ?>')],
          ['MISCELLANIOUS', parseInt('<?php echo $inter[0]; ?>')],
        ]);

        var options = {
          width: 800,
          legend: { position: 'none' },
          chart: {
            title: 'TOTAL EXPENCE',
            subtitle: 'Amount by percentage' },
          axes: {
            x: {
              0: { side: 'top',label: 'Expense'} // Top x-axis.
            }
          },
          bar: { groupWidth: "90%" }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        // Convert the Classic options to Material options.
        chart.draw(data, google.charts.Bar.convertOptions(options));
      };
    </script>
  </head>
  <body>
    <a href="../tablet.php"><input type="button" value="Back"></a>
    <div id="top_x_div" style="width:800px; height: 600px;"></div>
  </body>
</html>
