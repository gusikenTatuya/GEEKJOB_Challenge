<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper"%>
<%
    HttpSession hs = request.getSession();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
    <% if(!hs.getAttribute("name").equals("")){ %>
        <h1>登録確認</h1>
        userID<%= session.getAttribute("uID")%><br>
        名前:<%= hs.getAttribute("name")%><br>
        生年月日:<%= hs.getAttribute("year")+"年"+hs.getAttribute("month")+"月"+hs.getAttribute("day")+"日"%><br>
        種別:<%= hs.getAttribute("type")%><br>
        電話番号:<%= hs.getAttribute("tell")%><br>
        自己紹介:<%= hs.getAttribute("comment")%><br>
        上記の内容で登録します。よろしいですか？
        
        
        
        <form action="insertresult" method="get">
            <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="yes" value="はい">
        </form>
    <% }else{ %>
        <h1>入力が不完全です</h1>
    <% } %>
        <form action="./insert.jsp" method="get">
            <input type="submit" name="no" value="登録画面に戻る"><br><br>
        </form>
        <%=JumsHelper.getInstance().modoru()%><br><br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
