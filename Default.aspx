<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Adam&#39;s Salary Calculator<br />
        <br />
        Enter Hourly Wage:&nbsp;
        <asp:TextBox ID="hourly_wageTB" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVhourlywage" runat="server" ControlToValidate="hourly_wageTB" ErrorMessage="Please enter your hourly wage."></asp:RequiredFieldValidator>
        <br />
        <br />
        Number of Hours Worked:
        <asp:TextBox ID="hours_workedTB" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVhoursworked" runat="server" ControlToValidate="hours_workedTB" ErrorMessage="Please enter the number of hours worked. "></asp:RequiredFieldValidator>
        <br />
        <br />
        Pre-Tax Deductions: <asp:TextBox ID="pre_taxTB" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVpretax" runat="server" ControlToValidate="pre_taxTB" ErrorMessage="Please enter your Pre-Tax Deductions "></asp:RequiredFieldValidator>
        <br />
        <br />
        After-Tax Deductions: <asp:TextBox ID="after_taxTB" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVaftertax" runat="server" ControlToValidate="after_taxTB" ErrorMessage="Please enter your Post-Tax Deductions "></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Calculatebt" runat="server" Text="Calculate" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Resetbt" runat="server" Text="Reset" />
        <br />
        <br />
        Net Income: <asp:Label ID="netincomeID" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
