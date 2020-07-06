<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Order;
class OrderController extends Controller
{
    public function index(){
        $data=Order::all();
        return view('order',compact('data'));
    }

    public function back(){
        return redirect ('/');
    }
    
    public function create(){
        $items = array(
            'itemlist' =>  DB::table('vendors')->get()
          );

          $items2 = array(
            'itemlist2' =>  DB::table('tags')->get()
          );

         return view('create', $items, $items2);
    }

    public function insert(Request $request){
        $data=new Order();
        $data->restaurant_name=$request->get('nama');
        $data->vendor_id=$request->get('vendor');
        $data->tag_id=$request->get('tag');
        $data->qty=$request->get('qty');
        $data->price=$request->get('price');
        $data->amount=$request->get('amount');
        $data->save();
        return redirect ('/');
    }

    public function delete($id){
        $data=Order::find($id);
        $data->delete();
        return back();
    }

    public function edit($id){
        $items = array(
            'itemlist' =>  DB::table('vendors')->get(),
            'itemlistx' =>  DB::table('tags')->get()
          );

        $data=Order::find($id);
        return view('edit',compact('data'), $items);
    }

    public function update(Request $request, $id){     
        $data = Order::findOrFail($id);
        $data->restaurant_name=$request->get('nama');
        $data->vendor_id=$request->get('vendor');
        $data->tag_id=$request->get('tag');
        $data->qty=$request->get('qty');
        $data->price=$request->get('price');
        $data->amount=$request->get('amount');
        $data->save();
        return redirect ('/')->with('alert-success','Data berhasil Diubah.');
    }

    public function read($id){
        $data=Order::find($id);
        return view('read',compact('data'));
    }
    
}