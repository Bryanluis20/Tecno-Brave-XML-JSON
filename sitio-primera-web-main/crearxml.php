<?php
    include("includes/session.php");
    //$arch = $_GET['arch'];
    //include("config.php");
    $cn = mysqli_connect("localhost","root","");

    mysqli_select_db($cn,"oswa_inv");
    $sql = "SELECT * FROM products";
    
    $query = "SELECT * FROM products";
    $result = mysqli_query($cn, $sql);    

    $archXML= mysql_XML($result);
     //Creamos el XML
    $nombreArch="Productos_XML.xml";
    $archivo = fopen($nombreArch,"w+");
    fwrite($archivo,$archXML);
    fclose($archivo);
    
    echo '<script language="javascript">';
    echo 'alert("Archivo creado exitósamente");';
    echo 'window.location="archivos.php";';
    echo '</script>';

    function mysql_XML($result)
    {
        // creamos el documento XML			
        $contenido  = '<?xml version="1.0" encoding="utf8" ?>';	
        $contenido .= '<informacion>';	
        while ($row = mysqli_fetch_array($result)) {
            $contenido.="<Productos>";
            $contenido.="<Nombre y Descripcion>".$row['name']."</Nombre>";
            $contenido.="<Cantidad>".$row['quantity']."</Cantidad>";
            $contenido.="<PrecioCompra>".$row['buy_price'] ."</PrecioCompra>";
            $contenido.="<PrecioVenta>".$row['sale_price']."</PrecioVenta>";
            $contenido.="</Productos>";		
        }
        $contenido.='</informacion>';				
        return $contenido;
    }    
?>