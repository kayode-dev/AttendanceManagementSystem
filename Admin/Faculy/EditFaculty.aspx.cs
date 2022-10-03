using AttendanceManagemnetSystem.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem.Admin.Faculy
{
    public partial class EditFaculty : System.Web.UI.Page
    {
        static int FacultyId;

        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] != null && Convert.ToInt32(Request.QueryString["Id"]) > 0)
                {
                    FacultyId = Convert.ToInt32(Request.QueryString["Id"]);
                    var Faculty = FacultyRepository.GetFaculty(FacultyId);
                    FacultyName.Text = Faculty.FacultyName;
                }
                else
                {
                    Response.Write("The Faculty requested is not in the records");
                }
            }
        }

        protected void UpdateFAculty_Click(object sender, EventArgs e)
        {
            try
            {
                bool isSuccessfullyEditted = FacultyRepository.EditFaculty(FacultyId, FacultyName.Text.Trim());

                if (isSuccessfullyEditted)
                {
                    Response.Redirect("Faculties");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Oops!! Something went wrong Please try again')</script>");
            }
        }
    }
}