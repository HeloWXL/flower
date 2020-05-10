
$(function () {
    // 初始化弹窗
    toastr.options.positionClass = 'toast-top-right';

});

/**
 * 点击登录
 */
$('#login').click(function (e) {
    e.preventDefault();
    var username = $("#username").val();
    var password = $("#password").val();
    login(username,password);
});

/**
 * 登录函数
 * @param username
 * @param password
 */
function login(username,password) {
    if(username==""||username==null){
        toastr.error("用户名不能为空",{timeOut: 1500});
        return ;
    }

    if(password==""||password==null){
        toastr.error("密码不能为空",{timeOut: 1500});
        return ;
    }
    $.ajax({
        url:ctx+'/user/checkLogin',
        data:{
            userName:username,
            password:password
        },
        type:'post',
        dataType:'json',
        success:function (res) {
            if(res==true){
                toastr.success("登录成功",{timeOut: 1500});
                setTimeout("location.href='/index'", 1500);
                location.href=ctx+'/';
            }else{
                toastr.error("用户名或密码错误");
                $("#username").val('');
                $("#password").val('');
            }
        }
    })

}