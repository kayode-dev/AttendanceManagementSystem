using AttendanceManagemnetSystem.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem.Admin.Faculy
{
    public partial class DeleteFaculty : System.Web.UI.Page
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
                    FacultyDetailsLabel.Text = Faculty.FacultyName;
                    ConfirmDelete.Text = "Are you sure you want to delete the Faculty with Id " + FacultyId + " with the following details";
                }
                else
                {
                    Response.Write("The Faculty requested is not in the records");
                }
            }
        }

        protected void ReturnToFaclties_Click(object sender, EventArgs e)
        {
            Response.Redirect("faculties");
        }

        protected void DeleteFaculty_Click(object sender, EventArgs e)
        {
            try
            {
                bool isSuccessfullyDeleted = FacultyRepository.DeleteFaculty(FacultyId);
                if (isSuccessfullyDeleted)
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