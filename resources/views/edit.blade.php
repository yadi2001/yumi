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
                <h4>Order Edit</h4>
            </div>
            <div class="panel-body">
                <form action="{{url('update', $data->id)}}" method="post">
                    <!-- <input type="hidden" name="id" id="id" value="{{$data->id}}"> -->
                    <div class="form-group">
                        <div class="col-sm-6">
                            <label for="nama">Restaurant Name</label>
                            <input type="text" name="nama" id="nama" value="{{$data->restaurant_name}}" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="vendor">Vendor</label>
                            <select name="vendor" id="vendor" class="form-control" required="require">
                                <option value="{{ $data->vendor_id }}">{{ $data->vendor->name }}</option>
                                @foreach($itemlist as $item)
                                <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                            </select>  
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="vendor">Tag</label>
                            <select name="tag" id="tag" class="form-control" required="require">
                                <option value="{{ $data->tag_id }}">{{ $data->tag->name }}</option>
                                @foreach($itemlistx as $itemx)
                                <option value="{{ $itemx->id }}">{{ $itemx->name }}</option>
                                @endforeach
                            </select> 
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="qty">Quantity</label>
                            <input type="number" name="qty" id="qty" value="{{$data->qty}}" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="price">Price</label>
                            <input type="number" name="price" id="price" value="{{$data->price}}" class="form-control"  onchange="hasil()">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="amount">Amount</label>
                            <input type="hidden" name="amount" id="amount" value="{{$data->amount}}" class="form-control">
                            <input type="number" name="amountx" id="amountx" value="{{$data->amount}}" class="form-control"  disabled>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="submit" name="send" id="send" value="Simpan" class="btn btn-success">{!!csrf_field()!!}                       
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

<script>
function hasil(){
    var qty = document.getElementById('qty').value
    var price = document.getElementById('price').value

    var hasil = parseInt(qty) * parseInt(price)
    document.getElementById('amount').value = hasil
    document.getElementById('amountx').value = hasil

}

</script>