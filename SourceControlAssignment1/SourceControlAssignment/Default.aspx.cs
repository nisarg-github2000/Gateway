using System;
using System.Web;
using System.Web.UI;

namespace SourceControlAssignment
{

    public partial class Default : System.Web.UI.Page
    {
        public void button1Clicked(object sender, EventArgs args)
        {
            Label1.Text = "Username: " + txt_fn.Text + " " + txt_ln.Text;
            Label2.Text = "Age: " + txt_age.Text;
            Label3.Text = "Email: " + txt_email.Text;
            Label4.Text = "Roll No.: " + txt_roll.Text;
            Label5.Text = "Mobile Number: " + txt_mn.Text;
        }
    }
}
