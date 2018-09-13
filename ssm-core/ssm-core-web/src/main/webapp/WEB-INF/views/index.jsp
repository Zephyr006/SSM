<%--
  Created by User: Zephyr.
  Date: 2018/3/14  Time: 10:28  
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<c:set var="ctx" value="${pageContext.request.contextPath}"/>--%>
<html>
<head>
    <%@ include file="/WEB-INF/views/layout/include-header.jsp" %>
    <base target="_blank"/>
    <%--<meta name="author" content="Zephyr" charset="utf-8"/>--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />--%>
    <!--[if IE]>
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->
    <%--<![endif]-->--%>
    <title>Zephyr's World</title>

    <!-- BOOTSTRAP CORE STYLE  -->
    <!-- TABLESORTER箭头样式文件  -->
    <link href="https://cdn.bootcss.com/jquery.tablesorter/2.27.8/css/theme.default.min.css" rel="stylesheet">
    <!-- 自定义的css样式  -->
    <link href="${ctx}/assets/css/index.css" rel="stylesheet" />
</head>


<body id="top">
    <!-- 所有class="smoothJump"的标签都可以实现平滑跳转，代码在custom.js中 -->
    <!-- 返回顶部按钮,屏幕向下滚动一个屏幕，按钮才可见 -->
    <div class="go_to_top">
        <a id="toTop" href="#top" class="smoothJump"><img class="img_top" src="${ctx}/assets/img/css_img/top.png"></a>
    </div>
    <!-- LOGO HEADER END-->
    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-left">
                            <li><a href="#top" class="smoothJump" style="background-color:#D9EDF7">软件下载</a></li>
                            <li><a href="#bt" class="smoothJump" style="background-color:#dff0d8;">BT下载</a></li>
                            <li><a href="#movie" class="smoothJump" style="background-color:#D9EDF7">在线视频</a></li>
                            <li><a href="#tools" class="smoothJump" style="background-color:#dff0d8;">在线工具</a></li>
                            <li><a href="#source" class="smoothJump" style="background-color:#D9EDF7">资源合集</a></li>
                            <li><a href="#picture" class="smoothJump" style="background-color:#dff0d8">图像处理</a></li>
                            <li><a href="#favourites" class="smoothJump" style="background-color:#D9EDF7;">软件杂谈</a></li>
                            <li><a href="/account/register" target="_self">注册</a></li>
                            <li><a href="/account/login" target="_self">登录</a></li>
                            <li><a href="/account/logoff" target="_self">注销登录</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- MENU SECTION END-->

<!-- 正文 -->
<div class="content-wrapper">
    <div class="container">
        <!-- search engine begin -->
        <div class="row" style="margin-bottom:20px">
            <div class="col-md-6">
                <!-- google search don't need any other js code -->
                <form action="http://www.google.com/search" name=f target="_self">
                    <span   id=hf></span>
                    <table   cellspacing=0   cellpadding=0>
                        <tr   valign=left >
                            <td   align=left>
                                <input size="45" name=q title="需要科学上网" maxLength=255 onMouseOver="this.focus()" style="font-size: 16px;padding: 5px;">
                                <%--<script>--%>
                                    <%--document.f.q.focus(); //加载完成后激活Google搜索--%>
                                <%--</script>--%>
                                <input  type=hidden name=ie value="UTF-8"/>
                                <input  type=hidden name=oe value="UTF-8"/>
                                <input  type=submit value="Google搜索" name=btnG style="font-size: 16px;padding: 5px;"/>
                            </td>
                        </tr>
                        <tr>
                            <td  colspan=1>
                                <font   color=#0000cc style="FONT-SIZE: 12px;">
                                    <input  id=ch   type=radio   name=lr   value=lang_zh-CN|lang_zh-TW  checked >
                                    <label  for=ch style="font-weight:500;">搜索所有中文网页</label>
                                    <input  id=all   type=radio   name=lr   value="" >
                                    <label  for=all style="font-weight:500;">搜索所有网站</label>
                                </font>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="col-md-6">
                <!--baidu search need extra javascript code， which is in index.js-->
                <form name="search_form1" onsubmit="return go(this)" target="_self">
                    <input id="bd-search" name=word size="47" maxLength=256 title="百度搜索" onMouseOver="this.focus()" onFocus="this.select()">
                    <script>
                        document.search_form1.word.focus(); //加载完成后激活百度搜索
                    </script>
                    <input type="submit" value="百度搜索"><br>
                    <INPUT name=myselectvalue type=hidden value=0>
                    <INPUT name=tn type=hidden value="baidu">
                    <INPUT name=cl type=hidden value="3">
                    <INPUT name=myselect onclick=javascript:this.form.myselectvalue.value=0; type=radio value=0 CHECKED>
                    <FONT color=#0000cc style="FONT-SIZE:12px; font-weight:520;">互联网</FONT>
                    <INPUT name=myselect onclick=javascript:this.form.myselectvalue.value=1; type=radio value=1>
                    <FONT color=#ff0000 style="FONT-SIZE:12px; font-weight:520;">站内搜暂未激活</FONT>
                </form>
            </div>
        </div>
        <!-- search engine end -->

        <!-- Advanced Tables -->
        <div class="row" style="display:none">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="title-style panel-heading" style="background-color:#d9edf7;">
                        <b>模板</b>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th class="col-md-2">Name</th>
                                    <th class="col-md=6">Description</th>
                                    <th class="col-md-4">URL</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End Advanced Tables -->

        <!-- Advanced Tables -->
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="title-style panel-heading" style="background-color:#d9edf7;">
                        <b>软件下载</b>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th class="col-md-2">Name</th>
                                    <th class="col-md=6">Description</th>
                                    <th class="col-md-4">URL</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><a href="http://www.appinn.com/" title="">小众软件</a></td>
                                    <td>分享小众但好用的软件</td>
                                    <td><a href="http://www.appinn.com/" title="">http://www.appinn.com/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.iplaysoft.com/">异次元软件</a></td>
                                    <td>分享实用、绿色的软件</td>
                                    <td><a href="http://www.iplaysoft.com/">http://www.iplaysoft.com/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.apprcn.com/">反斗软件</a></td>
                                    <td>新奇、有趣、免费</td>
                                    <td><a href="http://www.apprcn.com/">http://www.apprcn.com/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://msdn.itellyou.cn/">MSDN</a></td>
                                    <td>微软产品下载中心</td>
                                    <td><a href="http://msdn.itellyou.cn/">http://msdn.itellyou.cn/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="https://alternativeto.net" title="">AlternativeTo</a></td>
                                    <td>查找某个软件的替代品</td>
                                    <td><a href="https://alternativeto.net" title="">https://alternativeto.net</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.dayanzai.me/">大眼仔旭</a></td>
                                    <td>分享破解软件、绿色软件、软件汉化</td>
                                    <td><a href="http://www.dayanzai.me/">http://www.dayanzai.me/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="https://www.portablesoft.org/">绿色便携软件</a></td>
                                    <td>追求绿色便携 打造干净系统</td>
                                    <td><a href="https://www.portablesoft.org/">https://www.portablesoft.org/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.ghboke.com/">果核剥壳</a></td>
                                    <td>还原软件的本质 实际就是破解</td>
                                    <td><a href="http://www.ghboke.com/">http://www.ghboke.com/</a></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <h6 id="bt"/>
                    </div>
                </div>
            </div>
        </div>
        <!--End Advanced Tables -->

        <!-- Advanced Tables -->
        <div class="row"><hr>
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="title-style panel-heading" style="background-color:#d9edf7;">
                        <b>BT下载</b>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th class="col-md-2">Name</th>
                                    <th class="col-md=6">Description</th>
                                    <th class="col-md-4">URL</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><a href="http://www.btbtt.me/" title="">BT之家</a></td>
                                    <td>最强的的BT资源分享社区</td>
                                    <td><a href="http://www.btbtt.me/" title="">http://www.btbtt.me/</a>
                                        <a href="http://www.btbtt.net/" title=""></a>
                                        <a href="http://www.btbtt.pw/" title=""></a>
                                        <a href="http://www.btbtt.co/" title=""></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="https://www.bttt.la/">BT天堂</a></td>
                                    <td>高清bt资源下载</td>
                                    <td><a href="https://www.bttt.la/">https://www.bttt.la/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.btcerise.me/" title="">BT樱桃</a></td>
                                    <td>最好用bt搜索网站</td>
                                    <td><a href="http://www.btcerise.me/" title="">http://www.btcerise.me/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.btanw.com/">Bt蚂蚁</a></td>
                                    <td>磁力链接搜索引擎</td>
                                    <td><a href="http://www.btanw.com/">http://www.btanw.com/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://dianying.fm/discovery/stolen-2012/">电影FM</a></td>
                                    <td>电影在线播放链接及资源下载</td>
                                    <td><a href="http://dianying.fm/discovery/stolen-2012/">http://dianying.fm/</a></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <h6 id="movie"/>
                    </div>
                </div>
            </div>
        </div>
        <!--End Advanced Tables -->

        <!-- Advanced Tables --><hr>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="title-style panel-heading" style="background-color:#d9edf7;">
                        <b>在线视频</b>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th class="col-md-2">Name</th>
                                    <th class="col-md=6">Description</th>
                                    <th class="col-md-4">URL</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><a href="http://www.ikanfan.com/" title="">爱看番</a></td>
                                    <td>小而美的动漫追番网站</td>
                                    <td><a href="http://www.ikanfan.com/" title="">http://www.ikanfan.com/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://dm.tsdm.tv/index.html">天使动漫</a></td>
                                    <td>新番动漫、无修动漫更新(谨防广告)</td>
                                    <td><a href="http://dm.tsdm.tv/index.html">http://dm.tsdm.tv/index.html</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.yxdm.tv/">怡萱动漫</a></td>
                                    <td>提供动漫在线观看及下载</td>
                                    <td><a href="http://www.yxdm.tv/">http://www.yxdm.tv/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.m4yy.com/">没事影院</a></td>
                                    <td>在线看电影-YY6042玄天影视</td>
                                    <td><a href="http://www.m4yy.com/">http://www.m4yy.com/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://ifkdy.com/">疯狂影视搜索</a></td>
                                    <td>聚合的网络资源搜索引擎</td>
                                    <td><a href="http://ifkdy.com/">http://ifkdy.com/</a></td>
                                </tr>
                                <tr class="hidden">
                                    <td><a href="http://www.zhuij8.com/">追剧吧</a></td>
                                    <td>电影电视剧在线观看</td>
                                    <td><a href="http://www.zhuij8.com/">http://www.zhuij8.com/</a></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <h6 id="tools"/>
                    </div>
                </div>
            </div>
        </div>
        <!--End Advanced Tables -->

        <!-- Advanced Tables --><hr>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="title-style panel-heading" style="background-color:#d9edf7;">
                        <b>在线工具</b>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th class="col-md-2">Name</th>
                                    <th class="col-md=6">Description</th>
                                    <th class="col-md-4">URL</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><a href="https://smallpdf.com/cn" title="">玩转pdf转换</a></td>
                                    <td>在线pdf与其他格式互转</td>
                                    <td><a href="https://smallpdf.com/cn" title="">https://smallpdf.com/cn</a></td>
                                </tr>
                                <tr>
                                    <td><a href="https://www.ilovepdf.com/zh_cn">I Love PDF</a></td>
                                    <td>PDF爱好者的在线工具合集</td>
                                    <td><a href="https://www.ilovepdf.com/zh_cn">https://www.ilovepdf.com/zh_cn</a></td>
                                </tr>
                                <tr>
                                    <td><a href="https://convertio.co/zh/" title="">文件转换器</a></td>
                                    <td>视频、图像、文档、电子书等文件格式转换</td>
                                    <td><a href="https://convertio.co/zh/" title="">https://convertio.co/zh/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="https://tool.css-js.com/">Css.Js</a></td>
                                    <td>CSS, JS压缩, 美化, 加密, 解密</td>
                                    <td><a href="https://tool.css-js.com/">https://tool.css-js.com/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="https://www.processon.com/">ProcessOn</a></td>
                                    <td>在线做流程图、思维导图</td>
                                    <td><a href="https://www.processon.com/">https://www.processon.com/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="https://www.zybuluo.com/mdeditor">Cmd Markdown</a></td>
                                    <td>在线编辑Markdown文档（可粘贴）</td>
                                    <td><a href="https://www.zybuluo.com/mdeditor">https://www.zybuluo.com/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="https://laobubu.net/MarkdownIME/index.zh.html">MarkdownIME</a></td>
                                    <td>实时在线编辑Markdown文档（不可粘贴）</td>
                                    <td><a href="https://laobubu.net/MarkdownIME/index.zh.html">https://laobubu.net/MarkdownIME/index.zh.html</a></td>
                                </tr>
                                <tr>
                                    <td><a href="https://www.opengps.cn/Default.aspx">OpenGPS</a></td>
                                    <td>高精度IP定位服务</td>
                                    <td><a href="https://www.opengps.cn/Default.aspx">https://www.opengps.cn/Default.aspx</a></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <h6 id="source"/>
                    </div>
                </div>
            </div>
        </div>
        <!--End Advanced Tables -->

        <!-- Advanced Tables --><hr>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="title-style panel-heading" style="background-color:#d9edf7;">
                        <b>资源合集</b>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th class="col-md-2">Name</th>
                                    <th class="col-md=6">Description</th>
                                    <th class="col-md-4">URL</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><a href="http://www.iconfont.cn/" title="">阿里巴巴矢量库</a></td>
                                    <td>千万矢量图标下载</td>
                                    <td><a href="http://www.iconfont.cn/" title="">http://www.iconfont.cn/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="https://pixabay.com/">pixabay</a></td>
                                    <td>免费高清图片、视频资源下载</td>
                                    <td><a href="https://pixabay.com/">https://pixabay.com/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="https://unsplash.com/">unsplash</a></td>
                                    <td>又一个免费图片下载站</td>
                                    <td><a href="https://unsplash.com/" title="不支持中文关键词搜索">https://unsplash.com/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="https://alpha.wallhaven.cc/">Wallhaven</a></td>
                                    <td>免费高清壁纸下载</td>
                                    <td><a href="https://alpha.wallhaven.cc/" title="不支持中文关键词搜索">https://alpha.wallhaven.cc/</a></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <h6 id="picture"/>
                    </div>
                </div>
            </div>
        </div>
        <!--End Advanced Tables -->

        <!-- Advanced Tables --><hr>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="title-style panel-heading" style="background-color:#d9edf7;">
                        <b>图像处理</b>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th class="col-md-2">Name</th>
                                    <th class="col-md=6">Description</th>
                                    <th class="col-md-4">URL</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><a href="http://bigjpg.com/" title="">Bigjpg</a></td>
                                    <td>AI人工智能无损图片放大</td>
                                    <td><a href="http://bigjpg.com/" title="">http://bigjpg.com/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://www.gaitubao.com/">改图宝</a></td>
                                    <td>压缩图片尺寸、加水印</td>
                                    <td><a href="http://www.gaitubao.com/">http://www.gaitubao.com/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="https://clippingmagic.com/">Clipping Magic</a></td>
                                    <td>在线去除图片背景</td>
                                    <td><a href="https://clippingmagic.com/">https://clippingmagic.com/</a></td>
                                </tr>
                                <tr>
                                    <td><a href="http://xiuxiu.web.meitu.com/">美图秀秀网页版</a></td>
                                    <td>拼图、图片编辑、动画、人像美容</td>
                                    <td><a href="http://xiuxiu.web.meitu.com/">http://xiuxiu.web.meitu.com/</a></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <h6 id="favourites"/>
                    </div>
                </div>
            </div>
        </div>
        <!--End Advanced Tables -->

        <!-- Advanced Tables --><hr>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="title-style panel-heading" style="background-color:#d9edf7;">
                        <b>软件杂谈</b>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover tablesorter" id="favourite-list">
                                <thead>
                                <tr class="header">
                                    <th class="col-md-2">Name</th>
                                    <th class="col-md=6">Description</th>
                                    <th class="col-md-4">URL</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="hidden">
                                    <td>谷歌访问助手</td>
                                    <td>访问谷歌搜索、谷歌chrome插件商店，gmail邮箱必备</td>
                                    <td><a href="http://www.ggfwzs.com/">http://www.ggfwzs.com/</a></td>
                                </tr>
                                <tr >
                                    <td>Core Temp</td>
                                    <td>显示CPU核心温度和占用率的小工具</td>
                                    <td><a href="http://www.alcpu.com/CoreTemp/">www.alcpu.com/CoreTemp</a></td>
                                </tr>
                                <tr >
                                    <td>12306抢票</td>
                                    <td>Windows上的12306分流抢票软件</td>
                                    <td><a href="http://www.12306bypass.com/">www.12306bypass.com</a></td>
                                </tr>
                                <tr >
                                    <td>SumatraPDF</td>
                                    <td>最敏捷的pdf阅读器</td>
                                    <td><a href="https://www.sumatrapdfreader.org/download-free-pdf-viewer.html">SumatraPDF下载</a></td>
                                </tr>
                                <tr >
                                    <td>EveryThing</td>
                                    <td>Windows文件搜索神器</td>
                                    <td><a href="http://www.voidtools.com/zh-cn/">http://www.voidtools.com/zh-cn/</a></td>
                                </tr>
                                <tr >
                                    <td>软件卸载工具</td>
                                    <td>专业的软件卸载工具，卸载无残留(Pro版要付费)</td>
                                    <td><a href="https://www.revouninstaller.com/revo_uninstaller_free_download.html">Revo Uninstaller</a>
                                        <a href="https://geekuninstaller.com/download">Geek Uninstaller</a></td>
                                </tr>
                                <tr >
                                    <td>Process Lasso</td>
                                    <td>进程级系统优化工具</td>
                                    <td><a href="http://www.processlassopro.com/bitsum/24328" >使用教程</a>&nbsp
                                        <a href="https://bitsum.com/" title="一般用户使用免费版即可">英文官网</a>&nbsp
                                        <a href="https://bitsum.com/files/processlassosetup64.exe" title="64位安装程序下载">下载</a>&nbsp
                                        <a href="http://www.processlassopro.com/bitsum/24452">切换语言</a></td>
                                </tr>
                                <tr >
                                    <td>Fliqlo</td>
                                    <td>翻页时钟式的屏保程序</td>
                                    <td><a href="https://fliqlo.com/#about">https://fliqlo.com/</a></td>
                                </tr>
                                <tr >
                                    <td>F.lux</td>
                                    <td>屏幕色温调节程序</td>
                                    <td><a href="https://justgetflux.com/">https://justgetflux.com/</a></td>
                                </tr>
                                <tr >
                                    <td>KMSpico</td>
                                    <td>Windows和Office破解激活软件</td>
                                    <td><a href="https://heldigard.wordpress.com/">KMSpico博客首页</a></td>
                                </tr>
                                <tr >
                                    <td>QuickLook</td>
                                    <td title="更好的替代品：付费软件Seer">一键快速预览文件内容</td>
                                    <td><a href="https://github.com/xupefei/QuickLook/releases" title="不建议机械硬盘用户使用">github.com/xupefei/QuickLook/</a></td>
                                </tr>
                                <tr >
                                    <td>Rufus</td>
                                    <td>轻松创建USB启动盘</td>
                                    <td><a href="http://rufus.akeo.ie/?locale=zh_CN">http://rufus.akeo.ie/?locale=zh_CN</a></td>
                                </tr>
                                <tr >
                                    <td>FadeTop</td>
                                    <td>定时休息提醒工具</td>
                                    <td><a href="http://www.fadetop.com/">http://www.fadetop.com/</a></td>
                                </tr>
                                <tr>
                                    <td>影音解码器</td>
                                    <td>为其他播放器提供不同格式的音视频文件解码</td>
                                    <td><a href="http://codecguide.com/">http://codecguide.com/</a></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End Advanced Tables -->
    </div>
</div>

        <!-- CONTENT-WRAPPER SECTION END-->
        <section class="footer-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        &copy; 2018 <a href="http://www.cnblogs.com/wang1024/" title="我的博客首页">博客首页</a>
                        <a href="https://github.com/Zephyr006" title="我的Github首页">Github首页</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- FOOTER SECTION END-->
</body>
<%@include file="layout/include-footer.jsp"%>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- tablesorter表格排序插件 -->
<script src="https://cdn.bootcss.com/jquery.tablesorter/2.27.8/js/jquery.tablesorter.min.js"></script>
<!-- CUSTOM SCRIPTS  -->
<script src="${ctx}/assets/js/index.js"></script>
<!-- DATATABLE SCRIPTS  -->
<!-- <script src="assets/js/dataTables/jquery.dataTables.js"></script> -->
<!-- <script src="assets/js/dataTables/dataTables.bootstrap.js"></script> -->
</html>
