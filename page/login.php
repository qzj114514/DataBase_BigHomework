<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登陆界面</title>
    <link rel="stylesheet" type="text/css" href="/style/login.css">
    <link rel="stylesheet" type="text/css" href="/style/http_cdn.bootcdn.net_ajax_libs_twitter-bootstrap_5.2.3_css_bootstrap.css">
    <script src="/js/http_cdn.bootcdn.net_ajax_libs_twitter-bootstrap_5.2.3_js_bootstrap.bundle.js"></script>
    <script src="/js/http_cdn.bootcdn.net_ajax_libs_jquery_3.6.4_jquery.js"></script>
    <script>
        $(document).ready(() => {
            $('form').submit(() => {
                const email = "test"
                const password = "test"
                $.post("../php/doLogin.php", {
                    "email" : email,
                    "password" : password
                }, function(result) {
                    window.location.href = '../index.php';
                });

                window.location.href = '../index.php';
            })
        })
    </script>
</head>
<body>
    <div class="background-image"></div>
    <div class="background-image-cover"></div>
    <div class="login-box">
<!--        左边蓝色盒子-->
        <div class="left-blue-box">
            <div class="login-top-title">
                <h1>医院信息管理系统</h1>
            </div>
            <img id="img1" src="/image/secdoc%201.png" alt="0">
        </div>
        <div class="login-right-container">
            <form>
                <div class="login-right-top-container">
                    <div style="font-size:36px;font-weight: 600;">登录</div>
                    <div style="font-size:20px;">请在此输入你的账户信息以便进行登录</div>

                    <div class="login-account-input">
                        <div style="font-size:20px;font-weight: 600;">用户名</div>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="请输入您的账号/手机号/电子邮箱">
                        </div>
                    </div>

                    <div class="login-password-input">
                        <div style="font-size:20px;font-weight: 600;">密码</div>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="请输入您的账号密码">
                        </div>
                    </div>

                    <button type="submit" class="login-button">
                        立即登录
                    </button>

                    <div class="login-forget-password">
                        <button class="btn" style="color: #4D4D4D; btn">忘记密码</button>
                    </div>
                </div>

                <div class="login-bottom-container">
                    <div style="font-size:20px;font-weight: 600;">注册</div>
                    <div style="font-size:16px;">我们将直接使用您的登录信息进行注册</div>
                    <button class="register-button">立即注册</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>