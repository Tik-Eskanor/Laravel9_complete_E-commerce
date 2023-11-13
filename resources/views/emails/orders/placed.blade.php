<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Email</title>
</head>
<body>

    <div style="max-width: 400px;margin:auto;font-family:sans-serif">
        <h3>Order recieved</h3>
        <p style="color:rgba(51, 51, 51, 0.781)">Thank you for your order</p>
        <p><b>Id: </b> {{ $order->id }}</p>
        <p><b>Order Email: </b> {{ $order->billing_email }}</p>
        <p><b>Order Billing name: </b> {{ $order->billing_name }}</p>
        <p><b>Order Total: </b> {{ $order->billing_total }}</p>
        <h3 style="margin: 0">Items Ordered</h3>

        @foreach ($order->products as $product)
            <p>
                <div>Name: {{ $product->name }}</div>
                <div>Name: {{ $product->price }}</div>
                <div>Name: {{ $product->pivot->quantity }}</div>
            </p>  
        @endforeach


        <p style="margin: 3px;color:rgba(51, 51, 51, 0.781)">You can further get details about your order by logging into our website</p>
        <div style="margin: 20px 0;text-align:center">
            <a href="" style="background:burlywood;color:white;border-radius:3px;padding:8px;font-weight:900;text-decoration:none;display:inline-block">Go to website</a>
        </div>
        <p style="color:rgba(51, 51, 51, 0.829)">Thank you again for choosing us</p>
        <h4 style="margin: 0">Regards,</h4>
        <h4 style="margin: 0">Eco store</h4>
    </div>
</body>
</html>