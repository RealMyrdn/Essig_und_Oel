<?php
defined('fromindex') or die;
class forms {
//    function __construct() {
//
//    }
    static function regNewUser() {
        $i=0;
        $fields = array("Vorname", "vorname", "text", "Nachname", "nachname", "text", "Strasse", "strasse", "text", "PLZ", "plz", "text", "Email", "email", "email", "Passwort", "password", "password", "Passwort wiederholen", "repassword", "password");
        $output='<table><form action="register.php" method="POST">';
        while($fields[$i]) {
            $output.='<tr><td><label for="' . $fields[$i] . '">' . $fields[$i] . ':</td>';
            $output.='<td><input type="' . $fields[$i+2] . '" id="' . $fields[$i] . '" name="' . $fields[$i+1] . '" required></td></tr>';
        }
        $i+3;
        $output.='<td><input type="submit" value="Registrieren"></td></form></table>';
        $output.='<td><input type="submit" value="Registrieren"></td></form></table>';

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