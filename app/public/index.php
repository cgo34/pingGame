<?php
require __DIR__ . '/../vendor/autoload.php';
require_once '../vendor/sentry/sentry/lib/Raven/Autoloader.php';
Raven_Autoloader::register();

$client = new Raven_Client('https://0290e3aba31b41e1857eb4856a32d175:e188ae8427744498874c911969cd7b8e@sentry.io/257808');

$error_handler = new Raven_ErrorHandler($client);
$error_handler->registerExceptionHandler();
$error_handler->registerErrorHandler();
$error_handler->registerShutdownFunction();


// Register compteur
require '../class/compteur.php';
require '../class/count.php';

// Instantiate the app
$settings = require __DIR__ . '/../src/settings.php';
$app = new \Slim\App($settings);

$app->compteur = new compteur();

// Set up dependencies
require __DIR__ . '/../src/dependencies.php';
// Register middleware
require __DIR__ . '/../src/middleware.php';
// Register routes
require __DIR__ . '/../src/routes.php';

// Run app
$app->run();

$client->captureMessage('1 - Lancement de l\'application pingGame !');





