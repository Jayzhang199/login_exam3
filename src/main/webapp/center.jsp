<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="${pageContext.request.contextPath}/bootstrap2.3.2/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <link href="${pageContext.request.contextPath}/css/Common.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/Index2.css" rel="stylesheet" />
    <script type="text/javascript" src="../../js/jquery-1.9.1.min.js"></script>
    <%--页面加载的时候发送ajax请求后台数据--%>
    <script>
        $(function () {
            var user = "<%=session.getAttribute("user")%>"
            var url = "/customer/query.shtml"
            $.post(url,{"user":user},function(data){
                console.log(data)
                $(data).each(function(index,element){
                    /*<th>客户名称</th>
                    <th>客户类型</th>
                    <th>客户电话</th>
                    <th>客户地址</th>
                    <th>所属用户角色</th>
                    <th>操作</th>*/
                    $("#tbody").append("<tr>")
                    $("#tbody").append("<th>"+element.cust_name+"</th>");
                    $("#tbody").append("<th>"+element.cust_type+"</th>");
                    $("#tbody").append("<th>"+element.cust_phone+"</th>");
                    $("#tbody").append("<th>"+element.cust_address+"</th>");
                    $("#tbody").append("<th>"+element.cust_link_user+"</th>");
                    $("#tbody").append("<th><a href='/customer/delete.shtml?id='"+element.cid+">删除</a></th>");
                    $("#tbody").append("<tr/>")
                })
            },"json")
        })
        function add(){
            $("#addForm").submit();
        }
        function delet

    </script>
</head>
<body>
    <div class="container-fluid">
        <div class="row-fluid">
            <h4>数据列表</h4>
            <div>
            	<form action="/customer/query.shtml" ,method="post">
            		 <div class="uinArea" id="uinArea">
						客户名称：
                	 <input type="text" id="cust_username" name="cust_username" class="inputstyle"/>
                		客户类型：
               		<input type="text" id="cust_type" name="cust_type" class="inputstyle"/>
               		<input type="submit" value="查询" style="width:60px;" class="button_blue"/>
                </div>
            	</form>
            </div>
            <div class="add"><a class="btn btn-success" onclick="openadd();">新增</a></div>
            <div class="w">
                <div class="span12">
                    <table class="table table-condensed table-bordered table-hover tab">
                        <thead>
                            <tr>
                                <th>客户名称</th>
                                <th>客户类型</th>
                                <th>客户电话</th>
                                <th>客户地址</th>
                                <th>所属用户角色</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody id="tbody">
                        	 <tr>
                                <th>123</th>
                                <th>123</th>
                                <th>123</th>
                                <th>123</th>
                                <th>123</th>
                                <th><a href="#">删除</a></th>
                            </tr>
                             <tr>
                                <th>123</th>
                                <th>123</th>
                                <th>123</th>
                                <th>123</th>
                                <th>123</th>
                                <th><a href="#">删除</a></th>
                            </tr>
                        </tbody>
                    </table>
                    <div id="page" class="tr"></div>
                </div>
            </div>

            <div id="addModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel">添加客户</h3>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="addForm" action="/customer/addCustomer.shtml" method="post">
                        <div class="control-group">
                            <label class="control-label" for="userName">客户名称</label>
                            <div class="controls">
                                <input type="text" id="userName" name="cust_name" placeholder="客户名称">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="Chinese">客户类型</label>
                            <div class="controls">
                                <input type="text" id="Chinese" name="cust_type" placeholder="客户类型">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="Math">客户电话</label>
                            <div class="controls">
                                <input type="text" id="Math" name="cust_phone" placeholder="客户电话">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="English">客户地址</label>
                            <div class="controls">
                                <input type="text" id="English" name="cust_address" placeholder="客户地址">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="Chinese">所属用户角色</label>
                            <div class="controls">
                                <input type="text" id="English" name="cust_link_user" placeholder="所属用户角色">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
                    <button class="btn btn-primary" id="add" onclick="add();">保存</button>
                </div>
            </div>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap2.3.2/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/Index2.js"></script>
</body>
</html>