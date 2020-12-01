<%@ Page Language="C#" Inherits="SourceControlAssignment.Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">   
        .response{
            border: 2px solid black;
            width: 40%;
            padding: 10px;
        }
        .style1 {
            width: 113%;
            margin-left: 200px;
        }
        .style3 {
            width: 1200px;
            text-align: center;
            height: 16px;
        }
        .style4 {
            width: 1200px;
            height: 31px;
            text-align: right;
        }
        .style5 {
            height: 31px;
            width: 2741px;
        }
        .style6 {
            text-align: center;
        }
        .style7 {
            width: 1200px;
            text-align: right;
            font-size: large;
        }
        .style8 {
            text-align: left;
            width: 2741px;
        }
        .style9 {
            text-align: center;
            font-size: x-large;
        }
        .style10 {
            font-size: large;
        }
        .style11 {
            height: 16px;
            width: 2741px;
        }
        .style12 {
            width: 1200px;
            text-align: right;
            font-size: large;
            height: 49px;
        }
        .style13 {
            text-align: left;
            width: 2741px;
            height: 49px;
        }
        .style14 {
            text-align: left;
            font-size:large;
        }
        .style15 {
            width: 113%;
            margin-left: 450px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="style9">
            Student Details<br />
            <br />
        </div>
        <table align="center" class="style1">
            <tr>
                <td class="style7">First Name</td>
                <td class="style8">
                    <asp:TextBox ID="txt_fn" runat="server" CssClass="style10" Width="207px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_fn" CssClass="style10" ErrorMessage="First Name is required" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">Last Name</td>
                <td class="style8">
                    <asp:TextBox ID="txt_ln" runat="server" CssClass="style10" Width="207px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_ln" CssClass="style10" ErrorMessage="Last Name is required" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">Email</td>
                <td class="style8">
                    <asp:TextBox ID="txt_email" runat="server" CssClass="style10" Width="207px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" CssClass="style10" ErrorMessage="Email is required" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" CssClass="style10" ErrorMessage="Please enter correct EmailID" ForeColor="DarkRed" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style12">Password</td>
                <td class="style13">
                    <asp:TextBox ID="txt_password" runat="server" CssClass="style10" TextMode="Password" Width="207px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_password" CssClass="style10" ErrorMessage="Enter Password" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">Confirm Password</td>
                <td class="style8">
                    <asp:TextBox ID="txt_cpassword" runat="server" CssClass="style10" TextMode="Password" Width="207px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_cpassword" CssClass="style10" ErrorMessage="Re-Enter Password" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_cpassword" CssClass="style10" ErrorMessage="Passwords do not match" ForeColor="DarkRed"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">Age</td>
                <td class="style8">
                    <asp:TextBox ID="txt_age" runat="server" CssClass="style10" Width="207px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_age" CssClass="style10" ErrorMessage="Age is required" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt_age" CssClass="style10" ErrorMessage="Please enter correct age(5-100)" ForeColor="DarkRed" MaximumValue="100" MinimumValue="5" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">Roll No.</td>
                <td class="style8">
                    <asp:TextBox ID="txt_roll" runat="server" CssClass="style10" Width="207px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_roll" CssClass="style10" ErrorMessage="Roll No. is required" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txt_roll" CssClass="style10" ErrorMessage="Please enter correct Roll no.(1-200)" ForeColor="DarkRed" MaximumValue="200" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">Mobile Number</td>
                <td class="style8">
                    <asp:TextBox ID="txt_mn" runat="server" CssClass="style10" Width="207px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_mn" CssClass="style10" ErrorMessage="Mobile Number is required" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_mn" CssClass="style10" ErrorMessage="Invalid Mobile Number" ForeColor="DarkRed" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">&nbsp;</td>
                <td class="style5"></td>
            </tr>
            <tr>
                <td class="style3"></td>
                <td class="style11">
                    <asp:Button ID="btn" runat="server" CssClass="style10" Text="Save Details" Width="219px" OnClick="button1Clicked" />
                </td>
            </tr>
            
        </table>
        <table align="center" class="style15">
            <tr>
                <td class="style14">
                    <br />
                    <br />
                    <div class="response">
                        Your Details:<br />
                       
                        <asp:Label ID="Label1" runat="server"></asp:Label> <br />
                        <asp:Label ID="Label2" runat="server"></asp:Label> <br />
                        <asp:Label ID="Label3" runat="server"></asp:Label> <br />
                        <asp:Label ID="Label4" runat="server"></asp:Label> <br />
                        <asp:Label ID="Label5" runat="server"></asp:Label> 
                    </div>
                </td>    
            </tr>
        </table>
    </form>
    <p class="style6">
        &nbsp;</p>
</body>
</html>
