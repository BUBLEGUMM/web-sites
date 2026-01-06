<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="page1.aspx.cs" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
table, th, td {
  border:1px solid black;
  border-collapse:co
}
th, td{
    background-color:
}

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
        בעל חיים אהוב: 
        <br />
        כלב<input type="radio" name="radio1" checked value="כלב" id="radio_1"><br />
        חתול<input type="radio" name="radio1" value="חתול" id="radio_2"><br />
        סוס<input type="radio" name="radio1" value="סוס" checked id="radio_3"><br />
        ארנב<input type="radio" name="radio1" value="ארנב" id="radio_4"><br />
        תשובה פתוחה:
        <textarea rows="5" cols="20" name="textarea1" id="textarea1" placeholder="הכנס מלל חופשי"></textarea>
        <br />
        <select name="age" id="age">
            <option value="0">בחר גיל</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
        </select>
        <br />
        <input id="Submit1" type="submit" value="שלח" />
</form>
    <br />
    <%=name %>
    <br />
    <%=years %>
</asp:Content>

