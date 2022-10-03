using AttendanceManagemnetSystem.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem.Admin.Faculy
{
    public partial class FacultyDetails : System.Web.UI.Page
    {
        static int FacultyId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] != null && Convert.ToInt32( Request.QueryString["Id"]) > 0)
                {
                    FacultyId = Convert.ToInt32(Request.QueryString["Id"]);
                    var Faculty = FacultyRepository.GetFaculty(FacultyId);
                    FacultyDetailsLabel.Text = Faculty.FacultyName;
                }
                else
                {
                    Response.Write("The Faculty requested is not in the records");
                }
            }
        }

        protected void EditFaculty_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditFaculty?Id=" + FacultyId);
        }

        protected void DeleteFaculty_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteFaculty?Id=" + FacultyId);
        }
    }
}