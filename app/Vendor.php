<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vendor extends Model
{
    protected $table="vendors";
    
    /*
    public function tags()
    {
        return $this->morphToMany('App\Tag', 'taggable');
    }
    */

    public function order()
    {
    	return $this->hasOne('App\Order');
    }

}
