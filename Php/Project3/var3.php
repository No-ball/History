<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Variable quotes</title>
</head>
<body>
    <div>
        <?php
            $a = 'php';
            echo "this is a ".$a." web <br>";
            echo "this is a "."$a"." web <br>";
            echo "this is a ".'$a'." web <br>";
            echo "\u{0508}"."<br>";
            echo "\u{00a9}";
        ?>
    </div>
</body>
</html>