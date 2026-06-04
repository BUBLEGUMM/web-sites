<%@ Page Title="כניסת משתמש - מאמן אישי" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .login-container {
            max-width: 400px;
            margin: 40px auto;
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            border: 1px solid #e2e8f0;
        }

        .login-title {
            text-align: center;
            color: #1a252f;
            margin-bottom: 25px;
            font-size: 1.8rem;
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: right;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #4a5568;
            font-weight: 600;
            font-size: 0.95rem;
        }

        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #cbd5e1;
            border-radius: 8px;
            font-size: 1rem;
            color: #333;
            box-sizing: border-box;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            outline: none;
            border-color: #3498db;
            box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.15);
        }

        .btn-submit {
            width: 100%;
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px;
            font-size: 1.1rem;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.2s ease;
            margin-top: 10px;
        }

        .btn-submit:hover {
            background-color: #2980b9;
        }

        .error-message {
            display: block;
            text-align: center;
            color: #e74c3c;
            font-weight: bold;
            margin-top: 15px;
            font-size: 0.95rem;
            background-color: #fde8e8;
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #f8b4b4;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="login-container">
        <h1 class="login-title">כניסת משתמש</h1>
        
        <form name="loginForm" method="post" runat="server">               
            
            <div class="form-group">
                <label for="email2">אימייל:</label>
                <input name="email2" id="email2" type="text" class="form-control" placeholder="example@gmail.com" />
            </div>
            
            <div class="form-group">
                <label for="pass">סיסמה:</label>
                <input name="pass" id="pass" type="password" class="form-control" placeholder="הקלד סיסמה..." />
            </div>
            
            <input id="submit1" type="submit" value="התחברות" class="btn-submit" />
            
            <% if (!string.IsNullOrEmpty(st)) { %>
                <span class="error-message"><%= st %></span>
            <% } %>
            
        </form>
    </div>
    
</asp:Content>