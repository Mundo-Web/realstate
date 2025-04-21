<?php

namespace Database\Seeders;

use App\Models\ClientLogos;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class EstadiscticsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $beneficios = [

            ['title' => 'Confianza', 'description' => ' La confianza es la piedra angular de toda transacción inmobiliaria exitosa.'],
            ['title' => 'Excelencia', 'description' => 'Nos ponemos el listón muy alto. Desde las propiedades que  listamos hasta los servicios que brindamos.'],
            ['title' => 'Centrado en el cliente', 'description' => 'Tus sueños y necesidades están en el centro de nuestro universo. Escuchamos, entendemos.'],
            ['title' => 'Nuestro compromiso', 'description' => 'Estamos dedicados a brindarle el más alto nivel de servicio, profesionalismo y soporte.']

        ];

        foreach ($beneficios as $key => $beneficio) {
            ClientLogos::updateOrCreate([
                'id' => $key + 1
            ], $beneficio);
        }
    }
}
