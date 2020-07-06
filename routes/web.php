<?php

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

/*
Route::get('/', function () {
    return view('order');
});
*/

Route::get('/','OrderController@index');

Route::get('back','OrderController@back');

Route::get('create','OrderController@create');

Route::post('insert', 'OrderController@insert');

Route::get('delete/{id}','OrderController@delete');

Route::get('edit/{id}','OrderController@edit');

Route::post('update/{id}', 'OrderController@update');

Route::get('read/{id}','OrderController@read');
