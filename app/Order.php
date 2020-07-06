<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table="order";
    protected $primaryKey="id";
    protected $fillable=['restaurant_name','vendor_id','tag_id','qty','price','amount'];

    public function vendor()
    {
         return $this->belongsTo(Vendor::class,'vendor_id');
    }

    public function tag()
    {
         return $this->belongsTo(Tag::class,'tag_id');
    }

}