<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>论坛首页</title>
<link href="${pageContext.request.contextPath}/static/css/main.css" rel="stylesheet" type="text/css" />

<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/static/js/plugins/spinner/ui.spinner.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/spinner/jquery.mousewheel.js"></script>

<script src="${pageContext.request.contextPath}/static/js/jquery-ui.min.js"></script>

<script src="${pageContext.request.contextPath}/static/js/plugins/charts/excanvas.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/charts/jquery.flot.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/charts/jquery.flot.orderBars.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/charts/jquery.flot.pie.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/charts/jquery.flot.resize.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/charts/jquery.sparkline.min.js"></script>

<script src="${pageContext.request.contextPath}/static/js/plugins/forms/uniform.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/forms/jquery.cleditor.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/forms/jquery.validationEngine-en.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/forms/jquery.validationEngine.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/forms/jquery.tagsinput.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/forms/autogrowtextarea.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/forms/jquery.maskedinput.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/forms/jquery.dualListBox.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/forms/jquery.inputlimiter.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/forms/chosen.jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/static/js/plugins/wizard/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/wizard/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/wizard/jquery.form.wizard.js"></script>

<script src="${pageContext.request.contextPath}/static/js/plugins/uploader/plupload.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/uploader/plupload.html5.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/uploader/plupload.html4.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/uploader/jquery.plupload.queue.js"></script>

<script src="${pageContext.request.contextPath}/static/js/plugins/tables/datatable.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/tables/tablesort.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/tables/resizable.min.js"></script>

<script src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.tipsy.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.collapsible.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.prettyPhoto.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.progress.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.timeentry.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.colorpicker.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.jgrowl.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.breadcrumbs.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.sourcerer.js"></script>

<script src="${pageContext.request.contextPath}/static/js/plugins/calendar.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/plugins/elfinder.min.js"></script>

<script src="${pageContext.request.contextPath}/static/js/custom.js"></script>

<script src="${pageContext.request.contextPath}/static/js/charts/chart.js"></script>

<!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>

<body>

<!-- Left side content -->
<%@ include file="user_left_side.jsp" %>

<!-- Right side -->
<div id="rightSide">

    <!-- Top fixed navigation -->
    <%@ include file="user_top_nav.jsp" %>
    
    <!-- Responsive header -->
    <div class="resp">
        <div class="respHead">
            <a href="index.html" title=""><img src="${pageContext.request.contextPath}/static/images/loginLogo.png" alt="" /></a>
        </div>
        
        <div class="cLine"></div>
        <div class="smalldd">
            <span class="goTo"><img src="${pageContext.request.contextPath}/static/images/icons/light/home.png" alt="" />Dashboard</span>
            <ul class="smallDropdown">
                <li><a href="index.html" title=""><img src="${pageContext.request.contextPath}/static/images/icons/light/home.png" alt="" />Dashboard</a></li>
                <li><a href="charts.html" title=""><img src="${pageContext.request.contextPath}/static/images/icons/light/stats.png" alt="" />Statistics and charts</a></li>
                <li><a href="#" title="" class="exp"><img src="${pageContext.request.contextPath}/static/images/icons/light/pencil.png" alt="" />Forms stuff<strong>4</strong></a>
                    <ul>
                        <li><a href="forms.html" title="">Form elements</a></li>
                        <li><a href="form_validation.html" title="">Validation</a></li>
                        <li><a href="form_editor.html" title="">WYSIWYG and file uploader</a></li>
                        <li class="last"><a href="form_wizards.html" title="">Wizards</a></li>
                    </ul>
                </li>
                <li><a href="ui_elements.html" title=""><img src="${pageContext.request.contextPath}/static/images/icons/light/users.png" alt="" />Interface elements</a></li>
                <li><a href="tables.html" title="" class="exp"><img src="${pageContext.request.contextPath}/static/images/icons/light/frames.png" alt="" />Tables<strong>3</strong></a>
                    <ul>
                        <li><a href="table_static.html" title="">Static tables</a></li>
                        <li><a href="table_dynamic.html" title="">Dynamic table</a></li>
                        <li class="last"><a href="table_sortable_resizable.html" title="">Sortable &amp; resizable tables</a></li>
                    </ul>
                </li>
                <li><a href="#" title="" class="exp"><img src="${pageContext.request.contextPath}/static/images/icons/light/fullscreen.png" alt="" />Widgets and grid<strong>2</strong></a>
                    <ul>
                        <li><a href="widgets.html" title="">Widgets</a></li>
                        <li class="last"><a href="grid.html" title="">Grid</a></li>
                    </ul>
                </li>
                <li><a href="#" title="" class="exp"><img src="${pageContext.request.contextPath}/static/images/icons/light/alert.png" alt="" />Error pages<strong>6</strong></a>
                    <ul class="sub">
                        <li><a href="403.html" title="">403 page</a></li>
                        <li><a href="404.html" title="">404 page</a></li>
                        <li><a href="405.html" title="">405 page</a></li>
                        <li><a href="500.html" title="">500 page</a></li>
                        <li><a href="503.html" title="">503 page</a></li>
                        <li class="last"><a href="offline.html" title="">Website is offline</a></li>
                    </ul>
                </li>
                <li><a href="file_manager.html" title=""><img src="${pageContext.request.contextPath}/static/images/icons/light/files.png" alt="" />File manager</a></li>
                <li><a href="#" title="" class="exp"><img src="${pageContext.request.contextPath}/static/images/icons/light/create.png" alt="" />Other pages<strong>3</strong></a>
                    <ul>
                        <li><a href="typography.html" title="">Typography</a></li>
                        <li><a href="calendar.html" title="">Calendar</a></li>
                        <li class="last"><a href="gallery.html" title="">Gallery</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="cLine"></div>
    </div>
    
    <!-- Main content wrapper -->
    <div class="wrapper">
        <!-- Media table -->
        <div class="widget">
            <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
            	<thead>
            	<tr>
            		<th>用户</th>
            		<th>标题</th>
            		<th>发帖时间</th>
            		</tr>
            	</thead>
            	<tbody>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	<tr class="gradeA">
            		<td>zhangSan</td>
            		<td>疯狂的赛车</td>
            		<td class="center">4</td>
            	</tr>
            	</tbody>
   			</table>
        </div>
    </div>
    
    <!-- Footer line -->
    <div id="footer">
        <div class="wrapper">&nbsp;</div>
    </div>

</div>

<div class="clear"></div>

</body>
</html>
    