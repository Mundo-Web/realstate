<?php

namespace Database\Seeders;

use App\Models\Strength;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class StrengthSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $beneficios = [
            ['titulo' => 'Beneficio o valor tres', 'descripcionshort' => 'Donec vehicula purus at diam facilisis tempor. Donec lacinia felis nibh, vel consectetur leo tincidunt nec.'],
            ['titulo' => 'Beneficio o valor tres', 'descripcionshort' => 'Donec vehicula purus at diam facilisis tempor. Donec lacinia felis nibh, vel consectetur leo tincidunt nec.'],
            ['titulo' => 'Beneficio o valor tres', 'descripcionshort' => 'Donec vehicula purus at diam facilisis tempor. Donec lacinia felis nibh, vel consectetur leo tincidunt nec.']
        ];

        foreach ($beneficios as $key => $beneficio) {
            Strength::updateOrCreate([
                'id' => $key + 1,
                'status' => true
            ], $beneficio);
        }
    }
}
