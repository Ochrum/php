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
            
            
            $baza = mysqli_connect('localhost', 'root', '', 'purpurowy_kutacz');
            

            for ($nr=1; $nr <= 9; $nr++) {
                echo "<tr><td class='header'>$nr</td>";
               
                for ($d=1; $d <= 5; $d++) 
                {
                    $result = mysqli_query($baza, "SELECT * FROM plan_lekcji WHERE int_nr=$nr AND int_d=$d;");
                    $row = mysqli_fetch_array($result);
                   
                    if($row) 
                    {
                        echo "<td>
                        $row[3]
                        </td>";
                    } 
                    else echo "<td></td>";
                }
                echo "</tr>";
            }
        ?>
    </table>
</body>
</html>