<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="ASP_CAR_RENTAL_PROJECT.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Login</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <div class="login-container">
    <form id="form1" runat="server" class="login-form">
        <h2>Login</h2>

        <div class="input-group">
            <asp:TextBox ID="txtadminname" runat="server" CssClass="form-control" placeholder="AdminName"></asp:TextBox>
        </div>

        <div class="input-group">
            <asp:TextBox ID="txtadminPassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
        </div>

       <%-- <div class="checkbox-group">
            <asp:CheckBox ID="chkRememberMe" runat="server" />
            <label for="chkRememberMe">Remember Me</label>
        </div>--%>

        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-login" OnClick="btnLogin_Click"  />

       <%-- <div class="extra-links">
            <a href="register.aspx">Create an account</a> |
            <a href="forgot-password.aspx">Forgot Password?</a>
        </div>--%>
    </form>
</div>
</body>
</html>