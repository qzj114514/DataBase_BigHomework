<?php
include_once "conn/conn.php";
//session_start();  // 启动会话
// 检查是否登录
//if (!isset($_SESSION['logged']) || !$_SESSION['logged']) {
//    header('Location: page/login.php');  // 重定向到登录页面
//    exit;
//}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>主页</title>
    <link rel="stylesheet" type="text/css"
          href="./style/http_cdn.bootcdn.net_ajax_libs_twitter-bootstrap_5.2.3_css_bootstrap.css">
    <link rel="stylesheet" type="text/css" href="./style/index.css">
    <script src="./js/http_cdn.bootcdn.net_ajax_libs_twitter-bootstrap_5.2.3_js_bootstrap.bundle.js"></script>
    <script src="./js/http_cdn.bootcdn.net_ajax_libs_jquery_3.6.4_jquery.js"></script>
</head>
<body>
<div class="index-top-tab">
        <span class="index-top-tab-left">

        </span>
    <div class="index-top-tab-right">
        <div class="index-top-tab-title">医院信息管理平台</div>
    </div>
</div>
<div class="body">
    <div class="index-left-tab">
        <div>
            <div class="index-left-tab-item " data-index="1">
                <span>首页</span>
            </div>
            <div class="index-left-tab-item" data-index="3">
                <span>科室管理</span>
            </div>
            <div class="index-left-tab-item" data-index="4">
                <span>医生管理</span>
            </div>
            <div class="index-left-tab-item" data-index="5">
                <span>药品管理</span>
            </div>
            <div class="index-left-tab-item" data-index="6">
                <span>病人管理</span>
            </div>
            <div class="index-left-tab-item clicked" data-index="6">
                <span>门诊计划</span>
                <!--            选中小蓝条-->
                <div class="index-left-tab-item-tag" data-index="2"></div>
            </div>
        </div>

        <div class="patient-left-tab">
            <div class="index-left-tab-item" data-index="7">
                <span>就诊管理</span>
            </div>
            <div class="index-left-tab-item" data-index="8">
                <span>挂号管理</span>
            </div>
            <div class="index-left-tab-item" data-index="9">
                <span>缴费管理</span>
            </div>
            <div class="index-left-tab-item" data-index="10">
                <span>药品管理</span>
            </div>
        </div>
    </div>
    <div class="index-right-container">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">医院信息管理平台</li>
                <li class="breadcrumb-item active" aria-current="page">门诊计划</li>
            </ol>
        </nav>

        <div class="index-right-bottom-container">
            <div>数据监控表</div>
            <div class="data-table">
                <table class="table">
                    <thead class="table-dark">
                    <tr>
                        <th scope="col">医生编号</th>
                        <th scope="col">医生姓名</th>
                        <th scope="col">联系方式</th>
                        <th scope="col">排班时间</th>
                        <th scope="col">排班类型</th>
                        <th scope="col">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <td >Larry the Bird</td>
                        <td>@twitter</td>
                        <td>@twitter</td>
                        <td>@twitter</td>
                        <td>@mdo</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>