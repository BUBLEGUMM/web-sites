<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="page1.aspx.cs" Inherits="page1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>


</style>
    <h1>דף הרשמה</h1>
  <form runat="server" method="post">
   שם פרטי: <input type="text" name="name" id="name" placeholder="exmple">
        <br />
      אימייל: <input type="text" name="gmail" id="gmail" placeholder="example">
     <br />
     סיסמא: <input type="text" name="password" id="password" placeholder="example">
     <br />
        כמה זמן אתה מתאמן 
        <br />
              פחות משנה<input type="radio" name="experience" value="פחות משנה"  id="radio_1.0"><br />
              שנה: <input type="radio" name="experience" value="שנה" id="radio_2.0"><br />
              שנתיים: <input type="radio" name="experience" value="שנתיים" id="radio_3.0"> <br />
       יותר משנתיים <input type="radio" name="experience" checked value="יותר משנתיים" id="radio_4.0"><br />
         <br />
        תוכנית אימונים שתרצה : 
        <br />
        full body<input type="radio" name="split" checked value="full body" id="radio_1"><br />
        upper lower<input type="radio" name="split" value="upper lower" id="radio_2"><br />
        anterior posterior<input type="radio" name="split" value="anterior posterior" checked id="radio_3"><br />
        push pull legs<input type="radio" name="split" value="push pull legs" id="radio_4"><br />
        תשובה פתוחה:
        <textarea rows="3" cols="20" name="comment" id="textarea1" placeholder="הכנס הערה אם יש"></textarea>
        <br />
      <br />
                <textarea rows="1" cols="10" name="age" id="age" placeholder="הכנס גיל "></textarea>
           
        <br />
        <input id="Submit1" type="submit" value="שלח" />
</form>
    <%=st%>

</asp:Content>

