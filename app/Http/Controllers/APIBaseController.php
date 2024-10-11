<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class APIBaseController extends Controller
{
    public function sendResponse($result, $message)
    {
        header('Access-Control-Allow-Origin: *');
        header('Content-Type: application/json; charset=UTF-8');
        header('HTTP/1.1 200 OK');
        
        $response = [
            'success' => true,
            'data'    => $result,
            'message' => $message,
        ];
        return response()->json($response, 200);

    }//end sendResponse()

    public function sendError($error, $errorMessages=[], $code=404)
    {
        header('Access-Control-Allow-Origin: *');
        header('Content-Type: application/json; charset=UTF-8');
        header("HTTP/1.1 $code OK");
        $response = [
            'success' => false,
            'message' => $error,
        ];
        if (!empty($errorMessages)) {
            $response['data'] = $errorMessages;
        }

        return response()->json($response, 200);

    }//end sendError()
}
