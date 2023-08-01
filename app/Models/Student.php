<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Student extends Model
{
    protected $fillable = ['registration_number', 'fname', 'lname'];
    
    public function getSubjectIdsAttribute()
    {
        return $this->subjects->pluck('subject_id')->toArray();
    }

    //Defining relationship with students 
    public function studentSubjects()
    {
        return $this->hasMany(StudentSubject::class, 'student_id');
    }
}
