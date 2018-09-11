<?php
for($i=1;$i<=8;$i++){
    for($j=1;$j<=16;$j++){
        if($j>=10-$i && $j<=8+$i)
        {
        if($j==9)
        {
           echo "*"; 
        }
        else if($j%2!=0)
        {
            echo "A";
        }
        else
        {
           echo "*"; 
        }
        }
        else {
            echo " ";
        }
    }
    echo "\n";
}
?>