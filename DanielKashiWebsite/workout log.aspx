<%@ Page Title="יומן אימונים - מאמן אישי" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="workout log.aspx.cs" Inherits="page1" %>

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
            background-color: #2ecc71;
            color: white;
            border: none;
            padding: 13px;
            font-size: 1.15rem;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.2s ease, transform 0.1s ease;
            margin-top: 20px;
        }

        .btn-submit:hover {
            background-color: #27ae60;
        }

        .server-status {
            display: block;
            text-align: center;
            margin-top: 15px;
            font-weight: bold;
            color: #e74c3c;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-container">
        <h1 class="form-title">תיעוד ושמירת אימון</h1>
        <p class="form-subtitle">מלא את פרטי האימון שביצעת כדי לשמור אותו בהיסטוריית האימונים שלך</p>
        
        <form runat="server" method="post">
            
            <div class="form-group">
                <label for="time">שעת האימון:</label>
                <input type="text" name="time" id="time" class="form-control" placeholder="לדוגמה: 18:00">
            </div>

            <div class="form-group">
                <label for="length">משך זמן האימון:</label>
                <input type="text" name="length" id="length" class="form-control" placeholder="לדוגמה: שעה ורבע">
            </div>

            <div class="form-group">
                <label for="date">תאריך האימון:</label>
                <input type="text" name="date" id="date" class="form-control" placeholder="לדוגמה: 12/05/2026">
            </div>

            <div class="form-group">
                <label for="type">סוג האימון:</label>
                <input type="text" name="type" id="type" class="form-control" placeholder="לדוגמה: פלג גוף עליון / Push">
            </div>

            <div class="form-group">
                <label for="exercises">תרגילים שבוצעו:</label>
                <input type="text" name="exercises" id="exercises" class="form-control" placeholder="לדוגמה: סקוואט, לחיצת חזה, מתח">
            </div>

            <input id="Submit1" type="submit" value="שמור אימון במערכת" class="btn-submit" />
            
        </form>

        <% if (!string.IsNullOrEmpty(st)) { %>
            <div class="server-status"><%= st %></div>
        <% } %>
    </div>
</asp:Content>