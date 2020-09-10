<%@page  contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <title>聊天室</title>
    <link rel="stylesheet" href="CSS/semantic.css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="CSS/list_custom.css"  media="screen" title="no title" charset="utf-8">
    <style type="text/css">
        body {
            background: url(images/super_blur_back2.jpg);
            background-size: cover;
        }

        .ui.grid.divided.segment.container{
            min-height: 400px;
            width:600px !important;
            border:rgba(255, 0, 0, 0);
            position: absolute;
            left: 50%;
            top:40%;
            transform: translate(-50%,-50%);
        }

        .five.wide.column {
            background: url(images/red_regi.jpg);
            background-size: cover;
            background-position: 60% 0%;
        }

        form {
            margin-top: 60px;
        }
        h1,h3,h4{
            font-family: 'Play', sans-serif !important;

        }
    </style>

</head>
<body>

<div class="ui grid divided segment container">
    <div class="five wide  column">

        <h4 class="ui inverted header">

            <a href="${pageContext.request.contextPath }/main.jsp" style="color:#ffffff">首 页</a>
        </h4>

        <h1 class="ui inverted center aligned header" style="font-size: 28px;margin-top:55px">
            <p class="sub header">
                修改个人信息
            </p>

        </h1>

    </div>

    <div class="eleven wide column">
        <h4 class="ui inverted right aligned header">
            <a href="${pageContext.request.contextPath }/register.jsp" style="color:#ff695e;">前往注册</a>
        </h4>
        <h3 align="center" style="color:red;">${error}</h3>
        <form class="ui form error" method="post"
              action="${pageContext.request.contextPath }/user">
            <input type="hidden" name="method" value="edit">
            <input type="hidden" name="id" value="${existUser.id}">

            <div class="field">
                用户名
                <input autofocus="" id="id_username" name="username" type="text" value="${user.username}" maxlength="50" required />
            </div>

            <div class="field">
                手机号
               <input id="id_phone" name="phone" type="text" value="${user.phone}" maxlength="11" />
            </div>

            <div class="field">
                地址
                <input id="id_adress" name="adress" type="text" value="${user.adress}"/>
            </div>

            <button class="ui inverted red circular right floated button" type="submit">修改</button>
        </form>
    </div>
</div>
</body>
</html>