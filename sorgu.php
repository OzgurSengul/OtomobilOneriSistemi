<?php
require("baglan.php");
if(!$baglan){ //bağlanmazsa
	die("Bağlantı Başarısız".mysqli_connect_error());

}
else
{
	echo "";
}
$buton = $_POST["buton"];
if(isset($buton)){
		$marka = $_POST["marka"];
		$motor_hacmi = $_POST["motor_hacmi"];
		$kasa_tipi = $_POST["kasa_tipi"];
		$fiyat = $_POST["fiyat"];
		$yakit = $_POST["yakit"];

		$sql="SELECT marka.marka_ad, model.model_ad, ozellik.motor_hacmi, ozellik.fiyat, ozellik.yakit
		FROM marka, model, ozellik 
		Where marka.marka_id=model.marka_id and model.model_id=ozellik.model_id and marka.marka_id='".$marka."' and ozellik.motor_hacmi>'".$motor_hacmi."' and ozellik.kasa_tipi='".$kasa_tipi."' and ozellik.fiyat<'".$fiyat."' and ozellik.yakit<'".$yakit."'";


		
		$srg=mysqli_query($baglan,$sql) or die("MySQL error: " . mysqli_error($baglan)); 
		if(mysqli_num_rows($srg)>0){
				while($row=mysqli_fetch_array($srg)){  
				
				echo "<hr>Marka Ad: ".$row["marka_ad"]."</br>Motor Hacmi:".$row["motor_hacmi"]. "</br>Model Ad:".$row["model_ad"]. "<br>Fiyat:".$row["fiyat"]. "<br>Yakit Tuketimi:".$row["yakit"]. "<hr></br>";
				}		

		}else{
			echo "Kayıt Bulunamadı";
		} 
		
}
mysqli_close($baglan); 
?>