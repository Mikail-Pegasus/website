<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<%@ Register Src="~/WebUserControl.ascx" TagPrefix="uc1" TagName="WebUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta charset="utf-8" />
    <title>
        Jibonshathi | Sign Up to join our community
    </title> 
    <link href="/HomeStyle.css" rel="stylesheet" type="text/css" /> 
    
</head>
<body>
    <form id="form1" runat="server"> 
    <uc1:WebUserControl runat="server" ID="WebUserControl" />
    <div id="reg_box">
     <div id="head_div">
                <header>
                    <h1 id="head_h1">Sign Up here</h1>
                </header>
     </div>
     <div class="reg">
        <table>
            <tr>
                <td><p class="tex">User Name:</p></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tp"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="validm"
                        ControlToValidate="TextBox1" ErrorMessage="User Name is required!" ForeColor="Red"
                        Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><p class="tex">Email-Id:</p></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tp"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="validm"
                        ControlToValidate="TextBox2" ErrorMessage="Email-Id is required!" ForeColor="Red"
                        Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px">
                    </asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="validm"
                        ControlToValidate="TextBox2" ErrorMessage="Email-Id must be valid!" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td><p class="tex">Password:</p></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tp" TextMode="Password" ></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="validm"
                        ControlToValidate="TextBox3" ErrorMessage="Password is required!" ForeColor="Red"
                        Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><p class="tex">Confirm Password:</p></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="tp" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="validm"
                        ControlToValidate="TextBox4" ErrorMessage="Confirmed Password is required!" ForeColor="Red"
                        Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"
                        ></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Both password must be same!"
                        Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"
                        ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button CssClass="tex" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
                </td>
                <td>

                    <asp:Label ID="Label1" runat="server" CssClass="list" Font-Bold="True" Font-Italic="True" 
                        Font-Names="Tahoma" Font-Size="16px" ForeColor="Red" Text="Fill up to create user"></asp:Label>

                </td>
            </tr>
        </table>
      </div>
     </div>
     <footer class="footer1">
          <p class="footer2">
                Designed By
                <b> Mikail Biswas Mridu</b>
          </p>
     </footer>
    </form>
</body>

</html>
