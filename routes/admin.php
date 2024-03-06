<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Admin Routes
|--------------------------------------------------------------------------
*/

Route::group(['middleware' => ['auth', 'is_admin'], 'prefix'=>'admin','as'=>'admin.'], function(){
    Route::get('/dashboard', [\App\Http\Controllers\Backend\DashboardController::class, 'dashboard'])->name('dashboard');
    /* --- TemplateController --- */
    Route::get('/templates', [\App\Http\Controllers\Backend\TemplateController::class, 'index'])->name('templates');
    Route::get('/templates/add', [\App\Http\Controllers\Backend\TemplateController::class, 'add'])->name('templates.add');
    Route::post('/templates/store', [\App\Http\Controllers\Backend\TemplateController::class, 'store'])->name('templates.store');
    Route::post('/templates/load', [\App\Http\Controllers\Backend\TemplateController::class, 'load'])->name('templates.load');
    Route::post('/templates/delete', [\App\Http\Controllers\Backend\TemplateController::class, 'delete'])->name('templates.delete');
    Route::get('/templates/edit/{Id}', [\App\Http\Controllers\Backend\TemplateController::class, 'edit'])->name('templates.edit');
    Route::post('/templates/update', [\App\Http\Controllers\Backend\TemplateController::class, 'update'])->name('templates.update');

    Route::get('/profile/edit', [\App\Http\Controllers\Backend\DashboardController::class, 'editProfile'])->name('profile-edit');
    Route::post('/profile/update', [\App\Http\Controllers\Backend\DashboardController::class, 'updateProfile'])->name('profile-update');
    Route::get('/logout', [\App\Http\Controllers\Backend\DashboardController::class, 'logout'])->name('logout');
});
