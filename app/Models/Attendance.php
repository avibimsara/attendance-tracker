<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Attendance extends Model
{
    protected $fillable = ['student_id', 'subject_id', 'attendance_date', 'present'];

    // Defining relationships
    public function student()
    {
        return $this->belongsTo(Student::class, 'student_id');
    }

}
