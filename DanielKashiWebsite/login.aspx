<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <h1>כניסת משתמש</h1>
        <form name="loginForm" method="post" runat="server" >
            <table>
                <tr>
                    <td>מייל</td>
                    <td><input name="email2" id="email2" type="text" /></td>
                </tr>
                <tr>
                    <td>סיסמה</td>
                    <td><input name="pass" id="pass" type="text" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center"><input id="submit1" type="submit" value="submit" /></td>
                </tr>
            </table>
            <%=st %>
        </form>
    </center>
</asp:Content>

