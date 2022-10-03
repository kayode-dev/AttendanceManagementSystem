using AttendanceManagemnetSystem.Services;
using AttendanceMangementSystem.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem.Admin.Course_A
{
    public partial class AllocateLecturer : System.Web.UI.Page
    {

        static string CourseId;
        static string DepartmentId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListItem list = new ListItem("Select Lecturer", "-1");
                LecturerName.Items.Insert(0, list);

                if (Request.QueryString["Id"] != null )
                {
                    CourseId = Request.QueryString["Id"];
                    var Course = CourseRepository.GetCourse(CourseId);
                    CourseCode.Text = Course.CourseCode;
                    CourseTitle.Text = Course.CourseTitle;
                    DepartmentId = Course.DepartmentId;
                }
                else
                {
                    Response.Write("The Course requested is not in the records");
                }

            }
        }

        public IEnumerable<Lecturer> GetLecturersbyDepartmentId()
        {
            return LecturerRepository.GetLecturersByDepartmentId(DepartmentId);
            
        }

        protected void AllocateLect_Click(object sender, EventArgs e)
        {
            bool CourseAllocatedOk = LecturersCourseRepository.AddLecturersCourses(LecturerName.SelectedValue, CourseId);
            if (CourseAllocatedOk)
            {
                Response.Redirect("Courses");
            }
            else
            {
                LecturerName.Focus();
            }
        }
    }
}