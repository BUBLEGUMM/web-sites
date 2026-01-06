<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="page1.aspx.cs" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>


</style>
    <h1>דף הרשמה</h1>
  <form>
   שם פרטי: <input type="text" name="firstname" id="firstname" placeholder="example">
        <br />
        כמה זמן אתה מתאמן 
        <br />
              פחות משנה<input type="radio" name="check2" value="פחות משנה"  id="radio_1.0"><br />
              שנה: <input type="radio" name="check2" value="שנה" id="radio_2.0"><br />
              שנתיים: <input type="radio" name="check2" value="שנתיים" id="radio_3.0"> <br />
       יותר משנתיים <input type="radio" name="check2" checked value="יותר משנתיים" id="radio_4.0"><br />
         <br />
        תוכנית אימונים שתרצה : 
        <br />
        full body<input type="radio" name="radio1" checked value="full body" id="radio_1"><br />
        upper lower<input type="radio" name="radio1" value="upper lower" id="radio_2"><br />
        anterior posterior<input type="radio" name="radio1" value="anterior posterior" checked id="radio_3"><br />
        push pull legs<input type="radio" name="radio1" value="push pull legs" id="radio_4"><br />
        תשובה פתוחה:
        <textarea rows="3" cols="20" name="textarea1" id="textarea1" placeholder="הכנס הערה אם יש"></textarea>
        <br />
      <br />
                <textarea rows="1" cols="10" name="textarea2" id="age" placeholder="הכנס גיל "></textarea>
           
        <br />
        <input id="Submit1" type="submit" value="שלח" />
</form>
    <br />
    <%=name %>
    <br />
    <%=years %>
    <br />
    <%=split %>
    <br />
    <%=age %>

</asp:Content>

