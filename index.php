<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cs.css">
    <title>PLAN LEKCJI</title>
    



</head>
<body>
    <table>
        <th colspan='6' class='header'>PLAN LEKCJI</th>
        <tr class='header'>
            <td>Godzina</td>
            <td>Poniedziałek</td>
            <td>Wtorek</td>
            <td>Sroda</td>
            <td>Czwartek</td>
            <td>Piątek</td>
</tr>
       
       
       <?php
            
            $godziny=array("  ", "7:45-8:30", "8:40-9:25", "9:35-10:20","10:35-11:20","11:30-12:15","12:25-13:10","13:20-14:05","14:10-14:55","15:00-15:45");
            $baza = mysqli_connect('localhost', 'root', '', 'purpurowy_kutacz');
            

            for ($nr=1; $nr <= 9; $nr++) {
                echo "<tr><td class='header'>$nr, $godziny[$nr] </td>";
               
                for ($d=1; $d <= 5; $d++) 
                {
                    $result = mysqli_query($baza, "SELECT * FROM plan_lekcji WHERE int_nr=$nr AND int_d=$d;");
                    $row = mysqli_fetch_array($result);
                   
                    if($row) 
                    {
                        echo "<td>
                        $row[3] <sub> $row[4] </sub>
                        </td>";
                    } 
                    else echo "<td></td>";
                }
                echo "</tr>";
            }
        ?>
    </table>
    <br><br>
    <div id='change'>
        <a href="http://localhost:8080/eee/2.php">
            <button>Zamien</button>
        </a>

        
        
    </div>
</body>
</html>