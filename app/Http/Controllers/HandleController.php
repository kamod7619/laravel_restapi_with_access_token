<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class HandleController extends APIBaseController
{
   
    public function login(Request $request)
    {
        try
        {
            
            $rules     = [
                'email' => 'required|string|email',
                'password' => 'required|string',
            ];

            $validator = Validator::make($request->all(), $rules);
            if ($validator->fails()) {
                $errors = $validator->errors();
                return $this->sendError("Validation error.", $errors, 400);
                
            }

            $data=['email'=>$request->email,'password'=>$request->password];
            if (Auth::attempt($data)) {
                
                $user = Auth::user();
                $token = $user->createToken('auth_token')->plainTextToken;
    
                return $this->sendResponse(['access_token' => $token,'token_type' => 'Bearer'], 'Login successful');

            }else{
                return $this->sendError("Invalid credentials.");
            }   
           
        } catch (\Exception $e) {
            info($e->getMessage());
            info($e->getLine());
            return $this->sendError("Something went wrong, Please try again.", $e->getMessage(), 400);
        }
        
    }

    public function register(Request $request)
    {
       
        try
        {
            
            $rules     = [
                'name' => 'required|string|max:255',
                'email' => 'required|string|email|max:255|unique:users',
                'password' => 'required|string|min:6',
            ];

            $validator = Validator::make($request->all(), $rules);
            if ($validator->fails()) {
                $errors = $validator->errors();
                return $this->sendError("Validation error.", $errors, 400);
                
            }

            $user = User::create([
                'name' => $request['name'],
                'email' => $request['email'],
                'password' => Hash::make($request['password']),
            ]);

            return $this->sendResponse($user, 'Registration successfully!');
           

        } catch (\Exception $e) {
            info($e->getMessage());
            info($e->getLine());
            return $this->sendError("Something went wrong, Please try again.", $e->getMessage(), 400);
        }
        
    }

    
}
