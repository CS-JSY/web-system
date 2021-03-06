<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
				
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<base href="<%=basePath%>">
    <meta charset="utf-8">
    <link rel="shortcut icon" href="img/logo.png">
    <title>系统后台首页</title>       
           
    <link rel="stylesheet" href="resources/plugin/layui/css/layui.css">
    <link rel="stylesheet" href="resources/css/back.css">
    <link rel="stylesheet" href="resources/plugin/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/index-page.css">

</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo"><a href="/admin" style="color:#009688;">
        信息系统后台
        </a>
        </div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="/" target="_blank">前台</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">新建</a>
                <dl class="layui-nav-child">
                    <dd><a href="/admin/article/insert">文章</a></dd>
                    <dd><a href="/admin/page/insert">页面</a></dd>
                    <dd><a href="/admin/category/insert">分类</a></dd>
                    <dd><a href="/admin/notice/insert">公告</a></dd>
                    <dd><a href="/admin/link/insert">链接</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="resources/uploads/2017/10/20171006225356181.jpg" class="layui-nav-img">
                    admin</a>
                <dl class="layui-nav-child">
                    <dd><a href="/admin/user/profile">基本资料</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="/admin/logout">退出</a>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">文章</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/admin/article">全部文章</a></dd>
                        <dd><a href="/admin/article/insert">写文章</a></dd>
                        <dd><a href="/admin/category">全部分类</a></dd>
                        <dd><a href="/admin/tag">全部标签</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">页面</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/admin/page">全部页面</a></dd>
                        <dd><a href="/admin/page/insert">添加页面</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a class="" href="javascript:;">
                        链接
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="/admin/link">全部链接</a></dd>
                        <dd><a href="/admin/link/insert">添加链接</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">公告</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/admin/notice">全部公告</a></dd>
                        <dd><a href="/admin/notice/insert">添加公告</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="/admin/comment">
                        评论
                    </a>
                </li>
                <li class="layui-nav-item">
                    <a class="" href="javascript:;">
                        用户
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="/admin/user">全部用户</a></dd>
                        <dd><a href="/admin/user/insert">添加用户</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">设置</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/admin/menu">菜单</a></dd>
                        <dd><a href="/admin/options">主要选项</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <!-- 下面这个div是重写的内容 -->
            <div class="layui-container">
   					 <div class="layui-row">
        <div class="layui-col-md6">
            <div id="dashboard_activity" class="postbox ">
                <div class="inside">
                    <div id="activity-widget">
                        <div id="published-posts" class="activity-block"><h3>最近发布</h3> <br>
                            <ul>
                                <li><span>21:06 11月25日</span>
                                        <a href="/article/33"
                                           target="_blank">MySQL常用命令语句</a>
                                    </li>
                                <li><span>21:05 11月25日</span>
                                        <a href="/article/32"
                                           target="_blank">Docker_入门？只要这篇就够了！（纯干货适合0基础小白）</a>
                                    </li>
                                <li><span>21:02 11月25日</span>
                                        <a href="/article/31"
                                           target="_blank">RocketMQ 实战之快速入门</a>
                                    </li>
                                <li><span>21:01 11月25日</span>
                                        <a href="/article/30"
                                           target="_blank">SpringBoot + mongodb 整合, 记录网站操作日志，常用查询操作</a>
                                    </li>
                                <li><span>21:00 11月25日</span>
                                        <a href="/article/29"
                                           target="_blank">IDEA启动EDAS项目</a>
                                    </li>
                                </ul>
                        </div>
                        <br>
                        <div id="latest-comments" class="activity-block"><h3>近期评论</h3>
                            <ul id="the-comment-list" data-wp-lists="list:comment">
                                <li class="comment   thread-even comment-item approved">

                                        <img alt="" src="http://cn.gravatar.com/avatar/88d5cb704d88bdad67d000eee4782000?s=128&d=identicon&r=PG"
                                             class="avatar avatar-50 photo" height="50" width="50">
                                        <div class="dashboard-comment-wrap has-row-actions">
                                            <p class="comment-meta">
                                                由<cite class="comment-author">
                                                <a target="_blank" href=""
                                                   rel="external nofollow"
                                                   class="url">1111</a>
                                            </cite>发表在
                                                《<a href="/article/6">Hibernate 简单的CURD操作</a>》
                                            </p>

                                            <blockquote><p>1</p></blockquote>
                                            <p class="row-actions">|
                                                <span class="">
                                            <a data-comment-id="1268"
                                               href="/admin/comment/reply/29">
                                                回复
                                            </a>
                                            </span>
                                                <span class=""> |
                                                <a href="/admin/comment/edit/29">编辑</a>
                                            </span>
                                                <span class=""> |
                                                <a href="javascript:void(0)"
                                                   onclick="deleteComment(29)">删除</a>
                                            </span>
                                            </p>
                                        </div>
                                    </li>
                                <li class="comment   thread-even comment-item approved">

                                        <img alt="" src="http://cn.gravatar.com/avatar/487f87505f619bf9ea08f26bb34f8118?s=128&d=identicon&r=PG"
                                             class="avatar avatar-50 photo" height="50" width="50">
                                        <div class="dashboard-comment-wrap has-row-actions">
                                            <p class="comment-meta">
                                                由<cite class="comment-author">
                                                <a target="_blank" href=""
                                                   rel="external nofollow"
                                                   class="url">你好</a>
                                            </cite>发表在
                                                《<a href="/article/6">Hibernate 简单的CURD操作</a>》
                                            </p>

                                            <blockquote><p>ssss</p></blockquote>
                                            <p class="row-actions">|
                                                <span class="">
                                            <a data-comment-id="1268"
                                               href="/admin/comment/reply/22">
                                                回复
                                            </a>
                                            </span>
                                                <span class=""> |
                                                <a href="/admin/comment/edit/22">编辑</a>
                                            </span>
                                                <span class=""> |
                                                <a href="javascript:void(0)"
                                                   onclick="deleteComment(22)">删除</a>
                                            </span>
                                            </p>
                                        </div>
                                    </li>
                                <li class="comment   thread-even comment-item approved">

                                        <img alt="" src="http://cn.gravatar.com/avatar/3ae8728fec3cd5cbfe99c4b966695f03?s=128&d=identicon&r=PG"
                                             class="avatar avatar-50 photo" height="50" width="50">
                                        <div class="dashboard-comment-wrap has-row-actions">
                                            <p class="comment-meta">
                                                由<cite class="comment-author">
                                                <a target="_blank" href=""
                                                   rel="external nofollow"
                                                   class="url">saysky3</a>
                                            </cite>发表在
                                                《<a href="/article/2">springmvc 表单中文乱码解决方案</a>》
                                            </p>

                                            <blockquote><p>33333</p></blockquote>
                                            <p class="row-actions">|
                                                <span class="">
                                            <a data-comment-id="1268"
                                               href="/admin/comment/reply/20">
                                                回复
                                            </a>
                                            </span>
                                                <span class=""> |
                                                <a href="/admin/comment/edit/20">编辑</a>
                                            </span>
                                                <span class=""> |
                                                <a href="javascript:void(0)"
                                                   onclick="deleteComment(20)">删除</a>
                                            </span>
                                            </p>
                                        </div>
                                    </li>
                                <li class="comment   thread-even comment-item approved">

                                        <img alt="" src="http://cn.gravatar.com/avatar/3ae8728fec3cd5cbfe99c4b966695f03?s=128&d=identicon&r=PG"
                                             class="avatar avatar-50 photo" height="50" width="50">
                                        <div class="dashboard-comment-wrap has-row-actions">
                                            <p class="comment-meta">
                                                由<cite class="comment-author">
                                                <a target="_blank" href=""
                                                   rel="external nofollow"
                                                   class="url">saysky2</a>
                                            </cite>发表在
                                                《<a href="/article/2">springmvc 表单中文乱码解决方案</a>》
                                            </p>

                                            <blockquote><p>sssssss</p></blockquote>
                                            <p class="row-actions">|
                                                <span class="">
                                            <a data-comment-id="1268"
                                               href="/admin/comment/reply/19">
                                                回复
                                            </a>
                                            </span>
                                                <span class=""> |
                                                <a href="/admin/comment/edit/19">编辑</a>
                                            </span>
                                                <span class=""> |
                                                <a href="javascript:void(0)"
                                                   onclick="deleteComment(19)">删除</a>
                                            </span>
                                            </p>
                                        </div>
                                    </li>
                                <li class="comment   thread-even comment-item approved">

                                        <img alt="" src="http://cn.gravatar.com/avatar/3ae8728fec3cd5cbfe99c4b966695f03?s=128&d=identicon&r=PG"
                                             class="avatar avatar-50 photo" height="50" width="50">
                                        <div class="dashboard-comment-wrap has-row-actions">
                                            <p class="comment-meta">
                                                由<cite class="comment-author">
                                                <a target="_blank" href="http://liuyanzhao.com"
                                                   rel="external nofollow"
                                                   class="url">saysky</a>
                                            </cite>发表在
                                                《<a href="/article/2">springmvc 表单中文乱码解决方案</a>》
                                            </p>

                                            <blockquote><p>ssssss</p></blockquote>
                                            <p class="row-actions">|
                                                <span class="">
                                            <a data-comment-id="1268"
                                               href="/admin/comment/reply/18">
                                                回复
                                            </a>
                                            </span>
                                                <span class=""> |
                                                <a href="/admin/comment/edit/18">编辑</a>
                                            </span>
                                                <span class=""> |
                                                <a href="javascript:void(0)"
                                                   onclick="deleteComment(18)">删除</a>
                                            </span>
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div id="dashboard_quick_press" class="postbox ">
                <div class="inside">
                    <form name="post" method="post" id="insertDraftForm"
                          class="initial-form hide-if-no-js" action="/admin/article/insertDraftSubmit">

                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <input type="text" name="articleTitle" id="articleTitle" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item layui-form-text">
                            <div class="layui-input-block">
                                <textarea name="articleContent" placeholder="请输入内容" id="articleContent" class="layui-textarea" required></textarea>
                            </div>
                        </div>
                        <input type="hidden" name="articleStatus" value="0">
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn layui-btn-small" lay-submit lay-filter="formDemo" onclick="insertDraft()">保存草稿</button>
                                <button type="reset" class="layui-btn layui-btn-small layui-btn-primary">重置</button>
                            </div>
                        </div>

                    </form>
                    <div class="drafts"><p class="view-all"><a
                            href="/admin/article"
                            aria-label="查看所有草稿">查看所有</a></p>
                        <h2 class="hide-if-no-js">草稿</h2>
                        <ul>
                            </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
			</div>
        </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © 这里展示一些提示性信息 <a href="#" target="_blank">其他导航</a> / <a href="#" target="_blank">其他导航</a>
    </div>
	</div>

</div>
	<script src="js/jquery.min.js"></script>
	<script src="plugin/layui/layui.all.js"></script>
	<script src="js/back.js"></script>
	

</body>
</html>
				