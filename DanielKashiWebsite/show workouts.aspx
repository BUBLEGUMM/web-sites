<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="show workouts.aspx.cs" Inherits="showMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>show memebers</h1>
       <form runat="server" method="post">

   תאריך: <input type="text" name="DateCheck" id="DateCheck" placeholder="exmple">

        <br />

      סוג אימון: <input type="text" name="TypeCheck" id="TypeCheck" placeholder="example">
        
        <br />

        <input id="Submit1" type="submit" value="שלח" />
</form>
    <br>
    <%=st %>
</asp:Content>

