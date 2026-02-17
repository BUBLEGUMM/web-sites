<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showMembers.aspx.cs" Inherits="showMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>show memebers</h1>
       <form runat="server" method="post">
   סיסמא: <input type="text" name="passcheck" id="passcheck" placeholder="exmple">
        <br />
      אימייל: <input type="text" name="gmailcheck" id="gmailcheck" placeholder="example">
        
        <br />
        <input id="Submit1" type="submit" value="שלח" />
</form>
    <br>
    <%=st %>
</asp:Content>

