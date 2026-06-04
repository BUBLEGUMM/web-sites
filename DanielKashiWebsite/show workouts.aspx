<%@ Page Title="הצגת אימונים - מאמן אישי" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="show workouts.aspx.cs" Inherits="showMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .form-container {
            max-width: 500px;
            margin: 40px auto;
            background-color: #ffffff;
            padding: 35px 40px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            border: 1px solid #e2e8f0;
            text-align: right;
        }

        .form-title {
            text-align: center;
            color: #1a252f;
            margin-bottom: 10px;
            font-size: 2rem;
            font-weight: bold;
        }

        .form-subtitle {
            text-align: center;
            color: #7f8c8d;
            margin-bottom: 30px;
            font-size: 1rem;
        }

        .form-group {
            margin-bottom: 20px;
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
            padding: 11px 15px;
            border: 1px solid #cbd5e1;
            border-radius: 8px;
            font-size: 1rem;
            color: #333;
            box-sizing: border-box;
            transition: all 0.3s ease;
            font-family: inherit;
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
            padding: 13px;
            font-size: 1.15rem;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.2s ease, transform 0.1s ease;
            margin-top: 15px;
        }

        .btn-submit:hover {
            background-color: #2980b9;
        }

        .results-container {
            max-width: 1000px;
            margin: 30px auto;
            padding: 0 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-container">
        <h1 class="form-title">חיפוש וסנון אימונים</h1>
        <p class="form-subtitle">הזן תאריך או סוג אימון כדי לצפות ברשימת האימונים המבוקשים</p>
        
        <form runat="server" method="post">
            
            <div class="form-group">
                <label for="DateCheck">תאריך אימון:</label>
                <input type="text" name="DateCheck" id="DateCheck" class="form-control" placeholder="לדוגמה: 12/05/2026">
            </div>

            <div class="form-group">
                <label for="TypeCheck">סוג האימון:</label>
                <input type="text" name="TypeCheck" id="TypeCheck" class="form-control" placeholder="לדוגמה: Push / חזה">
            </div>

            <input id="Submit1" type="submit" value="חפש אימונים" class="btn-submit" />
            
        </form>
    </div>

    <% if (!string.IsNullOrEmpty(st)) { %>
        <div class="results-container">
            <%= st %>
        </div>
    <% } %>
</asp:Content>