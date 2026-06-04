<%@ Page Title="מחירון - מאמן אישי" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pricing.aspx.cs" Inherits="page_5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .pricing-title {
            text-align: center;
            color: #1a252f;
            margin-bottom: 10px;
            font-size: 2.2rem;
        }

        .pricing-subtitle {
            text-align: center;
            color: #7f8c8d;
            margin-bottom: 40px;
            font-size: 1.1rem;
        }

        .price-card {
            background-color: #ffffff;
            border-radius: 15px;
            padding: 30px 20px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            transition: all 0.3s ease;
            text-align: center;
            border: 1px solid #e2e8f0;
        }

        .price-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.1);
            border-color: #3498db;
        }

        .plan-name {
            font-size: 1.5rem;
            color: #2c3e50;
            margin-bottom: 15px;
            font-weight: bold;
        }

        .plan-price {
            font-size: 2.5rem;
            color: #3498db; 
            font-weight: bold;
            margin-bottom: 20px;
        }
        
        .plan-price span {
            font-size: 1rem;
            color: #95a5a6;
        }

        .features-list {
            list-style: none;
            padding: 0;
            margin: 0 0 30px 0;
            text-align: right;
            display: inline-block;
        }

        .features-list li {
            margin-bottom: 12px;
            color: #555;
            position: relative;
            padding-right: 20px;
        }

        .features-list li::before {
            content: "✓";
            position: absolute;
            right: 0;
            color: #2ecc71; 
            font-weight: bold;
        }

        .buy-button {
            display: inline-block;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            padding: 10px 25px;
            border-radius: 25px;
            font-weight: bold;
            transition: background-color 0.2s ease;
        }

        .buy-button:hover {
            background-color: #2980b9;
        }

        .featured-card {
            border: 2px solid #3498db;
            background-color: #fcfdfd;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h1 class="pricing-title">מחירון מסלולים</h1>
    <p class="pricing-subtitle">מחירי השקה מיוחדים לרגל תחילת הדרך - בואו נתחיל להתאמן ביחד!</p>

    <table style="width: 100%; border-collapse: separate; border-spacing: 20px; table-layout: fixed;">
        <tr>
            <td>
                <div class="price-card">
                    <div class="plan-name">אימון היכרות</div>
                    <div class="plan-price">₪40 <span>/ חד פעמי</span></div>
                    <ul class="features-list">
                        <li>אימון אישי של 60 דקות</li>
                        <li>תיאום ציפיות והגדרת מטרות</li>
                        <li>הערכת כושר גופני בסיסי</li>
                    </ul>
                    <br /><br />
                    <a href="contact.aspx" class="buy-button">תיאום אימון</a>
                </div>
            </td>

            <td>
                <div class="price-card featured-card">
                    <div class="plan-name">כרטיסיית פריצה</div>
                    <div class="plan-price">₪180 <span>/ 5 אימונים</span></div>
                    <ul class="features-list">
                        <li>5 אימונים אישיים מלאים</li>
                        <li>בניית תוכנית אימונים אישית</li>
                        <li>מענה חופשי בוואטסאפ לכל שאלה</li>
                        <li>שיחת טלפון שבועית למעקב ותמיכה</li>
                    </ul>
                    <br /><br />
                    <a href="contact.aspx" class="buy-button" style="background-color: #2ecc71;">הכי פופולרי</a>
                </div>
            </td>

            <td>
                <div class="price-card">
                    <div class="plan-name">ליווי חודשי מלא</div>
                    <div class="plan-price">₪320 <span>/ לחודש</span></div>
                    <ul class="features-list">
                        <li>8 אימונים אישיים (פעמיים בשבוע)</li>
                        <li>בניית תוכנית אימונים מותאמת</li>
                        <li>זמינות מלאה בוואטסאפ לאורך כל החודש</li>
                        <li>שיחות טלפון שוטפות לייעוץ ומוטיבציה</li>
                    </ul>
                    <br /><br />
                    <a href="contact.aspx" class="buy-button">להרשמה למסלול</a>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>