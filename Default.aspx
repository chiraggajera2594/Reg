<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 294px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <th colspan="2">
                Register Here...
            </th>
        </tr>
     
        <tr>
            <td>
                First Name :
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtfnm" runat="server" placeholder="First Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name Is required." ControlToValidate="txtfnm" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Last Name :
             </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtlnm" runat="server" placeholder="Last Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name Is required." ControlToValidate="txtlnm" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Mobile No.
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtmob" runat="server" TextMode="Number" ToolTip="Mobile No." placeholder="Mobile No." ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile No Is required." ControlToValidate="txtmob" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td>
             City :
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddlcity" runat="server"></asp:DropDownList>
                <asp:Label ID="Label1" runat="server" Text="Please Select City" ForeColor="Red" Visible="false"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Email :
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" TextMode="Email" ToolTip="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemail" ErrorMessage="Email Is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Password :
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password Is required." ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
             Confirm Password :
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtcpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not match" ControlToCompare="txtpass" ControlToValidate="txtcpass" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center">
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
