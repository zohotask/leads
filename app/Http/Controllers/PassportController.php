<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Ixudra\Curl\Facades\Curl;
use App\User;
use Illuminate\Support\Facades\Validator;

class PassportController extends Controller
{
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
           'email' => 'required|email|unique:users',
           'name' => 'required|string',
           'password' => 'required',
           'client_id' => 'required|unique:users',
           'client_secret' => 'required',
           'scope' => 'required',
           'ruri' => 'required',
           'purl' => 'required'
       ]);
        
       if ($validator->fails()) {
           return response()->json(['error'=>$validator->messages()]);
       }
       
       $response = Curl::to($request->purl)
        ->post();
        $res = json_decode($response);
        
        if (!empty($res->refresh_token) ){
            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => bcrypt($request->password),
                'client_id' => $request->client_id,
                'client_secret' => $request->client_secret,
                'scope' => $request->scope,
                'ruri' => $request->ruri,
                'zoho_token' => $res->access_token,
                'zoho_refresh_token' => $res->refresh_token
            ]);
        } else {
            return response()->json(['message' => 'Token not received from zoho', 'result' => $res], 200);
        }
        $token = $user->createToken('ZohoTask')->accessToken;
 
        return response()->json([//'token' => $token, 
            'Zoho Response' => $res,
            'status' => 200,
            'token' => $token
            ], 200);
    }
 
    
    /**
     * Handles Login Request
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
           'email' => 'required|email',
           'password' => 'required'
        ]);
        
       if ($validator->fails()) {
           return response()->json(['error'=>$validator->messages()]);
       }
        
        $credentials = [
            'email' => $request->email,
            'password' => $request->password
        ];
 
        if (auth()->attempt($credentials)) {
            $token = auth()->user()->createToken('ZohoTask')->accessToken;
            return response()->json(['token' => $token], 200);
        } else {
            return response()->json(['error' => 'UnAuthorised'], 401);
        }
    }
 
    /**
     * Returns Authenticated User Details
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function details()
    {
        return response()->json(['user' => auth()->user()], 200);
    }
}
