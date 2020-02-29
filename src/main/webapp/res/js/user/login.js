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
        alert("用户名不能为空");
        return ;
    }

    if(password==""||password==null){
        alert("密码不能为空");
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
                location.href=ctx+'/index';
            }else{
                alert("用户名或密码错误");
                $("#username").val('');
                $("#password").val('');
            }
        }
    })

}