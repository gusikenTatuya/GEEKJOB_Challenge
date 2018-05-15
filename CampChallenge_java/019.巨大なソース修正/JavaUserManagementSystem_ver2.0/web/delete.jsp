<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    UserDataDTO udd = (UserDataDTO)request.getAttribute("resultData");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <h1>削除確認</h1>
    以下の内容を削除します。よろしいですか？
    名前:<%= udd.getName()%><br>
    生年月日:<%= udd.getBirthday()%><br>
    種別:<%= udd.getType()%><br>
    電話番号:<%= udd.getTell()%><br>
    自己紹介:<%= udd.getComment()%><br>
    登録日時:<%= udd.getNewDate()%><br>
    
    <form action="DeleteResult" method="get">
        <button type="submit" name="はい" value="<%= udd.getUserID()%>" style="width:100px">はい</button>
    </form>
    
    
    <form action="ResultDetail" method="get">
        <button type="submit" name="いいえ" value="<%= udd.getUserID()%>" style="width:100px">いいえ</button><br>
    </form>
     
    <%=jh.syousai()%><br>
    
    <%=jh.home()%>
    
    </body>
   
</html>
