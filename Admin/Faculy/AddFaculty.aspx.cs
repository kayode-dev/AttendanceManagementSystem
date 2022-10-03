using AttendanceManagemnetSystem.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem.Admin.Faculy
{
    public partial class AddFaculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateFaculty_Click(object sender, EventArgs e)
        {
            bool isFacultySaved = FacultyRepository.AddFaculty(FacultyName.Text.Trim());
            if (isFacultySaved)
            {
                Response.Redirect("Faculties");
            }

        }
    }
}