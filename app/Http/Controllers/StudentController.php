<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;
use App\Models\StudentSubject;
use Illuminate\Validation\Rule;
use App\Rules\ValidRegistrationNumber;

class StudentController extends Controller
{
    public function showRegistrationForm()
    {
    
        return view ('registor');
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'registration_number' => ['required', Rule::unique('students', 'registration_number'), new ValidRegistrationNumber],
            'fname' => 'required|alpha|min:3|max:12',
            'lname' => 'required|alpha|min:3|max:12',
            'subjects' => 'required|array|min:3',
        ], 
        
            ['subjects.min' => 'Please select at least three subjects, Student must be enrolled in atleast 3 subjects.',
            
        ]);

        //Create queries
        $student = Student::create([
            'registration_number' => $validatedData['registration_number'],
            'fname' => $validatedData['fname'],
            'lname' => $validatedData['lname'],
        ]);

        StudentSubject::create([
            'student_id' => $student->id,
            'subject_ids' => json_encode($validatedData['subjects']), // Serialize the array to JSON
        ]);

        return redirect()->route('register.student.form')->with('success', 'Student registered successfully!');
    }
}

