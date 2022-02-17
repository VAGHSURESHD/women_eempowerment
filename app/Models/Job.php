<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    use HasFactory;
    public function getCategory()
    {
        return $this->belongsTo('App\Models\Category','category_id');
    }
    public function getLocation()
    {
        return $this->belongsTo('App\Models\Location','location_id');
    }
}
