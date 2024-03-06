<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

//Login
Route::post('/login', [\App\Http\Controllers\API\APIController::class, 'login']);

/* Auth Protected APIs */
Route::group(['middleware' => 'auth:sanctum'], function(){
    // Logout
     Route::post('/logout', [\App\Http\Controllers\API\APIController::class, 'logout']);
    // Posts
    Route::post('/create-feedback', [\App\Http\Controllers\API\APIController::class, 'createFeedback']);
    Route::get('/get-feedback', [\App\Http\Controllers\API\APIController::class, 'getFeedbacks']);
});

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
