<%-- 
    Document   : updatebook
    Created on : 2018-3-3, 6:11:09
    Author     : DELL
--%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.QI.model.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body style="padding-top:70px">

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">BACKEND</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
            <li class="active"><a href="./book">AllBOOKS</a></li>
            <li><a href="./addbook.jsp">ADDBOOK</a></li>
            <li><a href="./discount">DISCOUNT</a></li>
            <li><a href="./topup">TOPUP</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                  <%Admin p = (Admin) session.getAttribute("loginPerson");%> <%=p.getAccount()%> 
                  <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="./logout">Logout</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->

    <div class="container">
      <!-- Example row of columns -->
      <div class="col-md-3" style="margin-bottom:10px;">
          <%Book bk = (Book) session.getAttribute("updateBook");%>
          <form role="form" action="updateokbookServlet" method="post">
              <div class="form-group">
    <label for="exampleInputEmail1">Book Number</label>
    <input type="text" class="form-control" name="number" value="<%=bk.getNumber()%>" readonly="readonly">
  </div>
	<div class="form-group">
		<label for="name">category</label>
		<select id="category" class="form-control" name="category" >
			<option value="computer">computer</option>
			<option value="bio">bio</option>
                        <option value="music">music</option>
                        <option value="movie">movie</option>
		</select>
	</div>
              <div class="form-group">
    <label for="exampleInputEmail1">Book Name</label>
    <input type="text" class="form-control" name="title" value="<%=bk.getTitle()%>">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Author</label>
    <input type="text" class="form-control" name="writer" value="<%=bk.getWriter()%>">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Price</label>
    <input type="text" class="form-control" name="price" value="<%=bk.getPrice()%>">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Amount</label>
    <input type="text" class="form-control" name="amount" value="<%=bk.getAmount()%>">
  </div>
              <button type="submit" class="btn btn-default">Submit</button>
</form>
      </div>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    <script>
        window.onload=function (){

        $('#category').val("<%=bk.getCategory()%>");

    }
    </script>
  </body>
</html>

