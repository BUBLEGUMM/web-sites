<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1>כניסת משתמש</h1>
        <form name="loginForm" method="post" runat="server" >               
מייל
 <input name="email2" id="email2" type="text" />
<br />  
<br />
 סיסמה
<input name="pass" id="pass" type="text" />
<br />
 <br />
  <input id="submit1" type="submit" value="submit" /></>
       
 <%=st %>
 </form>
    
  
</asp:Content>

