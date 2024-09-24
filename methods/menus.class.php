<?php
defined('fromindex') or die;
class menus {
    private $activePage;
    private $xmlDetails;
    public function __construct() {
        $this->activePage = $_POST["link"] ?? $this->activePage = 'start';
        $this->xmlDetails = simplexml_load_file(TEMPL_PATH . 'xml/structure.xml'); // Interner XML Parser wird benutzt um die Daten aus der structure.xml zu extrahieren
    }
    public function createMenu($menuName, $listType, $menuDirection) {
        $i = 0;
        $listClass = $menuDirection=='vertical' ? ' class="vertical"' : ' class="horizontal"';
        $output = $listType=='ul' ? '<ul id="' . $menuName . '"' . $listClass . '>' . "\n" : '<ol id="' . $menuName . '"' . $listClass . '>' . "\n"; 
        while ($this->xmlDetails->page[$i]) {
            if ($this->activePage == $this->xmlDetails->page[$i]->link) {
                $classActive = ' active';
                $disabled = 'disabled';
            } else {
                $classActive = '';
                $disabled = '';
            }
            $output .= "\t\t\t\t\t" . '<li>' . "\n\t\t\t\t\t\t" . '<form style="display: none" id="' . $this->xmlDetails->page[$i]->link . '" action="index.php" method="post">' . "\n\t\t\t\t\t\t\t" . '<input title="link" name="link" value="' . $this->xmlDetails->page[$i]->link . '">' . "\n\t\t\t\t\t\t" . '</form>' . "\n\t\t\t\t\t\t" . '<button class="' . $menuName . 'Btn' . $classActive . '" form="' . $this->xmlDetails->page[$i]->link . '" type="submit" value="send" ' . $disabled . '>' . $this->xmlDetails->page[$i]->name . '</button>' . "\n\t\t\t\t\t" . '</li>' . "\n";
            $i++;
        }
        $output .= $listType=='ul' ? "\t\t\t\t" . '</ul>' . "\n" : "\t\t\t\t" . '</ol>' . "\n";
        return $output;
    }
    public function getAnchorList() {
        $output = '<h2>Sprungmarken</h2>' . "\n\t\t\t\t\t\t" . '<ul>' . "\n";
        $dbQuery = new database();
        $i = 1;
        foreach ($dbQuery->dbQuery('SELECT `heading` FROM `content` WHERE `page` = "'. $this->activePage .'" AND `container` = "main" ORDER BY `cont_order`') as $anchor) {
            $output .= "\t\t\t\t\t\t\t" . '<li class="anchorlist">' . "\n\t\t\t\t\t\t\t\t" . '<a class="anchor" href="#' . $i . '">' . $anchor['heading'] . '</a>' . "\n\t\t\t\t\t\t\t" . '</li>' . "\n";
            $i++;
        }
        $dbQuery->dbClose();
        $output .= "\t\t\t\t\t\t\t" . '<br>' . "\n\t\t\t\t\t\t\t" . '<li class="anchorlist">' . "\n\t\t\t\t\t\t\t\t" . '<a class="anchor" href="#0">nach oben</a>' . "\n\t\t\t\t\t\t\t" . '</li>' . "\n\t\t\t\t\t\t" . '</ul>' . "\n";
        return $output;
    }
}
?>