<?php
defined('fromindex') or die;
class database {
    private $connection;
    // Konstruktor zum Herstellen der Verbindung
    public function __construct() {
        require $_SERVER['DOCUMENT_ROOT']  . "/methods/inc/config.inc.php";
        $this->connection = new mysqli($conHost.':'.$conPort, $conUser, $conPass, $conData);
        if ($this->connection->connect_error) {
            die("Verbindung fehlgeschlagen: " . $this->connection->connect_error);
        }
    }
    // Methode zum Ausführen von Abfragen
    public function dbQuery($sql) {
        $result = $this->connection->query($sql);
        if ($result === false) {
            return false;
        }
        $output = [];
        while ($row = $result->fetch_assoc()) {
            $output[] = $row;
        }
        return $output;
    }
    // Methode zum Schließen der Verbindung
    public function dbClose() {
        $this->connection->close();
    }
}
?>