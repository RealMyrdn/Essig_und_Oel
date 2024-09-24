<?php
defined('fromindex') or die;
class forms {
//    function __construct() {
//
//    }
    static function regNewUser($fields) {
        // Inkrement-Zähler auf Null setzen
        $i=0;
        // Testen ob Seite via POST übergeben wurde, ansonsten Seite auf Start setzen
        $link = isset($_POST["link"]) ? $_POST["link"] : 'start';
        // Ersten Teil des Formulars in $output speichern
        $output='<h2>Registrieren:</h2><br>' . "\n" . '<table>' . "\n" . '<form action="index.php" method="POST">' . "\n" . '<input type="hidden" value="' . $link . '" name="link"><input type="hidden" value="1" name="check">' . "\n";
        while($fields[$i]) {
            // Testen ob das Formular bereits übermittelt wurde
            if(isset($_POST['check'])){
                // Falls ein leeres Feld übergeben wurde Warnung ausgeben
                $warning = (!isset($_POST[$fields[$i+1]]) || empty($_POST[$fields[$i+1]])) && $fields[$i+3]=='req' ? '<span style="color: red">Bitte füllen Sie dieses Feld aus!</span>' : '';
            } else {
                $warning = '';
            }
            // Ein Sternchen ausgeben, wenn es ein benötigtes Feld ist
            $required = $fields[$i+3]=='req' ? ' *' : '';
            // Label in $output speichern
            $output.='<tr><td><label for="' . $fields[$i] . '">' . $fields[$i] . $required . ':</td>';
            // Testen ob ein Inhalt für das Feld übergeben wurde und ggf einsetzen
            $value = isset($_POST[$fields[$i+1]]) ? $_POST[$fields[$i+1]] : '';
            // Eingabefeld in $output speichern
            $output.='<td><input type="' . $fields[$i+2] . '" id="' . $fields[$i] . '" name="' . $fields[$i+1] . '" value="' . $value . '"></td><td>' . $warning . '</td></tr>' . "\n";
            // Zähler auf Beginn des nächsten Datensatzes setzen
            $i=$i+4;
            // Wenn Zähler über die Größe des Arrays hinausgehen würde oder gleich ist While Loop abbrechen
            if($i>=count($fields)) {
                break;
            }
        }
        // Abschluss des Formulars in $output speichern
        $output.='<td><input type="submit" value="Registrieren"></td>' . "\n" . '</form>' . "\n" . '</table><br>' . "\n" . '<p>mit * gekennzeichnete Felder sind erforderlich';

        // $output.='<tr><td><label for="Vorname">Vorname:</label></td>';
        // $output.='<td><input type="text" id="Vorname" name="vorname" required></td></tr>';
        // $output.='<tr><td><label for="Nachname">Nachname:</label></td>';
        // $output.='<td><input type="text" id="Nachname" name="Nachname" required></td></tr>';
        // $output.='<tr><td><label for="Straße">Straße:</label></td>';
        // $output.='<td><input type="text" id="Straße" name="Straße" required></td></tr>';
        // $output.='<tr><td><label for="PLZ">PLZ:</label></td>';
        // $output.='<td><input type="text" id="PLZ" name="PLZ" required></td></tr>';
        // $output.='<tr><td><label for="email">E-Mail:</label></td>';
        // $output.='<td><input type="email" id="email" name="email" required></td></tr>';
        // $output.='<tr><td><label for="password">Passwort:</label></td>';
        // $output.='<td><input type="password" id="password" name="password" required></td></tr>';
        // $output.='<tr><td><label for="repassword">Passwort wiederholen:</label></td>';
        // $output.='<td><input type="password" id="repassword" name="repassword" required></td></tr>';
        
        return $output;
    }
}