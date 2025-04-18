<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ExtraService extends Model
{
    use HasFactory;

    protected $fillable = [
        'product_id',
        'service',
        'price',
        'visible',
        'status',
    ];
}
