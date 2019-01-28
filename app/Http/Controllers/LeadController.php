<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Ixudra\Curl\Facades\Curl;
use App\User;

class LeadController extends Controller
{
    public function __construct() {
        $this->middleware('auth:api')->except('show');
    }

    
    public function index(Request $request)
    {
        $user_details = auth()->user();
        
        $get_leads = Curl::to('https://www.zohoapis.com/crm/v2/Leads')
                ->withContentType('application/json')
                ->withHeader( 'Authorization: Bearer '. $user_details->zoho_token )
                ->get();
        
        $get_leads = json_decode($get_leads);
        
        //revoke zoho_auth_token using zoho_refresh_token
        if (property_exists($get_leads, 'code'))  {
            $revoked_token = $this->revokeToken($get_leads->code, $user_details);
            $get_leads = Curl::to('https://www.zohoapis.com/crm/v2/Leads')
                    ->withContentType('application/json')
                    ->withHeader('Authorization: Bearer ' . $revoked_token)
                    ->get();
            return response()->json(['All Leads' => $get_leads, 'revoked token' => $revoked_token]);
        }
        
        return response()->json(['User detials' => $user_details, 'All Leads' => $get_leads],200);
    }
    
    
    //Getting lead by its Id.
    public function getLeadById(Request $request){
        
        $user = auth()->user()->zoho_token;
        
        $lurl = 'https://www.zohoapis.com/crm/v2/Leads/'.$request->id;
        $get_lead = Curl::to($lurl)
                //->withContentType('application/json')
                ->withHeader( 'Authorization: Bearer '. $user )
                ->get();
        return response()->json(['Lead'=>json_decode($get_lead), 'id'=>$request->id, 'url'=>$lurl],200);
    }
    
    //Insert Lead 
    public function insertLead(Request $request){
        $user = auth()->user()->zoho_token;
        
        $c_response = Curl::to('https://www.zohoapis.com/crm/v2/Leads')
                ->withContentType('application/json')
                ->withData( array( 'data' => $request->data ) )
                ->withHeader( 'Authorization: Bearer '. $user )
                ->asJson()
                ->post();
        return response()->json([//'sent data'=>$request->data, 
            'zoho-resonse'=>$c_response]);
        //return response()->json(['Lead'=>json_decode($c_response), 'url'=>$lurl],200);
    }
    
    //Revoke Zoho Token using Refresh token
    
    public function revokeToken($code, $user_details) {
        if ($code == 'INVALID_TOKEN') {
            
            //request to revoke token
            $revoke_token = Curl::to('https://accounts.zoho.com/oauth/v2/token')
                    //->withContentType('application/json')
                    ->withData(array('client_id' => $user_details->client_id,
                        'client_secret' => $user_details->client_secret,
                        'refresh_token' => $user_details->zoho_refresh_token,
                        'grant_type' => 'refresh_token'))
                    ->post();

            $revoke_token = json_decode($revoke_token);

            //update zoho_token in users table
            $user = User::find($user_details->id);
            $user->zoho_token = $revoke_token->access_token;
            $user->save();
            
            return $revoke_token->access_token;
        }
    }

}
