
# Attendance Tracker Application

## Introduction
This is a simple web application to track student attendance for different subjects.

## Prerequisites
Make sure you have the following installed on your system:
- PHP (>= 7.4)
- Composer (https://getcomposer.org/)

## Installation
1. Clone the repository or download the source code.

2. Navigate to the project directory in your terminal.

3. Run the following command to install the dependencies:
   
```bash
composer install
```
This will create vendor folder with all required packages and libraries needed by this app.

4. Create a new MySQL database for the application.

5. Open the `.env` file and set the database connection details.

6. Generate the application key:

```bash
php artisan key:generate
```
7. Run the database migrations to create the necessary tables:
```bash
php artisan migrate
```
8. Start the development server:
```bash
php artisan serve
```
9. Access the application in your web browser at `http://localhost:8000`.

## Usage
- Use the navigation menu on the left to access the "Student Registration Form," "Attendance Form," and "Advanced Search" features.
- In the "Student Registration Form," you can register new students and select their subjects.
- In the "Attendance Form," you can mark attendance for students for specific subjects and dates.
- The "Advanced Search" feature allows you to filter and view the attendance percentage of individual students based on date range and subject.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
