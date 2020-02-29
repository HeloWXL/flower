/**
 * 点击注册
 */
$('#register').click(function (e) {
    e.preventDefault();
    var username = $("#username").val();
    var nickname = $("#nickname").val();
    var password = $("#password").val();
    var sex = $("#sex").val();
    var phone = $("#phone").val();
    var address = $("#address").val();

    if(username==""||username==null){
        alert("用户名不能为空");
        return ;
    }

    if(nickname==""||nickname==null){
        alert("昵称不能为空");
        return ;
    }

    if(password==""||password==null){
        alert("密码不能为空");
        return ;
    }

    if(sex==""||sex==null){
        alert("性别不能为空");
        return ;
    }

    if(phone==""||phone==null){
        alert("手机号码不能为空");
        return ;
    }

    if(password==""||password==null){
        alert("密码不能为空");
        return ;
    }
    if(address==""||address==null){
        alert("地址不能为空");
        return ;
    }
    user = {
        userName:username,
        nickName:nickname,
        password:password,
        sex:sex,
        phone:phone,
        address:address
    }
    register(user);
});

/**
 * 注册函数
 */
function register(user) {

    $.ajax({
        url:ctx+'/user/register',
        data:JSON.stringify(user),
        type:'post',
        dataType:'json',
        contentType: 'application/json; charset=utf-8',
        success:function (res) {
            if(res==1){
                location.href=ctx+'/login';
            }else{
                alert("服务器内部错误");
            }
        }
    })

}