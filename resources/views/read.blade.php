<!DOCTYPE html>
<html>
<head>
    <title>CRUD Order</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="{{('../css/bootstrap.min.css')}}">
</head>
<body>
    <div class="container">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4>Order Read</h4>
            </div>
            <div class="panel-body">
                    <!-- <input type="hidden" name="id" id="id" value="{{$data->id}}"> -->
                    <div class="form-group">
                        <div class="col-sm-6">
                            <label for="nama">Restaurant Name</label>
                            <input type="text" name="nama" id="nama" value="{{$data->restaurant_name}}" class="form-control" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="vendor">Vendor</label>
                            <input type="text" name="vendor" id="vendor" value="{{$data->vendor->name}}" class="form-control" readonly>
                        </div>
                    </div>                    
                    <div class="form-group">  
                        <div class="col-sm-3">  
                            <label for="tag">Tag</label>    
                            <input type="text" name="tag" id="tag" value="{{$data->tag->name}}" class="form-control" readonly>
                        </div>
                    </div>
                    <div class="form-group"> 
                        <div class="col-sm-3">   
                            <label for="qty">Quantity</label>    
                            <input type="text" name="qty" id="qty" value="{{$data->qty}}" class="form-control" readonly>
                        </div>
                    </div>
                    <div class="form-group">  
                        <div class="col-sm-3">  
                            <label for="price">Price</label>    
                            <input type="text" name="price" id="price" value="{{$data->price}}" class="form-control" readonly>
                        </div>
                    </div>
                    <div class="form-group">  
                        <div class="col-sm-3">  
                            <label for="amount">Amount</label>    
                            <input type="text" name="amount" id="amount" value="{{$data->amount}}" class="form-control" readonly>
                        </div>
                    </div>
                    <form action="{{url('back')}}" method="get">
                        <div class="form-group">
                            <input type="submit" value="Back" class="btn btn-success">
                        </div>
                    </form>
            </div>
        </div>
    </div>
</body>
</html>