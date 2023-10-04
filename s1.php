<?php 
 
$result1= $_POST['search'];
$r=trim($result1);
$result= strtolower($r);


if (strpos($result,"jamnagar")=="true")

header ('Location: http://localhost/6p/place/ps.php?cid=1');

if (strpos($result,"rajkot")=="true")
header ('Location:http://localhost/6p/place/ps.php?cid=2');

if (strpos($result,"surat")=="true")
header ('Location:http://localhost/6p/place/ps.php?cid=16');

if (strpos($result,"narmada")=="true")
header ('Location:http://localhost/6p/place/ps.php?cid=9');


if (strpos($result,"katchh")=="true")
header ('Location: http://localhost/6p/place/ps.php?cid=10');

if (strpos($result,"ahemdabad")=="true")
header ('Location: http://localhost/6p/place/ps.php?cid=11');

if (strpos($result,"dwarka")=="true")
header ('Location: http://localhost/6p/place/ps.php?cid=14');

if (strpos($result,"junagadh")=="true")
header ('Location: http://localhost/6p/place/ps.php?cid=15');

if (strpos($result,"vadodara")=="true")
header ('Location: http://localhost/6p/place/ps.php?cid=17');

else
{
	?>
				<script>
					alert("city not found");
					location.replace("index.php");
					
				</script>
				<?php
}




echo    "<h2><li> No city found for this search</li></h2>";
?> 
 
