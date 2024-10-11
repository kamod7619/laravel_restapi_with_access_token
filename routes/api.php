<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware(['handleSanctum'])->group(function () {
    Route::get('/products', [App\Http\Controllers\ProductController::class, 'index']);
});

Route::post('/register', [App\Http\Controllers\HandleController::class, 'register']);
Route::post('/login', [App\Http\Controllers\HandleController::class, 'login'])->name('login');
Route::get('/', [App\Http\Controllers\HandleController::class, 'login']);


