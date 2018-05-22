<?php
include "baglan.php";
?>
<!DOCTYPE html>
<html>
<head>
<title>Otomobil</title>
<meta name="Description" content="Otomobil"/>
<meta name="Keywords" content="araba,otomobil,oner,otomobil oner"/>
<meta name="Copyright" content="2009-2012 Copyright | "/>
<meta charset="UTF-8"/>

<link href="style.css" rel="stylesheet"/>
</head>
<body>
<div id="container">
<div id="ustBanner">


	<img id="arkaPlanFoto" src="images/arkaPlanFoto.png"/>
</div>


<div id="menu">
<ul>
<a href="index2.php">Anasayfa</a>
<a href="markalar.html">Markalar</a>
<a href="en_cok_tercih_edilenler.html">En Cok Tercih Edilenler</a>
</div>

<form class="form-signin" action="sorgu.php" method="POST">


<div id="icerik">

<h1>Marka Seciniz</h1>

<select name="marka" id="marka" >
	<option value="0" selected>Marka Secin</option>
   <?php
		$sql= mysqli_query($baglan,"select * from marka");
		while($tumu = mysqli_fetch_array($sql)){
			echo '<option value="'.$tumu["marka_id"].'">'.$tumu["marka_ad"].'</option>';
		}
	?>
  
</select>


<h2>Minimum Motor Hacmi Seciniz (m3)</h2>

<label ><input type="number" name="motor_hacmi" id="motor_hacmi" min="1000" max="4000" value="1000"/>

  

<h3>Kasa Tipi</h3>

<label><input type="text" id="kasa_tipi" name="kasa_tipi"/>


<h4>Maksimum Yakit Tuketimi L/100km</h4>

<label><input type="number" id="yakit" name="yakit"/>

<h5>Maksimum Fiyat (TL)</h5>

<label><input type="number" id="fiyat" name="fiyat"/>


<input class="btn btn-lg btn-primary btn-block" type="submit" id="buton" name="buton" value="Otomobil Oner">
</form>
</div>

</div>
</form>