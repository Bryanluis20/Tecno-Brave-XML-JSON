<?php
  ob_start();
  require_once('includes/load.php');
  if($session->isUserLoggedIn(true)) { redirect('home.php', false);}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>login</title>
  <link rel="stylesheet" href="libs/css/login.css"/>
</head>
<body class="body1">
   <!--Listo -- Bryan-->
<div class="login1">
<?php echo display_msg($msg); ?>
      <form method="post" action="auth_v2.php" class="clearfix1">
      <div class="t-login">
       <h1>Bienvenido</h1>
       <p>Sign in to start your session</p>
     </div>
        <div class="formulario">
              <label for="username" class="control">Username</label>
              <input type="name" class="form-c" name="username" placeholder="Username">
        </div>
        <div class="formulario">
            <label for="Password" class="control">Password</label>
            <input type="password" name= "password" class="form-c" placeholder="password">
        </div>
        <div class="formulario">
                <button type="submit" class="btn btn-info  pull-right">Login</button>
        </div>
    </form>
</div>
</body>
</html>
<?php include_once('layouts/header.php'); ?>
