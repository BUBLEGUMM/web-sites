<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="workout log.aspx.cs" Inherits="page1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>


</style>
    <h1>שמירת אימונים</h1>
  <form runat="server" method="post">
זמן: <input type="text" name="time" id="time" placeholder="">

    <br />

אורך זמן האימון: <input type="text" name="length" id="length" placeholder="one hour">

    <br />

תאריך האימון: <input type="text" name="date" id="date" placeholder="">

    <br />

סוג האימון: <input type="text" name="type" id="type" placeholder=""> 

    <br />

תרגילים: <input type="text" name="exercises" id="exercises" placeholder="">

    <br />

        <input id="Submit1" type="submit" value="שמור" />
</form>
    <%=st%>

</asp:Content>

