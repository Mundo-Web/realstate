<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;

    protected $fillable = [
        'product_id',
        'sku',
        'checkin', 
        'checkout', 
        'description',
    ];

    // Relación con el modelo Product
    public function product()
    {
        return $this->belongsTo(Products::class);
    }
}