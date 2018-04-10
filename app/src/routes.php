<?php

use Slim\Http\Request;
use Slim\Http\Response;




// Routes
$app->get('/', function (Request $request, Response $response, $args) use ($app) {
    // Sample log message
    // $this->logger->info("Slim-Skeleton '/' route");
    $response->write(json_encode(array('message' => 'Hello World')));
    return $response;

});

$app->get('/ping', function (Request $request, Response $response, $args) use ($app)  {

    $app->compteur->increment();

    $response->write(json_encode(array('message' => 'pong','countPing' =>  $app->compteur->count)));
    return $response;
});

$app->get('/count', function (Request $request, Response $response, array $args) use ($app) {


    $response->write(json_encode(array('pingCount' => $app->compteur->getCount())));

    return $response;
});
