<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mark Attendance</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Custom Styles for the Sidebar */
        .sidebar {
            background-color: #1c1a7e; 
            color: #1a237e; 
            height: 100vh; 
        }

        .sidebar a {
            padding: 16px;
            display: block;
            color: #1a237e;
            text-decoration: none;
        }

        .sidebar a:hover {
            background-color: #ffffff; 
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Left Sidebar (Vertical Menu) -->
            <div class="col-md-3 bg-light sidebar">
                <h1><a class="nav-link" href="{{ route('dashboard.index') }}">Dashboard</a></h1>
                <ul class="nav flex-column">
                    <li class="nav-item"><a class="nav-link" href="{{ route('register.student.form') }}">Student Registration Form</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{ route('mark.attendance') }}">Attendance Form</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{ route('dashboard.index') }}">Advanced Search</a></li>
                </ul>
            </div>
            <!-- Right Content Area -->
            <div class="col-md-9">
                <!-- "Mark Attendance" page content -->
                @if(session('success'))
                    <div style="background-color: #d4edda; color: #155724; padding: 10px;">
                        {{ session('success') }}
                    </div>
                @endif
                <h1>Mark Attendance</h1>
                @if($errors->has('attendance'))
                    <div class="alert alert-danger">
                        {{ $errors->first('attendance') }}
                    </div>
                @endif
                @if(isset($subjects))
                    <form method="POST" action="{{ route('save.attendance') }}">
                        @csrf
                        <label for="subject">Select Subject:</label>
                        <select id="subject" name="subject_id" required>
                            <option value="">Select a subject</option>
                            @foreach ($subjects as $subject)
                                <option value="{{ $subject }}">{{ $subject }}</option>
                            @endforeach
                        </select>

                        <label for="attendance_date">Select Date:</label>
                        <select id="attendance_date" name="attendance_date" required>
                            @for ($date = 1; $date <= 31; $date++)
                                <option value="{{ $date }}">{{ $date }}</option>
                            @endfor
                        </select>

                        <label for="attendance_month">Select Month:</label>
                        <select id="attendance_month" name="attendance_month" required>
                            @for ($month = 1; $month <= 12; $month++)
                                <option value="{{ $month }}">{{ date('F', mktime(0, 0, 0, $month, 1)) }}</option>
                            @endfor
                        </select>

                        <label for="attendance_year">Select Year:</label>
                        <select id="attendance_year" name="attendance_year" required>
                            @for ($year = 2025; $year >= 2023; $year--)
                                <option value="{{ $year }}">{{ $year }}</option>
                            @endfor
                        </select>

                        <button type="submit">Submit</button>
                    </form>
                @endif
                <!-- Display Students registered for relevant subject-->
                @if(isset($students))
                    <h2>Students Registered for Selected Subject:</h2>
                    <form method="POST" action="{{ route('confirm.attendance') }}">
                        @csrf
                        <input type="hidden" name="subject_id" value="{{ old('subject_id') }}">
                        <input type="hidden" name="attendance_date" value="{{ old('attendance_date') }}">
                        <input type="hidden" name="attendance_month" value="{{ old('attendance_month') }}">
                        <input type="hidden" name="attendance_year" value="{{ old('attendance_year') }}">
                
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Student Registration Number</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Attendance Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($students as $student)
                                    <tr>
                                        <td>{{ $student->registration_number }}</td>
                                        <td>{{ $student->fname }}</td>
                                        <td>{{ $student->lname }}</td>
                                        <td>
                                            <input type="checkbox" name="attendance[{{ $student->id }}]">
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                
                        <button type="submit" class="btn btn-primary">Mark as Present</button>
                    </form>
                @endif
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>