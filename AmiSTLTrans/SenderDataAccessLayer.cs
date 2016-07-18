using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AmiSTLTrans
{
    public class Sender
    {
        public int SenderID { get; set; }
        public string SenderLname { get; set; }
        public string SenderFname { get; set; }
        public string SenderPhone { get; set; }
    }
    public class SenderDataAccessLayer
    {
        public static List<Sender> GetAllSender(String Phone)
        {
            List<Sender> listSenders = new List<Sender>();

            string CS = ConfigurationManager.ConnectionStrings["ASLT"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spGetSenders", con); //("Select * from Senders", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameter = new SqlParameter("@SenderPhone", Phone);  
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while(rdr.Read())
                {
                    Sender Senders = new Sender();
                    Senders.SenderID = Convert.ToInt32(rdr["SenderID"]);
                    Senders.SenderFname = rdr["SenderFname"].ToString();
                    Senders.SenderLname = rdr["SenderLname"].ToString();
                    Senders.SenderPhone = rdr["SenderPhone"].ToString();

                    listSenders.Add(Senders);
                }

                //return listSenders;
                /*con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Sender Senders = new Sender();
                    Senders.SenderID = Convert.ToInt32(rdr["SenderID"]);
                    Senders.SenderFname = rdr["SenderFname"].ToString();
                    Senders.SenderLname = rdr["SenderLname"].ToString();
                    Senders.SenderPhone = rdr["SenderPhone"].ToString();

                    listSenders.Add(Senders);
                }*/
            }

            return listSenders;

        }

        public static void UpdateSender(int SenderID, string SenderFname,
                                    string SenderLname, string SenderPhone)
        {
            string CS = ConfigurationManager.ConnectionStrings["ASLT"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string updateQuery = "Update Senders SET SenderFname = @SenderFname,  " +
                    "SenderLname = @SenderLname, SenderPhone = @SenderPhone WHERE SenderID = @SenderID ";
                SqlCommand cmd = new SqlCommand(updateQuery, con);
                SqlParameter paramSenderID = new SqlParameter("@SenderID", SenderID);
                cmd.Parameters.Add(paramSenderID);
                SqlParameter paramSenderFname = new SqlParameter("@SenderFname", SenderFname);
                cmd.Parameters.Add(paramSenderFname);
                SqlParameter paramSenderLname = new SqlParameter("@SenderLname", SenderLname);
                cmd.Parameters.Add(paramSenderLname);
                SqlParameter paramSenderPhone = new SqlParameter("@SenderPhone", SenderPhone);
                cmd.Parameters.Add(paramSenderPhone);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

    }
}