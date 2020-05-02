<?php
include_once('connection.php');
$query="select * from disease";
$result=mysql_query($query);
?>

<!DOCTYPE html>
<html>
<title>
<head> Fetch Data From Database </head>
</title>

<body>
<table align="center" style="width:750px; line-height:60px;">

<tr>
<th colspan="5"> <h2> Viruses </h2> </th>
</tr>

<t>
<th> Name </th>
<th> Symptoms </th>
<th> Precautions </th>
<th> Treatement </th>
<th> Cause </th>
</t>

<?php
while($rows=mysql_fetch_assoc($result))
{
?>
<tr>
<td> <?php echo $rows['name']; ?> </td>
<td> <?php echo $rows['sym']; ?> </td>
<td> <?php echo $rows['prexn']; ?> </td>
<td> <?php echo $rows['remd']; ?> </td>
<td> <?php echo $rows['rsn']; ?> </td>
</tr>
<?php
}
?>

</table>
</body>
</html>