<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Src="~/WebUserControl.ascx" TagPrefix="uc1" TagName="WebUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta charset="utf-8" />
    <title>
    JibonShathi | Find your perfect life partner here
    </title> 
 
    <link href="/HomeStyle.css" rel="stylesheet" type="text/css" />  
</head>
<body>
    <form id="form1" runat="server"> 
    <div class="header">
    <uc1:WebUserControl runat="server" ID="WebUserControl" />
    
    <section class="main">
        <img class="animation" src="couple1.jpg"/>
        <img class="animation" src="couple2.jpg"/>
        <img class="animation" src="couple3.jpg"/>
        <img class="animation" src="couple4.jpg"/>
        <img class="animation" src="couple5.jpg"/>
    </section>
    <script>
        var a = 1;
        showing();
        function showing() {
            var i;
            var x = document.getElementsByClassName('animation');
            for (i = 0; i < x.length; i++) {
                x[i].style.display = 'none';
            }
            if (a > x.length) {
                a = 1;
            }
            x[a - 1].style.display = 'block';
            a++;
            setTimeout(showing, 2000);
        }
     </script>
    <section id="about">
               <h1 id="abt" class="font_s">Why Jibonshathi.Com</h1>
                <p id="abou_p">
               Jibonshathi®.com is created for a simple web project.
               We began as a small service to match individuals of South Asia and 
               our goal is to become the world's leading matrimonial brand.

               Our ultimate goal for Jibonshathi®.com is to facilitate the making of happy relationships and strong
               marriages for the long term.We understand the importance of selecting the best partner for your life.
               We aim to provide a secure environment for your matchmaking journey. Jibonshathi®.com is a highly 
               trusted matchmaking and matrimonial service.Our members are thoroughly screened with the aid of 
               features such as email verification, phone confirmation and photo validation.

               We have a vast number of members from around the world of all ages and religions. So, whether you 
               are single, divorced, or getting married for the second time, we have someone for you. We encourage
               you to join us with confidence. Your personal information is secure with us. We have a hard-working
               team ready to help with your matchmaking journey. Come and join us at Jibonshathi®.com where we make Dreams
               into Reality.
               </p>
    </section>
     <footer class="footer1">
          <p class="footer2">
                Designed By
                <b> Mikail Biswas Mridu</b>
          </p>
     </footer>
     </div>
    </form>
</body>

</html>
