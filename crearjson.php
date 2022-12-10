<?php
    include("includes/session.php");


    //$arch = $_GET['arch'];
  // include("includes/config.php");
 $cn = mysqli_connect("localhost","root","");

         mysqli_select_db($cn,"oswa_inv");

    $sql = "SELECT * FROM products";
    
    $result = mysqli_query($cn, $sql);    
      
    $products= mysql_JSON($result);   
    //Creamos el JSON   
    $json_string = json_encode($products, JSON_UNESCAPED_UNICODE);
    //echo $json_string;

    
    $nombreArch="Archivo-JSON.json";
    $archivo = fopen($nombreArch,"w+");
    fwrite($archivo,$json_string);
    fclose($archivo);
    
    echo '<script language="javascript">';
    echo 'alert("Archivo creado exitósamente");';
    echo 'window.location="archivosdos.php";';
    echo '</script>';
    
    function mysql_JSON($result)
    {
        $usu = array(); //creamos un array
        while($row = mysqli_fetch_array($result)) 
        { 	
            $name=$row['name'];
            $quantity=$row['quantity'];            
            $buy_price= $row['buy_price'] ;
            $sale_price=$row['sale_price'];            
            $products[] = array('nombre'=> $name, 'cantidad'=> $quantity, 'precio de compra'=> $buy_price,
                                'precio de venta'=> $sale_price);

        }
        return $products;	
    }    
?>

