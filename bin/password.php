<?php
        function randomPassword($chars) {
                $alphabet = "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789#!$%&@";
                $pass = array();
                $alphaLenght = strlen($alphabet) - 1;
                for ($i=0; $i < $chars; $i++) {
                        $n = rand(0, $alphaLenght);
                        $pass[] = $alphabet[$n];
                }
                return implode($pass);
        }
        echo "<html>"."\n"."<head>"."\n";
        echo "<style type=text/css>"."\n";
        echo "body { font-family: Verdana; }"."\n";
        echo "table { position: absolute; top: 20px; left: 20px; }"."\n"."td { padding: 8px; border: 1px solid #bbb; }"."\n"."p { position: absolute; top: 170px; left: 20px; }"."\n";
        echo "</style>"."\n";
        echo "<meta http-equiv='refresh' content='10' />"."\n";
        echo "</head>"."\n"."<body>"."\n";

        echo "<table>"."\n";
        echo "<tr>"."\n";
        echo "<td>8 caracteres</td>"."\n";
        echo "<td>".randomPassword(8)."</td>"."\n";
        echo "</tr>"."\n";
        echo "<tr>"."\n";
        echo "<td>16 caracteres</td>"."\n";
        echo "<td>".randomPassword(16)."</td>"."\n";
        echo "</tr>"."\n";
        echo "<tr>"."\n";
        echo "<td>32 caracteres</td>"."\n";
        echo "<td>".randomPassword(32)."</td>"."\n";
        echo "</tr>"."\n";
        echo "<tr>"."\n";
        echo "<td>64 caracteres</td>"."\n";
        echo "<td>".randomPassword(64)."</td>"."\n";
        echo "</tr>"."\n";
        echo "<p>Novas passwords geradas de 10 em 10 segundos</p>"."\n";

        echo "</body>"."\n"."</body>"."\n";
?>
