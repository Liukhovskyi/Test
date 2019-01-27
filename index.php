<?php


// FRONT CONTROLLER


// 1. General settings
    ini_set('display_errors',1);
    error_reporting(E_ALL);


// 2. Connection of system files

    define('ROOT', dirname(__FILE__));
    require_once (ROOT.'/components/Router.php');
    require_once (ROOT.'/components/Db.php');



// 4. Call Router

    $router = new Router();
    $router->run();

