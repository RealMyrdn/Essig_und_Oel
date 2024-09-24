<?php
defined('fromindex') or die;
class builder {
    private $template;
    private $activePage;
    private $xmlDetails;
    public function __construct() {
        require $_SERVER["DOCUMENT_ROOT"] ."/methods/inc/config.inc.php";
        $this->template = $template; // Speichert die Variable $template in die Object-Variable
        $this->activePage = $_POST["link"] ?? $this->activePage = 'start'; // Überprüfen ob eine Variable per POST übergeben wurde ansonsten auf start setzen
        $this->xmlDetails = simplexml_load_file(TEMPL_PATH . 'xml/structure.xml'); // Den Inhalt der structure.xml in die Object-Variable $xmlDetails laden  
    }
    public function getTitle() {
        $i = 0;
        while ($this->xmlDetails->page[$i]) {
            if ($this->activePage == $this->xmlDetails->page[$i]->link) {
                $output = $this->xmlDetails->page[$i]->title;
                break; // Beendet den while-Loop sobald die IF Klausel zutrifft
            }
            $i++;
        }
        return $output;
    }
    public function getMetaData() {
        $i = 0;
        while ($this->xmlDetails->page[$i]) {
            if ($this->activePage == $this->xmlDetails->page[$i]->link) {
                $output = '<meta charset="UTF-8">' . "\n\t\t" . '<meta name="viewport" content="width=device-width, initial-scale=1.0">' . "\n\t\t" . '<link href="./templates/' . $this->template . '/css/stylesheet.css" type="text/css" rel="stylesheet">' . "\n\t\t";
                $output .= '<meta name="author" content="' . $this->xmlDetails->page[$i]->author . '">' . "\n\t\t";
                $output .= '<meta name="description" content="' . $this->xmlDetails->page[$i]->description . '">' . "\n\t\t";
                $output .= '<meta name="keywords" content="' . $this->xmlDetails->page[$i]->keywords . '">' . "\n";
                break;
            }
            $i++;
        }
        return $output;
    }
    public function getHeaderImage() {
        $i = 0;
        while ($this->xmlDetails->page[$i]) {
            if ($this->activePage == $this->xmlDetails->page[$i]->link) {
                $output = '<img src="' . './templates/' . $this->template . '/' . $this->xmlDetails->page[$i]->header->img . '" alt="' . $this->xmlDetails->page[$i]->header->alt . '" title="' . $this->xmlDetails->page[$i]->header->title . '">' . "\n";
                break;
            }
            $i++;
        }
        return $output;
    }
    public function getContent() {
        $output = (string) NULL;
        $dbQuery = new database();
        $i = 1;
        foreach ($dbQuery->dbQuery('SELECT `heading`, `content` FROM `content` WHERE `page` = "'. $this->activePage .'" AND `container` = "main" ORDER BY `cont_order`') as $result) {
            if(isset($result['heading'])) {
                $heading = '<h2 id="' . $i . '">' . $result['heading'] . '</h2>';
            } else {
                $heading = '';
            }
            $output .= "\t\t\t\t\t" . $heading . "\n" . "\t\t\t\t\t" . '<p>' . $result['content'] . '</p>' . "\n";
            $i++;
        }
        $output .= "\t\t\t\t\t" . '<a class="anchor" href="#0">nach oben</a>' . "\n";
        $dbQuery->dbClose();
        return $output;
    }
    public function getExtra() {
        $output = (string) NULL;
        $dbQuery = new database();
        $i = 1;
        foreach ($dbQuery->dbQuery('SELECT `heading`, `content` FROM `content` WHERE `page` = "'. $this->activePage .'" AND `container` = "extra" ORDER BY `cont_order`') as $result) {
            $output .= "\t\t\t\t\t" . '<h2 id="' . $i . '">' . $result['heading'] . '</h2>' . "\n" . "\t\t\t\t\t" . '<p>' . $result['content'] . '</p>' . "\n";
            $i++;
        }
        $dbQuery->dbClose();
        return $output;
    }
    public function getFooter() {
        $output = '<p>&copy;Essig & Öl ' . date('Y') . ' (original design by Paul Klein)</p>';
        return $output;
    }
}
?>