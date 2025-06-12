<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Message;

class MessageSellController extends Controller
{
    public function index()
    {
        $mensajes = Message::where('status' , '=', 1 )->where('source' , '=', 'vendeoalquila')->orderBy('created_at', 'DESC')->get();
        return view('pages.messagesell.index', compact('mensajes'));
    }

    public function show($id)
    {
        $message = Message::findOrFail($id);
        $message->is_read = 1;
        $message->save();

        return view('pages.messagesell.show', compact('message'));
    }


    public function borrar(Request $request)
    {
        $mensaje = Message::find($request->id);
        $mensaje->status = 0; 
        $mensaje->save();

        return response()->json(['success' => true]);
    }
}
