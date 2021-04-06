<?php

use Illuminate\Support\Facades\Route;
// Si se desea que toda la pagina sea reactiva, se llaman los
// componentes reactivos: 
use App\Http\Livewire\ShowPosts;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Se cambia la ruta original, de ser llamada por una funcion anonima
// a ser llamada por el POST.
// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//     return view('dashboard');
// })->name('dashboard');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', ShowPosts::class)->name('dashboard');



// --> Imprimir el nombre que se pasa por linea del Browser
// Route::get('prueba/{name}', ShowPosts::class);