<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    use HasFactory;
    protected $fillable = ['nombre',
    'cargo',
    'facebook',
    'instagram',
    'youtube',
    'twitter',
    'status'];

    public function agente()
    {
        return $this->hasMany(Products::class, 'staff_id');
    }
}
