<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dashboard</title>
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
                <div class="container mt-3">
                    <h2>Advanced Search and Filters</h2>
                    <!--the search form and filters -->
                    <form action="{{ route('dashboard.index') }}" method="GET" class="mb-3">
                        <div class="form-row">
                            <div class="col-md-3">
                                <label for="start_date">Start Date:</label>
                                <input type="date" name="start_date" id="start_date" class="form-control" value="{{ $filters['start_date'] ?? '' }}">
                            </div>
                            <div class="col-md-3">
                                <label for="end_date">End Date:</label>
                                <input type="date" name="end_date" id="end_date" class="form-control" value="{{ $filters['end_date'] ?? '' }}">
                            </div>
                            <div class="col-md-3">
                                <label for="subject">Select Subject:</label>
                                <select id="subject" name="subject" class="form-control">
                                    <option value="">All Subjects</option>
                                    @foreach ($subjects as $subject)
                                        <option value="{{ $subject }}" {{ ($filters['subject'] ?? '') == $subject ? 'selected' : '' }}>{{ $subject }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3 mt-md-4">
                                <button type="submit" class="btn btn-primary btn-block">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="container">
                    <h2>Attendance List</h2>
                    <!-- Displaying the attendance list  -->
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Student Registration Number</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Attendance Percentage</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($students as $student)
                                <tr>
                                    <td>{{ $student->registration_number }}</td>
                                    <td>{{ $student->fname }}</td>
                                    <td>{{ $student->lname }}</td>
                                    <td>{{ number_format($student->attendance_percentage, 2) }}%</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                    {{ $students->links() }}
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>