<?php
/**
 * Created by PhpStorm.
 * User: Rogelio
 * Date: 13/10/14
 * Time: 08:15 PM
 */
///vista
?>
<html>
<head></head>
<body>
<h2><?=$titulo?></h2>
<?php
$examen = new Examen();
$examen-> mostrarPreguntas(); ?>
</body>
</html>
