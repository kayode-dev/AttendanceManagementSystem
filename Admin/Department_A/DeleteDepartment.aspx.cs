using AttendanceManagemnetSystem.Services;
using AttendanceMangementSystem.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem.Admin.Department_A
{
    public partial class DeleteDepartment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ConfirmDelete.Text = "Are you sure you want to delete the department with the following details:";
        }

        public Department getDepartmentById([QueryString("Id")] string Id)
        {
            return DepartmentRepository.GetDepartment(Id);
        }

        protected void DeleteDepartment_Click(object sender, EventArgs e)
        {
            try
            {
                bool isDeletedSuccessfully = DepartmentRepository.DeleteDepartment(Request.QueryString["Id"]);
                if (isDeletedSuccessfully)
                {
                    Response.Redirect("Departments");
                }
            }
            catch (Exception)
            {

                Response.Write("<script>alert('Oops!! Something went wrong Please try again')</script>");
            }
        }

        protected void ReturnToDepartments_Click(object sender, EventArgs e)
        {
            Response.Redirect("Departments");
        }
    }
}