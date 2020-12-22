<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<%@ Register Src="~/WebUserControl.ascx" TagPrefix="uc1" TagName="WebUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        JibonShathi | Find your perfect life partner here
    </title>
     <link href="/HomeStyle.css" rel="stylesheet" type="text/css" />  
</head>
<body>
    <form id="form1" runat="server">
    <uc1:WebUserControl runat="server" ID="WebUserControl" />
         <nav class="top">
    		<ul>
				<li><a href="Home.aspx">Log Out</a></li>
            </ul> 
          </nav>
     <footer class="footer1">
          <p class="footer2">
                Designed By
                <b> Mikail Biswas Mridu</b>
          </p>
     </footer>
 
    </form>
</body>
</html>
