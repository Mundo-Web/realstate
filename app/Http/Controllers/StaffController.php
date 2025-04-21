<?php

namespace App\Http\Controllers;

use App\Models\Staff;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class StaffController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $staff = Staff::all();
        return view('pages.staff.index', compact('staff') );
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('pages.staff.create');
        
    }

    public function saveImg($file, $route, $nombreImagen){
		$manager = new ImageManager(new Driver());
		$img =  $manager->read($file);

		if (!file_exists($route)) {
			mkdir($route, 0777, true); // Se crea la ruta con permisos de lectura, escritura y ejecución
	}

		$img->save($route . $nombreImagen);
	}
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
     
        $request->validate([
            'nombre'=>'required',
        ]);

        $personal = new Staff();

        if($request->hasFile("youtube")){
            $nombreImagen = Str::random(10) . '_' . $request->file('youtube')->getClientOriginalName(); 
            $file =  $request->file('youtube');
            $route = 'storage/images/staff/';
            $this->saveImg($file, $route, $nombreImagen);
            $personal->youtube =  $route.$nombreImagen; 
        }

        $personal->nombre = $request->nombre;
        $personal->cargo = $request->cargo;
        $personal->facebook = $request->facebook;
        $personal->instagram = $request->instagram;
        $personal->twitter = $request->twitter;
        $personal->status = 1;
        $personal->save();

        return redirect()->route('staff.index')->with('success', 'Publicación creado exitosamente.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $staff = Staff::find($id);

        return view('pages.staff.edit', compact('staff'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        
        $request->validate([
            'nombre'=>'required',
        ]);

        $personal = Staff::find($id);

        try {
			
            if($request->hasFile("youtube")){
                $nombreImagen = Str::random(10) . '_' . $request->file('youtube')->getClientOriginalName(); 
                $file =  $request->file('youtube');
                $route = 'storage/images/staff/';
                $this->saveImg($file, $route, $nombreImagen);
                $personal->youtube =  $route.$nombreImagen; 
            }
    
			$personal->nombre = $request->nombre;
            $personal->cargo = $request->cargo;
            $personal->facebook = $request->facebook;
            $personal->instagram = $request->instagram;
            $personal->twitter = $request->twitter;
			$personal->save();

			return redirect()->route('staff.index')->with('success', 'Publicación creado exitosamente.');


		} catch (\Throwable $th) {
			return response()->json(['messge' => 'Verifique sus datos '], 400); 
		}

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function updateVisible(Request $request){
        $id = $request->id; 
        $stauts = $request->status; 
        $staff = Staff::find($id);
        $staff->status = $stauts; 

        $staff->save();
        return response()->json(['message'=> 'registro actualizado']);
    }
}
