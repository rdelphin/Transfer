<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AmiSTLTrans.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Transfer Log in</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSS stylesheets -->
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/main.css" />
</head>
<body>
    <div class="container">
	<div class="wrapper">
		<form id="form1" class="form-signin" runat="server">
			<h3 class="form-signin-heading">Welcome Back! Please Sign In</h3>
			<hr class="colorgraph"><br>
			
			<asp:TextBox ID ="txtUserName" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
			
			<asp:TextBox ID="txtPassword" class="form-control" placeholder="Password"  TextMode="Password" runat="server"></asp:TextBox>
			
			<div class="checkbox">
                <asp:CheckBox ID="chkBoxRememberMe" runat="server" Text="Remember Me" />
            </div>
			
			<asp:Button ID="btnLogin" class="btn btn-lg btn-success btn-block" runat ="server" Text="Login" OnClick="btnLogin_Click" />
            
            <!--  class="alert alert-danger" role="alert" -->			            	        
            <div class="error_msg">
	            <asp:Label ID="lblMessage" runat="server"></asp:Label>            
            </div>
						
			<!-- <p class="register_txt"><a href="registration/register.aspx">Click here to register</a> if you do not have a username and password</p> -->
	    </form>
	</div> <!-- /.wrapper -->

</div> <!-- /.container -->

<!-- JavaScripts files -->
<script src="scripts/jquery-2.2.4.min.js"></script>"        
</body>
</html>
