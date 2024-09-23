<?php
defined('fromindex') or die;
class forms {
//    function __construct() {
//
//    }
    static function regNewUser () {
        $output='<table><form action="register.php" method="POST">';
        $output.='<tr><td><label for="Vorname">Vorname:</label></td>';
        $output.='<td><input type="text" id="Vorname" name="vorname" required></td></tr>';
        $output.='<tr><td><label for="Nachname">Nachname:</label></td>';
        $output.='<td><input type="Nachname" id="Nachname" name="Nachname" required></td></tr>';
        $output.='<tr><td><label for="Straße">Straße:</label></td>';
        $output.='<td><input type="Straße" id="Straße" name="Straße" required></td></tr>';
        $output.='<tr><td><label for="PLZ">PLZ:</label></td>';
        $output.='<td><input type="PLZ" id="PLZ" name="PLZ" required></td></tr>';
        $output.='<tr><td><label for="email">E-Mail:</label></td>';
        $output.='<td><input type="email" id="email" name="email" required></td></tr>';
        $output.='<tr><td><label for="password">Passwort:</label></td>';
        $output.='<td><input type="password" id="password" name="password" required></td></tr>';
        $output.='<tr><td><label for="repassword">Passwort wiederholen:</label></td>';
        $output.='<td><input type="password" id="repassword" name="repassword" required></td></tr>';
        $output.='<td><input type="submit" value="Registrieren"></td>';
        $output.='</form></table>';
        
        return $output;
    }
}