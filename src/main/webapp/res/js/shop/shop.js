$(function () {

    // 初始化弹窗
    toastr.options.positionClass = 'toast-top-right';

    //加入购物车
    $('a[title="加入购物车"]').click(function () {
        //获取商品的ID
        var productId =  $(this).attr("productId");
        var price = $(this).closest("figure").next().children('div').children('.price-regular').html();
        price = price.slice(0,-3);
        if(userId==0){
            alert("用户未登录");
            location.href= ctx+'/login';
        }
        addCart(userId,productId,price)
    });
});

/**
 * 加入购物车
 * @param userId
 * @param productId
 * @param price
 */
function addCart(userId,productId,price) {
    var cart = {
        userId:userId,
        productId:productId,
        amout:1,
        price:price,
        createTime:new Date()
    };
    $.ajax({
        url:ctx+'/cart/insertCart',
        data:JSON.stringify(cart),
        type:'post',
        dataType:'json',
        contentType: 'application/json; charset=utf-8',
        success:function (res) {
            if (res == 1) {
                toastr.success('加入购物车成功');
            } else {
                toastr.error('加入购物车失败');
            }
        }
    })
}