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
    <h1>דף ראשי</h1>
  <table style="width:50%">
      <tr>
          <td><a href="page2.aspx">  <img src="images/תמונה3.png"style="width;200px;height:100px;" /></a></td>
          <td><a href="page3.aspx">page3</a></td>
      </tr>
  </table>
</asp:Content>

