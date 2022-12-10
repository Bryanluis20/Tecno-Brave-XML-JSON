<?php
  $page_title = 'Archivosdos';
  require_once('includes/load.php');
?>
<?php
// Checkin What level user has permission to view this page
 page_require_level(1);
//pull out all user form database
 $all_users = find_all_user();
?>
<?php include_once('layouts/header.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
<div class="row">
   <div class="col-md-12">
     <?php echo display_msg($msg); ?>
   </div>
</div>
<div class="row">
  <div class="col-md-12">
    <div class="panel panel-default">
<h1>Apartado de JSON</h1>
<td>Generar JSON de productos</td>
<table class="default">

  
  <tr>
   <td></td>
   <a href="crearjson.php" class="btn btn-primary">Crear JSON</a>

   <a href="descargarjson.php" class="btn btn-primary">Descargar JSON</a>
  </tr>

</table>

     </div>
    </div>
  </div>
</div>  
</body>
</html>

  <?php include_once('layouts/footer.php'); ?>
