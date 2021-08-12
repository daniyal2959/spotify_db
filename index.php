<?php 

include_once 'functions.php';
$spotify = new Spotify();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php var_dump($spotify->findFollowers('Daniyal.S')); ?>
</body>
</html>