using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Assignment
{
    public partial class TravelPlanner : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["userName"] != null)
                {

                    Sign_In_Status();
                }
                else
                {
                    Sign_Out_Status();
                }
            }
        }

        public void Sign_In_Status()
        {
            HyperLink_UserProfile.Text = Session["userName"].ToString();
            HyperLink_UserProfile.NavigateUrl = "/member/profile.aspx";
            HyperLink1.Text = "Sign Out";
            HyperLink1.NavigateUrl = "/member/sign/in.aspx";
        }

        public void Sign_Out_Status()
        {
            HyperLink_UserProfile.Text = "Guest";
            HyperLink_UserProfile.NavigateUrl = "#";
            HyperLink1.Text = "Sign In";
            HyperLink1.NavigateUrl = "/member/sign/in.aspx";
        }
    }
}