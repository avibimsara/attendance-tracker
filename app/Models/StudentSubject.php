<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StudentSubject extends Model
{
    protected $table = 'student_subject'; // Name of the intermediate table

    protected $fillable = ['student_id', 'subject_ids'];

    public $timestamps = false;
}
