<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Models\Attendance;
use Illuminate\Http\Request;
use App\Models\StudentSubject;
use Illuminate\Support\Carbon;


class AttendanceController extends Controller
{
    public function showAttendanceForm()
    {
        $studentSubjects = StudentSubject::distinct('subject_ids')->get(['subject_ids']);

        $subjects = [];
        foreach ($studentSubjects as $studentSubject) {
            $subjectIds = json_decode($studentSubject->subject_ids, true);
            $subjects = array_merge($subjects, $subjectIds);
        }

        $subjects = array_unique($subjects);

        $students = [];

        return view('attendance', compact('subjects', 'students'));


    }

    public function saveAttendance(Request $request)
    {
        //validations
        $request->validate([
            'subject_id' => 'required|exists:student_subject,id',
            'attendance_date' => 'required|numeric|min:1|max:31',
            'attendance_month' => 'required|numeric|min:1|max:12',
            'attendance_year' => 'required|numeric|min:2020|max:' . date('Y'),
        ]);

        // Get all students related to the selected subject
        $subjectId = $request->input('subject_id');
        $students = Student::whereHas('studentSubjects', function ($query) use ($subjectId) {
            $query->where('subject_ids', 'LIKE', '%"'.$subjectId.'"%');
        })->get();
        
        $attendanceDate = Carbon::createFromDate(
            $request->input('attendance_year'),
            $request->input('attendance_month'),
            $request->input('attendance_date')
        );

        // Save attendance for the selected subject and students with the given date.
        
        $request->session()->put('subjectId', $subjectId);
        $request->session()->put('attendanceDate', $attendanceDate);

        return view('attendance', compact('students'));
    }

    public function markAttendance(Request $request) {
        $subjectId = $request->session()->get('subjectId');
        $attendanceDate = $request->session()->get('attendanceDate');
        
        // Get all students related to the selected subject
        $students = Student::whereHas('studentSubjects', function ($query) use ($subjectId) {
            $query->where('subject_ids', 'LIKE', '%"'.$subjectId.'"%');
        })->get();
    
        // Loop through all students and mark their attendance based on the checkboxes
        foreach ($students as $student) {
            $studentId = $student->id;
    
            // Determine if the student is present based on the checkbox
            $present = $request->input('attendance.'.$studentId) === 'on' ? 1 : 0;
    
            // Check if the attendance already exists for the same student, subject, and date
            $existingAttendance = Attendance::where([
                'student_id' => $studentId,
                'subject_id' => $subjectId,
                'attendance_date' => $attendanceDate,
            ])->first();
    
            if ($existingAttendance) {
                // If an attendance record already exists, show a warning message to the user
                session()->flash('warning', 'Attendance already marked for the student on the selected date. No changes were made.');
            } else {
                // If no attendance record exists, create a new one
                Attendance::create([
                    'student_id' => $studentId,
                    'subject_id' => $subjectId,
                    'attendance_date' => $attendanceDate,
                    'present' => $present,
                ]);
            }
        }
    
        $request->session()->forget('subjectId');
        $request->session()->forget('attendanceDate');
    
        return redirect()->route('mark.attendance')->with('success', 'Attendance marked successfully!');
    }
}
