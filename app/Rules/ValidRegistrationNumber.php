<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class ValidRegistrationNumber implements Rule
{
    public function passes($attribute, $value)
    {
        // Check if the registration number starts with "2023" and has a maximum of 3 more digits
        return preg_match('/^2023\d{0,3}$/', $value) === 1;
    }

    public function message()
    {
        return 'The :attribute must start with "2023" and have a maximum of 3 more digits.';
    }
}
