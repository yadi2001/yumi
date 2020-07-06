<!DOCTYPE html>
<html>
<head>
    <title>CRUD Order</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="{{('css/bootstrap.min.css')}}">
</head>
<body>
    <div class="container">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4>CRUD Order</h4>
            </div>
            <div class="panel-body">
                <form action="{{url('create')}}" method="get">
                    <div class="form-group">
                        <input type="submit" name="new" id="new" value="New Order" class="btn btn-success">
                    </div>
                </form>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Restaurant Name</th>
                            <th>Vendor</th>
                            <th>Tag</th>
                            <th>Qty</th>
                            <th>Price(Rp)</th>
                            <th>Amount(Rp)</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                        @foreach($data as $key => $d)
                        <tr>
                            <td>{{ $d->restaurant_name }}</td>
                            <td>{{ $d->vendor->name }}</td>
                            <td>{{ $d->tag->name }}</td>
                            <td>{{ $d->qty }}</td>
                            <td>{{ number_format($d->price,2)}}</td>
                            <td>{{ number_format($d->amount,2)}}</td>
                            <td>
                                <a href="{{url('read',array($d->id))}}">Read</a>
                                <a href="{{url('delete',array($d->id))}}">Delete</a>
                                <a href="{{url('edit',array($d->id))}}">Edit</a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody> 
 
                </table>
            </div>
        </div>
    </div>
</body>
</html>