<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnquiryForm.aspx.cs" Inherits="ServerControlsWebpage.EnquiryForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 524px;
        }
        .auto-style3 {
            width: 524px;
            height: 28px;
        }
        .auto-style4 {
            height: 28px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            width: 524px;
            height: 31px;
        }
        .auto-style7 {
            height: 31px;
        }
        .auto-style8 {
            width: 524px;
            height: 140px;
        }
        .auto-style9 {
            height: 140px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="font-size: xx-large; font-weight: bold; color: #000080">&nbsp;</td>
                    <td style="font-size: xx-large; font-weight: bold; color: #000080">ENQUIRY FORM</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style4">Name</td>
                    <td class="auto-style4" style="font-size: xx-large; font-weight: bold; color: #000080">&nbsp;<asp:TextBox ID="txtName" runat="server" CssClass="auto-style5" Width="372px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name Required" Font-Size="X-Small" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender<br />
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rbtnGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Address<br />
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtAddress" runat="server" Height="130px" TextMode="MultiLine" Width="383px"></asp:TextBox>
                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">ContactNo<br />
                    </td>
                    <td>
                        <asp:TextBox ID="txtContact" runat="server" Width="376px"></asp:TextBox>
&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContact" ErrorMessage="Contact Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtContact" ErrorMessage="ContactNo should be 10 digits only" ValidationExpression="\d{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">EmailId<br />
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmailId" runat="server" Width="375px"></asp:TextBox>
&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BorderColor="#FF0066" ControlToValidate="txtEmailId" ErrorMessage="EmailId Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmailId" ErrorMessage="EmailId should be in proper format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Qualification<br />
                    </td>
                    <td>
                        <asp:DropDownList ID="drpQualification" runat="server">
                            <asp:ListItem>BE</asp:ListItem>
                            <asp:ListItem>BCA</asp:ListItem>
                            <asp:ListItem>BA</asp:ListItem>
                            <asp:ListItem>BCom</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Courses Interested</td>
                    <td>
                        <asp:CheckBoxList ID="chklstCourses" runat="server">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>CPP</asp:ListItem>
                            <asp:ListItem>DS</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td id="lblResult">
                        <asp:Label ID="LblResult" runat="server" Text="Label1"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
