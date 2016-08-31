<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CM.Blog.RS.DWeb.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>资源搜索
    </title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <%--BootstrapCSS开始--%>
    <link href="https://cdn.alphams.cn/Template/ColorAdmin/2.0/admin/template_content_html/assets/plugins/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <%--BootstrapCSS结束--%>
    <%--微软雅黑字体修复CSS开始--%>
    <link href="https://cdn.alphams.cn/Library/MicrosoftYaHei/MicrosoftYaHeiFix.css" type="text/css" rel="stylesheet" />
    <%--微软雅黑字体修复CSS结束--%>
</head>
<body>
    <div class="container">
        <h2 class="text-center">资源搜索</h2>
        <div class="row" style="margin-top: 30px;">
            <div class="col-lg-3 col-md-3"></div>
            <div class="col-lg-6 col-md-6">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="请输入要搜索的关键词" id="Search_Keywords_TextBox" />
                    <span class="input-group-btn">
                        <button class="btn btn-danger" type="button" id="Search_Search_Submit_Button">立即搜索</button>
                    </span>
                </div>
            </div>
            <div class="col-lg-3 col-md-3"></div>
        </div>
    </div>
    <div class="container">
        <div class="row" id="Search_Time_Container" style="margin-top: 10px; display: none;">
            <div class="col-lg-3 col-md-3"></div>
            <div class="col-lg-6 col-md-6">
                <span>本次搜索用时：</span><span class="label label-info" id="Search_Time_Label"></span>
            </div>
            <div class="col-lg-3 col-md-3"></div>
        </div>
    </div>
    <div class="container">
        <div id="Search_Result_Container" style="margin-top: 50px;">
        </div>

    </div>
    <%--JQueryJS开始--%>
    <script src="https://cdn.alphams.cn/Template/ColorAdmin/2.0/admin/template_content_html/assets/plugins/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="https://cdn.alphams.cn/Template/ColorAdmin/2.0/admin/template_content_html/assets/plugins/jquery/jquery-migrate-1.1.0.min.js" type="text/javascript"></script>
    <%--JQueryJS结束--%>
    <%--BootstrapJS开始--%>
    <script src="https://cdn.alphams.cn/Template/ColorAdmin/2.0/admin/template_content_html/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <%--BootstrapJS结束--%>
    <script src="/Index.js"></script>
</body>
</html>
