using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ServerControlsWebpage
{
    public partial class EnquiryForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //2nd requst onward,Every requst is postback
            if (!Page.IsPostBack)
            {//Data will be added only on first request
                drpQualification.Items.Add("M.E");
                drpQualification.Items.Add("M.Tech");
                drpQualification.Items.Add("MCA");

                chklstCourses.Items.Add("ADNT");
                chklstCourses.Items.Add("ADJT");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string s = "Name=" + txtName.Text + "Gender=" + rbtnGender.Text + "Address=" + txtAddress.Text
                + "ContactNo=" + txtContact.Text + "EmailId=" + txtEmailId.Text
                + "Qualification=" + drpQualification.Text + "Courses=";
            string c = "";
            foreach (ListItem item in chklstCourses.Items)
            {
                if (item.Selected)
                    c += item.Text;
               
            }
            LblResult.Text = s + c;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtEmailId.Text = txtAddress.Text = txtContact.Text = txtName.Text = "";
            drpQualification.SelectedIndex = -1;
            chklstCourses.SelectedIndex = -1;
        }
    }
}