<?php
  $page_title = 'Archivos';
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
<h1>Apartado de XML</h1>
<td>Generar XML productos</td>
<table class="default">

  <tr>

    <a href="crearxml.php" class="btn btn-primary">Crear XML</a>
    <td></td>
    <a href="descargarxml.php" class="btn btn-primary">Descargar XML</a>
  </tr>
  <tr>
  

</table>

     </div>
    </div>
  </div>
</div>  
</body>
</html>

  <?php include_once('layouts/footer.php'); ?>
