<?php

$a="make";
$b="BMW";
$example = array("Peter"=>"35", "Ben"=>"37", "Joe"=>"43");
//$example[$a] = $b;//Encode $example array into a JSON string.
$exampleEncoded = json_encode($example);
echo $exampleEncoded;
echo "<br>";
$example = json_decode($exampleEncoded, true);
print_r($example) ;


?>