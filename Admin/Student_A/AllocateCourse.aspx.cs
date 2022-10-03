using AttendanceManagemnetSystem.Services;
using AttendanceMangementSystem.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem.Admin.Student_A
{
    public partial class AllocateCourse : System.Web.UI.Page
    {
        private static string studentId;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                LoadFaculties();
                FacultyDropDownList.Items.Insert(0, new ListItem("Select Faculty", "0"));
                DepartmentDropDownList.Items.Insert(0, new ListItem("Select Department", "0"));
                DepartmentDropDownList.Enabled = false;

                if (Request.QueryString["Id"] != null)
                {
                    studentId = Request.QueryString["Id"] ;

                    var student = StudentDetailRepository.GetStudent(studentId);

                    if (student != null)
                    {
                        CourseAllocationHeader.InnerText = $"In process of allocating course(s) to {student.FirstName} {student.LastName } in {student.Department.DepartmentName}";
                        CoursesAllocatedHeader.InnerText = $"Courses Allocated to {student.FirstName} {student.LastName } in {student.Department.DepartmentName}";
                    }

                    AllocatedCoursesGridView.DataSource = CourseAllocationRepository.
                                                          GetCoursesRegisteredByStudentId(studentId).Select(c => new
                                                          {
                                                              c.Id,
                                                              c.StudentId,
                                                              c.CourseId,
                                                              c.Course.CourseTitle,
                                                              c.Course.CourseCode,
                                                          });
                    AllocatedCoursesGridView.DataBind();
                }
            }

        }


        protected void DepartmentDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (studentId != null)
            {
                if (DepartmentDropDownList.SelectedIndex > 0)
                {
                    CourseGridView.DataSource = CourseRepository.GetCoursesBydepartmentId(DepartmentDropDownList.SelectedValue).ToList();
                    CourseGridView.DataBind();
                }
            }
        }

        protected void FacultyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (FacultyDropDownList.SelectedIndex > 0)
            {
                DepartmentDropDownList.Enabled = true;
                LoadDepartments();
            }
            else
            {
                DepartmentDropDownList.Enabled = false;
            }

            DepartmentDropDownList.Items.Insert(0, new ListItem("Select Department", "0"));
        }

        protected void RemoveCourseButton_Click(object sender, EventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];

            if (confirmValue == "Yes")
            {
                foreach (GridViewRow row in AllocatedCoursesGridView.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        string courseAllocatedId = (string)AllocatedCoursesGridView.DataKeys[row.RowIndex].Value;

                        CourseAllocationRepository.DeleteAllocatedCourse(courseAllocatedId);
                        Response.Redirect("AllocateCourse?Id=" + studentId + "");

                    }
                }
            }
        }

        protected void AllocateCourseButton_Click(object sender, EventArgs e)
        {
            List<CourseAllocation> coursesAllocation = new List<CourseAllocation>();

            foreach (GridViewRow row in CourseGridView.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox courseAllocation = row.FindControl("CourseAllocationCheckBox") as CheckBox;

                    if (courseAllocation != null && courseAllocation.Checked)
                    {
                        CourseAllocation ca = new CourseAllocation
                        {
                            StudentId = studentId,
                            CourseId = row.Cells[1].Text
                        };

                        coursesAllocation.Add(ca);
                    }
                }
            }
            CourseAllocationRepository.AddAllocatedCourse(coursesAllocation);
            Response.Redirect("AllocateCourse?Id=" + studentId);
        }

        private void LoadFaculties()
        {
            FacultyDropDownList.DataSource = FacultyRepository.GetFaculties();
            FacultyDropDownList.DataTextField = "FacultyName";
            FacultyDropDownList.DataValueField = "Id";
            FacultyDropDownList.DataBind();
        }

        private void LoadDepartments()
        {
            DepartmentDropDownList.DataSource = DepartmentRepository.GetDepartmentsByFacultyId
                                                (Convert.ToInt32(FacultyDropDownList.SelectedValue));
            DepartmentDropDownList.DataTextField = "DepartmentName";
            DepartmentDropDownList.DataValueField = "Id";
            DepartmentDropDownList.DataBind();
        }

        protected void ReturnToStudentList_Click(object sender, EventArgs e)
        {
            Response.Redirect("Students");
        }
    }
}