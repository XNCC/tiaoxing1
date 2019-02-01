<!--index.jsp-->
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <!DOCTYPE 
    html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> <html> 
    <head> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <script type="text/javascript"src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
<script type="text/javascript"src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript"src="http://code.jquery.com/jquery-1.4.1.min.js"></script>

<script type="text/javascript"src="http://code.jquery.com/jquery-1.4.1.js"></script> 
 

  <link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css"/>
    <script src="http://code.jquery.com/jquery-1.8.0.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>
 
 

  <link rel="stylesheet"href="http://apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="http://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="jquery.min.js"></script>
  
  <script src=""></script>



    <script type="text/javascript">
    $(function(){
        $("#btn").click(function(){
            // get方式的Ajax请求
            $.get("${ pageContext.request.contextPath}/service.ServletDemo2",{"username":"somnus","password":"somnus"},function(data){
                $("#div").html(data);
            });
        });
    });

    $(function() {
        // load方式的Ajax请求
        $("#btn2").click(function() {
            $("#div2").load("${ pageContext.request.contextPath}/service.ServletDemo2",{"username":"somnus","password":"somnus"});
        });
    });

    $(function() {
        $("#btn3").click(function(){
            // post方式的Ajax请求
            $.post("${ pageContext.request.contextPath}/service.ServletDemo2",{"username":"somnus","password":"somnus"},function(data){
                $("#div3").html(data);
            });
        });
    });
    $(function() {
        $("#btn4").click(function(){
            // ajax方式的Ajax请求
            alert("123");
            $.ajax({type:"GET",url:"${ pageContext.request.contextPath}/service.ServletDemo2?username=somnus&password=somnus",context: document.body,success:function(data){
                $("#div4").html(data);
            }});
            alert("123");
        });
    });
</script> 
</head> 
<body> 
<h1>JQuery中Ajax的操作</h1> 
<div id="div" style="width: 200px;height:200px"> 
</div> 
       <input type="button" value="test1" id="btn"/> 
<div id="div2" style="width: 200px;height:200px"> 
</div> 
      <input type="button" value="test2" id="btn2"/> 
<div id="div3" style="width: 200px;height:200px"> 
</div> 
      <input type="button" value="test3" id="btn3"/> 
<div id="div4" style="width: 200px;height:200px"> 
</div> 
    <input type="button" value="test4" id="btn4"/> 
</body> 
</html>
