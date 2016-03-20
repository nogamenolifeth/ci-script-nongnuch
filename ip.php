<html>
<head>
<link href="css/design.css" rel="stylesheet" type="text/css">
</head>
</html>
<?php
$hostname = gethostbyaddr($_SERVER['REMOTE_ADDR']);
echo "<br><center><font size=5><b> $hostname </b></font></center>";
?> 