<%@ Page Title="דף הבית - דניאל מאמן כושר אישי" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="page_5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* אזור הבאנר הראשי - Hero Section */
        .hero-section {
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%); /* רקע מדורג כחול ספורטיבי */
            color: white;
            text-align: center;
            padding: 60px 20px;
            border-radius: 15px;
            margin-bottom: 40px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        .hero-section h1 {
            color: #ffffff !important; /* דריסת הצבע הכהה מהמאסטר פייג' */
            font-size: 2.8rem;
            margin-bottom: 15px;
            font-weight: 700;
            text-shadow: 0 2px 4px rgba(0,0,0,0.2);
        }

        .hero-section p {
            font-size: 1.3rem;
            max-width: 600px;
            margin: 0 auto 30px auto;
            opacity: 0.9;
            line-height: 1.6;
        }

        /* כפתור הנעה לפעולה גדול */
        .cta-button {
            display: inline-block;
            background-color: #2ecc71; /* ירוק בולט ומניע לפעולה */
            color: white;
            text-decoration: none;
            padding: 14px 35px;
            border-radius: 30px;
            font-size: 1.2rem;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(46, 204, 113, 0.3);
            transition: all 0.3s ease;
        }

        .cta-button:hover {
            background-color: #27ae60;
            transform: translateY(-3px);
            box-shadow: 0 6px 15px rgba(46, 204, 113, 0.4);
        }

        /* כותרת משנית ליתרונות */
        .section-title {
            text-align: center;
            color: #1a252f;
            font-size: 2rem;
            margin-bottom: 30px;
            font-weight: 700;
        }

        /* עיצוב כרטיסי היתרונות */
        .features-card {
            background-color: #ffffff;
            border-radius: 12px;
            padding: 25px 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
            text-align: center;
            border: 1px solid #e2e8f0;
            transition: transform 0.3s ease;
        }

        .features-card:hover {
            transform: translateY(-5px);
        }

        .feature-icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
            display: block;
        }

        .feature-title {
            font-size: 1.3rem;
            color: #1a252f;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .feature-text {
            font-size: 1rem;
            color: #666666;
            line-height: 1.5;
            margin: 0;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- אזור ראשי שיווקי ומזמין -->
    <div class="hero-section">
        <h1>הגיע הזמן להשקיע בעצמך</h1>
        <p>ברוכים הבאים לפלטפורמה הרשמית להזמנת אימוני כושר אישיים ומעקב מתקדם. יחד נבנה את הגרסה הכי חזקה, בריאה וחטובה שלכם!</p>
        <a href="pricing.aspx" class="cta-button">צפה במסלולי האימון</a>
    </div>

    <h2 class="section-title">מה תקבלו באתר שלי?</h2>

    <!-- שימוש בטבלה השקופה לסידור 3 היתרונות בשורה אחת -->
    <table style="width: 100%; border-collapse: separate; border-spacing: 20px; table-layout: fixed;">
        <tr>
            <!-- יתרון 1 -->
            <td>
                <div class="features-card">
                    <span class="feature-icon">💪</span>
                    <div class="feature-title">אימונים בהתאמה אישית</div>
                    <p class="feature-text">תוכניות אימון מקצועיות שנבנות במיוחד בשבילכם – למתחילים ומתקדמים, לפי המטרות האישיות שלכם.</p>
                </div>
            </td>

            <!-- יתרון 2 -->
            <td>
                <div class="features-card">
                    <span class="feature-icon">📱</span>
                    <div class="feature-title">מערכת מעקב אימונים</div>
                    <p class="feature-text">לאחר ההתחברות תוכלו להשתמש במערכת יומן האימונים כדי לשמור, לתעד ולעקוב אחר ההתקדמות שלכם.</p>
                </div>
            </td>

            <!-- יתרון 3 -->
            <td>
                <div class="features-card">
                    <span class="feature-icon">📞</span>
                    <div class="feature-title">ליווי צמוד ומענה מלא</div>
                    <p class="feature-text">תמיכה מלאה בוואטסאפ ושיחות טלפון קבועות כדי לוודא שאתם נשארים עם מוטיבציה גבוהה ולא מפספסים אף אימון.</p>
                </div>
            </td>
        </tr>
    </table>

</asp:Content>