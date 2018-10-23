<%@ page import="javax.swing.plaf.synth.SynthTextAreaUI" %>
<%@ page import="com.learnjava.HelloWorld" %>
<%@ page import="com.learnjava.MyBean" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/10/23
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test Jsp Life</title>
</head>
<body>

<jsp:useBean id="test" class="com.learnjava.MyBean"/>
<%!
    private int initVar = 0;
    private int serviceVar = 0;
    private int destroyVar = 0;
%>
<%!
   public void jspInit(){
       initVar  ++;
       System.out.println("jspInit():JSP被初始化了：" + initVar + "次");
   }
   HelloWorld helloWorld = new HelloWorld();
%>
<jsp:setProperty name="test" property="name" value="你好"></jsp:setProperty>

<%!
    public void jspDestroy(){
        destroyVar++;
        System.out.println("jspDestroy():JSP被销毁了: " + destroyVar + "次");
    }
%>
<%

    helloWorld.say("dfasdfa");
    serviceVar ++;
    System.out.println("_jspService():JSP共响应了: " + serviceVar + "次");

    String content1 = "初始化次数:" + initVar;
    String content2 = "销毁次数:" + destroyVar;
    String content3 = "响应客户次数:" + serviceVar;
    //response.sendRedirect("http://www.baidu.com");
    //request.getRequestDispatcher("https://www.baidu.com").forward(request,response);
%>
<h1>JSP实例测试</h1>
<%=content1%>
<%=content2%>
<%=content3%>
<%=test.getName()%>
</body>
</html>
