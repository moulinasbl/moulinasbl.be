<?php

// Load environment variables from file only on development environments
$devEnvironments = ['local', 'dev'];
$currentEnv = getenv('GENERAL_ENVIRONMENT');
if( $currentEnv === false || in_array( $currentEnv, $devEnvironments ) ) {
    // Load composer's autoloader
    require_once(realpath(__DIR__ . '/../vendor/autoload.php'));

    // Load environment variables from .env
    try {
        $dotenv = new Dotenv\Dotenv(realpath(__DIR__ . '/../'));
        $dotenv->load();
        $dotenv->required(['DB_HOST', 'DB_NAME', 'DB_USER', 'DB_PASS']);
    } catch (Exception $e) {
        exit('Could not find a .env file.');
    }
}