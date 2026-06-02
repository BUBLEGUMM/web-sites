<%@ Page Title="צור קשר - מאמן אישי" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* מכולה מרכזית לפרטי הקשר */
        .contact-box {
            max-width: 500px;
            margin: 60px auto;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            border: 1px solid #e2e8f0;
            text-align: right;
        }

        /* כותרת דף */
        .contact-title {
            text-align: center;
            color: #1a252f;
            margin-bottom: 10px;
            font-size: 2.2rem;
            font-weight: bold;
        }

        .contact-subtitle {
            text-align: center;
            color: #7f8c8d;
            margin-bottom: 35px;
            font-size: 1.1rem;
        }

        /* עיצוב שורות המידע */
        .contact-item {
            font-size: 1.3rem;
            color: #2c3e50;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            padding: 15px;
            background-color: #f8fafc;
            border-radius: 10px;
            border-right: 5px solid #3498db; /* פס כחול בצד ימין */
        }

        .contact-item:last-child {
            margin-bottom: 0;
        }

        .contact-icon {
            font-size: 1.8rem;
            margin-left: 15px; /* רווח נכון לעברית */
        }

        /* עיצוב הקישורים */
        .contact-item a {
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.2s ease;
        }

        .contact-item a:hover {
            color: #2980b9;
            text-decoration: underline;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="contact-box">
        <h1 class="contact-title">צור קשר</h1>
        <p class="contact-subtitle">זמין עבורכם לכל שאלה, התייעצות או תיאום אימון אישי</p>

        <div class="contact-item">
            <span class="contact-icon">📞</span>
            <span>טלפון נייד: <a href="tel:0501234567"><strong>050-1234567</strong></a></span>
        </div>

        <div class="contact-item">
            <span class="contact-icon">✉️</span>
            <span>אימייל: <a href="mailto:contactme@gmail.com">contactme@gmail.com</a></span>
        </div>
    </div>

</asp:Content>