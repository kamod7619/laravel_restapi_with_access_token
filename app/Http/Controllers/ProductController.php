<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends APIBaseController
{
    public function index()
    {
       try
       {

           $products = Product::all();
           return $this->sendResponse($products, 'Products get successfully!');
       } catch (\Exception $e) {
            info($e->getMessage());
            info($e->getLine());
            return $this->sendError("Something went wrong, Please try again.", $e->getMessage(), 400);
        }

        
    }
}
