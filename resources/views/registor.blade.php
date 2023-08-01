<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
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
                <!--"Student Registration" page content -->
                @if(session('success'))
                    <div style="background-color: #d4edda; color: #155724; padding: 10px;">
                        {{ session('success') }}
                    </div>
                @endif
                <h1>Student Registration</h1>
                <form method="POST" action="{{ route('students.store') }}">
                    @csrf
                    <div class="form-group">
                        <label for="registration_number">Registration Number:</label>
                        <input type="text" id="registration_number" name="registration_number" value="{{ old('registration_number') }}" required class="form-control">
                        @error('registration_number')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="fname">First Name:</label>
                        <input type="text" id="fname" name="fname" required class="form-control">
                        @error('fname')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="lname">Surname:</label>
                        <input type="text" id="lname" name="lname" required class="form-control">
                        @error('lname')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <h3>Select Subjects (minimum 3):</h3>
                        <div class="form-check">
                            <input type="checkbox" id="subject1" name="subjects[]" value="1" class="form-check-input">
                            <label for="subject1" class="form-check-label">Subject 1</label>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" id="subject2" name="subjects[]" value="2" class="form-check-input">
                            <label for="subject2" class="form-check-label">Subject 2</label>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" id="subject3" name="subjects[]" value="3" class="form-check-input">
                            <label for="subject3" class="form-check-label">Subject 3</label>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" id="subject4" name="subjects[]" value="4" class="form-check-input">
                            <label for="subject4" class="form-check-label">Subject 4</label>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" id="subject5" name="subjects[]" value="5" class="form-check-input">
                            <label for="subject5" class="form-check-label">Subject 5</label>
                        </div>
                        @error('subjects')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-primary">Register</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
