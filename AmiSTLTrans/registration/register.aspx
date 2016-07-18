<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="AmiSTLTrans.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Transfer Registration</title>
    <!-- CSS stylesheets -->
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <link rel="stylesheet" href="../Content/main.css" />
</head>
<body>
    <div class="container">
	    <div class="wrapper">
		    <form id="form1" class="form-signin" runat="server">
			    <h3 class="form-signin-heading">Registration</h3>
			    <hr class="colorgraph"><br>
 
                <!-- Username -->
                <asp:TextBox ID="txtUserName" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
                
                <div class="star">
                <asp:RequiredFieldValidator ID="requiredFieldValidatorUserName" runat="server" ErrorMessage="User Name Required" Text ="*" ControlToValidate="txtUserName" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </div>
               
                <!-- Password -->
                <asp:TextBox ID="txtPassword" class="form-control" placeholder="Password" TextMode="Password" runat ="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="requiredFieldValidatorPassword" runat="server" ErrorMessage="Password required" Text="*" ControlToValidate="txtPassword" ForeColor="Red">
                </asp:RequiredFieldValidator>
                
                <!-- Confirm Password -->             
                <asp:TextBox ID="txtConfirmPassword" class="form-control" placeholder="Confirm Password" TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredFieldValidatorConfirmPassword" runat="server" ErrorMessage="Confirm Password Required" Text="*" ControlToValidate="txtConfirmPassword" ForeColor="Red">
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="compareValidatorPassword" runat="server" ErrorMessage="Password and Confirm Password must match" ControlToValidate="txtConfirmPassword" ForeColor="Red"
    ControlToCompare="txtPassword" Display="Dynamic" Type="String" Operator="Equal" Text="*"></asp:CompareValidator>                        
                
                <!-- Email -->
                <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Email required" Text="*" ControlToValidate="txtEmail" ForeColor="Red" 
                Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic" Text="*"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>
                    
                <!-- Register Button -->
                <asp:Button ID="btnRegister" class="btn btn-lg btn-primary btn-block" runat="server" Text="Register" OnClick="btnRegister_Click" />
                
                <div class="error_msg register">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                
                    <asp:ValidationSummary ID="validationSummary1" ForeColor="Red" runat="server" />
                </div> 

                <p class="register_txt">Already have an account? <a href="/login.aspx">Login</a></p>
            </form>
        </div> <!-- /.wrapper -->
    </div> <!-- /.container -->
</body>
</html>
