<?php

  $host = "localhost"; /* IP address (for MAMP, use "localhost") */
  $db = "week03"; /* database name */
  $un = "root"; /* username (for MAMP, use "root") */
  $pw = "root"; /* password (for MAMP, use "root") */

  try {

    $conn = new PDO("mysql:host=;dbname=$db", $un, $pw);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected Successfully";

  } catch(PDOException $e) {

    echo "Connection Failed: " . $e->getMessage();

  }

  $query = "SELECT * FROM /* week03 table name */";

  echo "<ol>";

  foreach ($conn->query($query) as $val) {
    echo "<li>" . $val[/* 'column name' */] . "</li>";
  }

  echo "</ol>";

?>
