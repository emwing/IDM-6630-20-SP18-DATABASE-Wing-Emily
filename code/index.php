<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Emily's Favorite Music Albums</title>

    <meta name="author" content="Emily Wing">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="css/normalize.css">
    <link href="https://fonts.googleapis.com/css?family=Monoton|PT+Sans|PT+Serif" rel="stylesheet">
    <link rel="stylesheet" href="css/css.css">

  </head>
  <body>

    <div class="pageWrap">
      <header>
        <?php echo "<h1>Emily Wings's Top 10 Albums</h1>"; ?>
        <?php echo "<h2>(hover over the album covers to see their info)</h2>"; ?>
      </header>

      <div id="albumContainers">

        <?php

          $host = "localhost"; /* IP address (for MAMP, use "localhost") */
          $db = "week03"; /* database name */
          $un = "root"; /* username (for MAMP, use "root") */
          $pw = "root"; /* password (for MAMP, use "root") */

          try {

            $conn = new PDO("mysql:host=;dbname=$db", $un, $pw);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

          } catch(PDOException $e) {

            echo "Connection Failed: " . $e->getMessage();
          }

          $query = "SELECT * FROM albums";

          foreach ($conn->query($query) as $val) {

            echo "<div id='album" . $val["id"] . "' class='albumItem'>";

              echo "<div class='albumInfo'>";

                echo "<ul>"; // make a list for each info item

                  echo "<li class='listTitle'>Album Title: </li>";

                  echo "<li>" . $val["title"] . "</li>"; // album title

                  echo "<li class='listTitle'>Artist: </li>";

                  echo "<li>" . $val["artist"]."</li>"; // album artist

                  echo "<li class='listTitle'>Year Released: </li>";

                  echo "<li>" . $val["year"] . "</li>"; // album year

                echo "</ul>";

              echo "</div> <!-- ends .albumInfo -->";

              echo "<img src='" . $val["cover"] . "' alt='" . $val["title"] . " Cover' class='albumCover'>"; // get image w/alt tag

            echo "</div> <!-- ends #album" . $val["id"]."-->";

          } // ends foreach

        ?>

      </div> <!-- ends #albumContainer -->

      <footer>
        <p>&copy;2018 Emily Wing</p>
      </footer>

    </div> <!-- ends .pageWrap -->

  </body>
</html>
