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
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<Course> GetCourses()
        {
            return CourseRepository.GetCourses().ToList();
        }
    }
}