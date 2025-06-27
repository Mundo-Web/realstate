<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class NewUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::updateOrCreate([
            'email' => 'info@mprealstate.com'
        ], [
            'name' => 'Admin',
            'email' => 'info@mprealstate.com',
            'password' => Hash::make('realstate@2025#'),
        ])->assignRole('Admin');
    }

}
