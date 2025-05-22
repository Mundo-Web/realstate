<?php

namespace App\Jobs;

use App\Models\Category;
use App\Models\ClientLogos;
use App\Models\Galerie;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use App\Models\Products;
use App\Models\Specifications;
use App\Models\SubCategory;
use App\Models\Tag;
use App\Models\Staff;
use App\Models\District;

use Illuminate\Support\Str;
use SoDe\Extend\File;
use SoDe\Extend\JSON;
use SoDe\Extend\Text;

class SaveItems implements ShouldQueue
{
  use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

  private array $items;
  private string $image_route_pattern;

  public function __construct(array $items, string $image_route_pattern)
  {
    $this->items = $items;
    $this->image_route_pattern = $image_route_pattern;
  }

  public function handle()
  {

    $path2search = "./storage/images/productos/";
    $path2cot = "storage/images/cotizacion/";

    $images = [];
    try {
      $images = File::scan($path2search);
    } catch (\Throwable $th) {
      dump($th->getMessage());
    }

    try {
      Category::where('visible', 1)->update(['visible' => 0]);
      SubCategory::where('visible', 1)->update(['visible' => 0]);
    } catch (\Throwable $th) {
      dump($th->getMessage());
    }

    try {
      Specifications::whereNotNull('id')->delete();
      Galerie::whereNotNull('id')->delete();
      Staff::whereNotNull('id')->delete();
      Products::truncate();

      $spCount = Specifications::count();
      $glCount = Galerie::count();
      $prCount = Products::count();
      $stCount = Staff::count();

      dump("Specifications: {$spCount}
      Galerie: {$glCount}
      Productos: {$prCount}
      Staff: {$stCount}
      ");

      DB::statement('ALTER TABLE specifications AUTO_INCREMENT = 1');
      DB::statement('ALTER TABLE galeries AUTO_INCREMENT = 1');
      DB::statement('ALTER TABLE products AUTO_INCREMENT = 1');

    } catch (\Throwable $th) {
      dump('Error: ' . $th->getMessage());
    }

    dump('Inició la carga masiva: ' . count($this->items) . ' items');

    foreach ($this->items as $item) {
      try {
        $imageRoute = \str_replace('{1}', $item[1], $this->image_route_pattern);
        // $imageRoute = \str_replace('{8}', $item[8], $imageRoute);

        //$productImages = \array_filter($images, fn($image) => Text::startsWith($image, $imageRoute));

        $productImages = array_filter($images, function ($image) use ($item) {
          // Por ejemplo, $item[1] = 'MP0112'
          return preg_match('/^' . preg_quote($item[1], '/') . '(_\d+)?\./', $image);
        });

        // Searching or Creating a Category
        $categoryJpa = Category::updateOrCreate([
          'name' => $item[6]
        ], [
          'name' => $item[6],
          'slug' => Str::slug($item[6]),
          'visible' => 1
        ]);


        $staffJpa = Staff::updateOrCreate([
          'twitter' => $item[24]
        ], [
          'twitter' => $item[24],
          'nombre' => $item[25],
          'cargo' => 'Agente Inmobiliario',
          'facebook' => '+51'.$item[26],
          'instagram' => $item[27],
        ]);
    
        $incluye = iconv('UTF-8', 'UTF-8//IGNORE', $item[23] ?? '');

        // Asegurar que el texto esté en UTF-8 si viene de una fuente externa
        $incluye = mb_convert_encoding($incluye, 'UTF-8', 'UTF-8');

        // Dividir por guiones, considerando distintos tipos de guiones
        $parrafos = preg_split('/-+/', $incluye);

        $htmlIncluye = '';
        foreach ($parrafos as $parrafo) {
            $textoLimpio = trim($parrafo);
            if (!empty($textoLimpio)) {
                // Escapar caracteres especiales HTML y mantener tildes
                $textoEscapado = htmlspecialchars($textoLimpio, ENT_QUOTES | ENT_HTML5, 'UTF-8');
                $htmlIncluye .= '<p>' . $textoEscapado . '</p>';
            }
        }


        
        $distritoEncontrado = District::with('province.department')->where('id', $item[3])->first();
        if ($distritoEncontrado) {
          $distrito_id = $distritoEncontrado->id;
          $provincia_id = $distritoEncontrado->province ? $distritoEncontrado->province->id : null;
          $departamento_id = $distritoEncontrado->province && $distritoEncontrado->province->department 
          ? $distritoEncontrado->province->department->id 
          : null;
        }else{
          $distrito_id = null;
          $provincia_id = null;
          $departamento_id = null;
        }

        $productJpa = Products::updateOrCreate([
          'sku' => $item[0],
        ], [
          'codigo' => $item[1],
          'producto' => $item[2],
          'distrito_id' => $distrito_id,
          'provincia_id' => $provincia_id,
          'departamento_id' => $departamento_id,
          'extract' => $item[4],
          'description' => $item[5],
          'categoria_id' => $categoryJpa->id,
          'recomendar' => $item[7],
          'precio' => $item[8] ?? 0,
          'preciomin' => $item[9] ?? 0,
          'cuartos' => $item[10],
          'banios' => $item[11],
          'pisos' => $item[12],
          'mascota' => $item[13],
          'mobiliado' => $item[14],
          'cochera' => $item[15],
          'movilidad' => $item[16],
          'area' => $item[17],
          'construida' => $item[18],
          'ocupada' => $item[19],
          'medidas' => $item[20],
          'latitud' => $item[21],
          'longitud' => $item[22],
          'staff_id' => $staffJpa->id,
          'incluye' => $htmlIncluye,
          'imagen_ambiente' => $path2cot . $item[1] .'.pdf',
          'visible' => 1,
        ]);

        $i = 0;
        Galerie::where('product_id', $productJpa->id)->delete();

        if (\count($productImages) == 0) {
          $productJpa->visible = 0;
          $productJpa->save();
        }

        foreach ($productImages as $image) {
          try {
            $productImage = 'storage/images/productos/' . $image;
            if ($i == 0) {
              $productJpa->imagen = $productImage;
              $productJpa->save();
            } else {
              Galerie::updateOrCreate([
                'product_id' => $productJpa->id,
                'imagen' => $productImage
              ]);
            }
          } catch (\Throwable $th) {
            dump($th->getMessage());
          }
          $i++;
        }

        dump($productImages);
        dump("{$productJpa->producto}\n{$productImage}");
      } catch (\Throwable $th) {
        dump($th->getMessage());
      }
    }

    dump('Finalizó la carga masiva');
  }
}
