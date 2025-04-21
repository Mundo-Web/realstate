<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AboutUsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('about_us')->insert([
            [
                'titulo' => 'Más de 3 años de excelencia',
                'descripcion' => 'Con más de 3 años en la industria, hemos acumulado una gran cantidad de conocimiento y experiencia, convirtiéndonos en un recurso de referencia...',
                'imagen' => 'storage/images/imagen/fl85XXUtND_Ima2.png',
                'status' => 1,
                'created_at' => '2024-08-02 21:33:46',
                'updated_at' => '2024-08-02 23:57:40',
            ],
            [
                'titulo' => 'Clientes más felices',
                'descripcion' => 'Nuestro mayor logro es la satisfacción de nuestros clientes. Sus historias de éxito alimentan nuestra pasión por lo que hacemos.',
                'imagen' => 'storage/images/imagen/i4pfzlPd8d_Ima2.png',
                'status' => 1,
                'created_at' => '2024-08-02 21:33:56',
                'updated_at' => '2024-08-03 00:22:01',
            ],
            [
                'titulo' => 'Reconocimiento de la industria',
                'descripcion' => 'Nos hemos ganado el respeto de nuestros pares y líderes de la industria, con elogios y premios que reflejan nuestro compromiso con la excelencia.',
                'imagen' => 'storage/images/imagen/0B2yAS5w0E_image 15.png',
                'status' => 1,
                'created_at' => '2024-08-02 21:34:50',
                'updated_at' => '2024-08-02 23:47:03',
            ],
        ]);
    }
}
