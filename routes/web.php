<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\AttendanceController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/




//Routes to register student
Route::get('/register-student', [StudentController::class, 'showRegistrationForm'])->name('register.student.form');
Route::post('/register-student', [StudentController::class, 'store'])->name('students.store');

//Routes to Mark Attendance
Route::get('/mark-attendance', [AttendanceController::class, 'showAttendanceForm'])->name('mark.attendance');
Route::post('/save-attendance', [AttendanceController::class, 'saveAttendance'])->name('save.attendance');
Route::post('/confirm-attendance', [AttendanceController::class, 'markAttendance'])->name('confirm.attendance');

//Route to Dashboard
Route::get('/', [DashboardController::class, 'showDashboard'])->name('dashboard.index');