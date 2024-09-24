<!-- Original html created by Paul Klein -->
<?php defined('fromindex') or die;
$fields = array("Vorname", "vorname", "text", "req", "Nachname", "nachname", "text", "req", "Strasse", "strasse", "text", "req", "PLZ", "plz", "text", "req", "Telefon", "telefon", "text", "notreq", "Email", "email", "email", "req", "Passwort", "password", "password", "req", "Passwort wiederholen", "repassword", "password", "req");
?>
    <body>
        <span id="0"></span>
        <div id="container">
            <header id="header" class="grid">
                <?php echo $build->getHeaderImage(); ?>
            </header>
            <nav id="topmenu" class="grid">
                <?php
                echo $menu->createMenu('menutop', 'ul', 'horizontal');
                ?>
            </nav>
            <aside id="sidebar" class="grid">
                <div class="sticky">
                    <h2>Menü</h2>
                    <?php echo $menu->createMenu('menuside', 'ul', 'vertical'); ?>
                    <?php echo $menu->getAnchorList() ?>
                </div>
            </aside>
            <main id="content" class="grid">
                <?php 
                echo '<h1>' . $build->getTitle() . '</h1>' . "\n";
                echo $build->getContent(); 
                ?>
            </main>
            <div id="extra" class="grid">
                <?php
                echo forms::regNewUser($fields);
                echo $build->getExtra();
                ?>
            </div>
            <footer id="footer" class="grid">
                <?php echo $build->getFooter() ."\n"; ?>
            </footer>
        </div>
    </body>