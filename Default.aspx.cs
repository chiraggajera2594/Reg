using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            fillcity();
        }
      
    }
    public void fillcity()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cnstr"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select * from tblCity",cn);
        DataTable dt=new DataTable();
        da.Fill(dt);
        ddlcity.DataSource = dt;
        ddlcity.DataTextField="cname";
        ddlcity.DataValueField="cid";
        ddlcity.DataBind();
        ddlcity.Items.Insert(0, new ListItem("Select City", "0"));

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int i = Convert.ToInt32(ddlcity.SelectedValue.ToString());
        if(i==0)
        {
            args.IsValid = false;
           
        }
        else  
        {
            args.IsValid = true;
           
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
       if(Convert.ToInt32(ddlcity.SelectedValue.ToString())!=0)
       {
           Label1.Visible = false;
           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cnstr"].ToString());
           SqlCommand cmd = new SqlCommand("insert into tblUser(fname,lname,mobile,password,cid,email) values(@fnm,@lnm,@mob,@pass,@cid,@em)", con);
           cmd.Parameters.AddWithValue("@fnm", txtfnm.Text);
           cmd.Parameters.AddWithValue("@lnm", txtlnm.Text);
           cmd.Parameters.AddWithValue("@mob", txtmob.Text);
           cmd.Parameters.AddWithValue("@pass", txtpass.Text);
           cmd.Parameters.AddWithValue("@cid", Convert.ToInt32(ddlcity.SelectedValue.ToString()));
           cmd.Parameters.AddWithValue("@em", txtemail.Text);
           con.Open();
           cmd.ExecuteNonQuery();
           con.Close();
           Response.Redirect("~/Default2.aspx");
       }
       else 
       {
           Label1.Visible = true;
       }
    }
}