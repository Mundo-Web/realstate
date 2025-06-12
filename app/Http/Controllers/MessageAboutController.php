<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Message;

class MessageAboutController extends Controller
{
    public function index()
    {
        $mensajes = Message::where('status' , '=', 1 )->where('source' , '=', 'trabajaconnosotros')->orderBy('created_at', 'DESC')->get();
        return view('pages.messageabout.index', compact('mensajes'));
    }

    public function show($id)
    {
        $message = Message::findOrFail($id);
        $message->is_read = 1; 
        $message->save();

        return view('pages.messageabout.show', compact('message'));
    }


    public function borrar(Request $request)
    {
        $mensaje = Message::find($request->id);
        $mensaje->status = 0; 
        $mensaje->save();

        return response()->json(['success' => true]);
    }
}
