<?php

use App\Models\Job;
use App\Models\Law;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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
    $jobs = Job::all();
    $laws = Law::all()->random(3);
    $images = \File::allFiles(public_path('storage/gallery'));
    return view('welcome', ['jobs' => $jobs, 'laws' => $laws, 'galleries' => $images]);
});

Route::get('/jobs', function () {
    $jobs = \App\Models\Job::all();
    $locations = \App\Models\Location::all();
    return view('job', ['jobs' => $jobs, 'locations' => $locations]);
});

Route::get('/laws', function () {
    $laws = \App\Models\Law::all();
    return view('law', ['laws' => $laws]);
});
Route::get('/laws/{id}', function ($id) {
    $laws = \App\Models\Law::all();
    $law = \App\Models\Law::find($id);
    if (!$law) return abort(404);
    return view('law_details', ['law' => $law, 'laws' => $laws]);
});
Route::get('/jobs/{id}', function ($id) {
    $jobs = \App\Models\Job::all();
    $job = \App\Models\Job::find($id);
    if (!$job) return abort(404);
    return view('job_details', ['job' => $job, 'jobs' => $jobs]);
});


Route::get('/contact', function () {
    return view('contact');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});



Route::post('/send-mail', function (Request $req) {


    $details = [
        'name'=>$req->name,
        'email'=>$req->email,
        'phone'=>$req->phone,
        'subject'=>$req->subject,
        'message'=>$req->message,
        'title' => 'Mail from Womanempowerment',
        'body' => 'Details'
    ];

    \Mail::to('vaghsureshd01@gmail.com')->send(new \App\Mail\MyMail($details));

//    dd("Email is Sent.");
    return view('emails.thankyou');
});
