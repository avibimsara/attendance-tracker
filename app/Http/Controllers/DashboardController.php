<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;
use App\Models\StudentSubject;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function showDashboard(Request $request){
        
        $studentSubjects = StudentSubject::distinct('subject_ids')->get(['subject_ids']);

        $subjects = [];
        foreach ($studentSubjects as $studentSubject) {
            $subjectIds = json_decode($studentSubject->subject_ids, true);
            $subjects = array_merge($subjects, $subjectIds);
        }

        $subjects = array_unique($subjects);

        $startDate = $request->input('start_date', Carbon::now()->subDays(7)->startOfDay());
        $endDate = $request->input('end_date', Carbon::now()->endOfDay());
        $selectedSubject = $request->input('subject');

        // Convert the date strings to Carbon objects
        $startDate = Carbon::parse($startDate);
        $endDate = Carbon::parse($endDate);

        // Get the list of subjects from the database
        $studentSubjects = StudentSubject::distinct('subject_ids')->get(['subject_ids']);
        $subjects = [];
        foreach ($studentSubjects as $studentSubject) {
            $subjectIds = json_decode($studentSubject->subject_ids, true);
            $subjects = array_merge($subjects, $subjectIds);
        }
        $subjects = array_unique($subjects);

        // Get the list of students with their attendance data
        $students = Student::select('students.id', 'students.registration_number', 'students.fname', 'students.lname')
            ->selectRaw('COUNT(attendances.id) as total_attendances')
            ->selectRaw('SUM(CASE WHEN attendances.present = true THEN 1 ELSE 0 END) as total_present')
            ->leftJoin('attendances', function ($join) use ($startDate, $endDate, $selectedSubject) {
                $join->on('students.id', '=', 'attendances.student_id')
                    ->whereBetween('attendances.attendance_date', [$startDate, $endDate]);

                if ($selectedSubject) {
                    $join->where('attendances.subject_id', '=', $selectedSubject);
                }
            })
            ->groupBy('students.id', 'students.registration_number', 'students.fname', 'students.lname')
            ->paginate(10);

        // Calculating students' attendance percentage
        $students->each(function ($student) {
            $student->attendance_percentage = ($student->total_attendances > 0) ? ($student->total_present / $student->total_attendances) * 100 : 0;
        });

        // Filters form
        $filters = [
            'start_date' => $startDate->format('Y-m-d'),
            'end_date' => $endDate->format('Y-m-d'),
            'subject' => $selectedSubject,
        ];

        return view('dashboard', compact('subjects', 'students', 'filters'));
    }

}
