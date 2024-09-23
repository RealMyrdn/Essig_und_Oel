<?php
include $_SERVER['DOCUMENT_ROOT'] . "/methods/database.class.php";
include $_SERVER['DOCUMENT_ROOT'] . "/methods/builder.class.php";
include $_SERVER['DOCUMENT_ROOT'] . "/methods/menus.class.php";
$build = new builder();
$menu = new menus();
?>
<!-- Original html created by Paul Klein -->
<!DOCTYPE html>
<html lang="<?php echo LANG_SET; ?>">
    <head>
        <title><?php echo $build->getTitle(); ?></title>
        <?php echo $build->getMetaData(); ?>
    </head>
    <?php include TEMPL_PATH . 'index.php'; ?>
</html>