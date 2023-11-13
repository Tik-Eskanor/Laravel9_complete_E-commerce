<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CheckoutRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        // this is for guest checkout purpose. if the email the guest enters already exists then he already has an account. so he should login with that account email and password or create another account
        $emailVerification = auth()->user() ? ['email','required'] : ['required','email','unique:users'];

        return [
            'email'=>$emailVerification,
            'name'=>'required',
            'address'=>'required',
            'province'=>'required',
            'city'=>'required',
            'postalcode'=>'required',
            'phone'=>'required',
            'card_name'=>'required',
        ];
    }

    public function messages()
    {
        return [
            'email.unique' => 'You already have an account with this account. Please <a href="/login">login</a> to continue',
            // 'email.required' => 'Email is compulsory' //you can customise your error messages
        ];
    }
}
