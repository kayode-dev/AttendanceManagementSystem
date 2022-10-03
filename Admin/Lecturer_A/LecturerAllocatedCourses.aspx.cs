using AttendanceManagemnetSystem.Services;
using AttendanceMangementSystem.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem.Admin.Lecturer_A
{
    public partial class LecturerAllocatedCourses : System.Web.UI.Page
    {
        private static string LecturerId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] != null)
                {
                    LecturerId = Request.QueryString["Id"];
                }
            }
        }

        public IEnumerable<LecturersCourse> GetCoursesByLecturerId()
        {
            return LecturersCourseRepository.GetLecturersCoursesByLecturerId(LecturerId);
        }
    }
}