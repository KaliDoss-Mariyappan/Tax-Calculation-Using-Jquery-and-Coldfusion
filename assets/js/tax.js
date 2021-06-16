$(document).ready(function(){
    var total = 0;
    $("#addProduct").on("click", function() {
        var productName = $("#productNameId").val();
        var productRate = $("#productRateId").val();
        var productQty = $("#productQtyId").val();
        var productTax = (Number(productRate)*Number(productQty))*0.18;
        var productAmount  = Number((productRate)*Number(productQty))+Number(productTax);
        $("table").append(
            `<tr>
                <td>${productName}</td>
                <td>${productRate}</td>
                <td>${productQty}</td>
                <td>${productTax}</td>
                <td class="productAmount">${productAmount}</td>
                <td><button class="deleteProduct btn btn-danger">DEL</button></td>
            </tr>`
        );
        total = total+productAmount;
        $("#totalAmount").html(`Total Amount : ${total}`);
        $("input[type='text']").val("");
    });

    $("table").on("click", ".deleteProduct", function() {
        var $thisAmount = $(this).closest("tr").find(".productAmount").html();
        total = total-$thisAmount;
        $("#totalAmount").html(`Total Amount : ${total}`);
        $(this).closest("tr").remove();
    });
});