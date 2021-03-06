﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace AmiSTLTrans
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (AuthenticateUser(txtUserName.Text, txtPassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, chkBoxRememberMe.Checked);
            }
            else
            {
                lblMessage.Text = "Invalid User Name and/or Password";
            }
        }

            private bool AuthenticateUser(string username, string password)
            { // ConfigurationManager class is in System.Configuration namespace 
            String CS = ConfigurationManager.ConnectionStrings["ASLT"].ConnectionString;
            // SqlConnection is in System.Data.SqlClient namespace 
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spAuthenticateUser", con);
                cmd.CommandType = CommandType.StoredProcedure;
                // FormsAuthentication is in System.Web.Security 
                // SqlParameter is in System.Data namespace 
                string EncryptedPassword = FormsAuthentication.HashPasswordForStori­ngInConfigFile(password, "SHA1");
                SqlParameter paramUsername = new SqlParameter("@UserName", username);
                SqlParameter paramPassword = new SqlParameter("@Password", EncryptedPassword); // password);

                cmd.Parameters.Add(paramUsername);
                cmd.Parameters.Add(paramPassword);

                con.Open();
                int ReturnCode = (int)cmd.ExecuteScalar();
                return ReturnCode == 1;
            }
        }
    }
   
}