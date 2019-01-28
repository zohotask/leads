<?php

use Illuminate\Http\Request;

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

Route::post('login', 'PassportController@login');
Route::post('register', 'PassportController@register');
Route::get('leads', 'LeadController@index');
Route::post('leads/{id}', 'LeadController@getLeadById');
Route::post('insertLead', 'LeadController@insertLead');

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
    
    //Route::resource('leads', 'LeadController');
});
