<!DOCTYPE html>
<html>
    <head>
        <title>Jquery Tax Calculator With Using Coldfusion</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="assets/css/style.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm-4">
                    <h3>Basci Tax Calculator</h3>
                    <form method="POST" name="taxForm" class="mt-3" autocomplete="off">
                        <label>Product Name</label>
                        <input type="text" name="productName" id="productNameId" class="form-control">
                        <label>Rate</label>
                        <input type="text" name="productRate" id="productRateId" class="form-control">
                        <label>Qty</label>
                        <input type="text" name="productQty" id="productQtyId" class="form-control">
                        <input type="button" name="addProduct" id="addProduct" value="Add Product" class="btn btn-primary mt-2">
                    </form>
                </div>
                <div class="col-sm-8">
                    <h3>Cart Items</h3>
                    <table class="table mt-3">
                        <tr>
                            <th>Proudct Name</th>
                            <th>Rate</th>
                            <th>QTY</th>
                            <th>TAX</th>
                            <th>AMT</th>
                            <th>DELETE</th>
                        </tr>
                    </table>
                    <h3 id="totalAmount">Total Amount: 0.00</h3>
                </div>
            </div>
        </div>
        <script src="assets/js/tax.js"></script>
    </body>
</html>
