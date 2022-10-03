using AttendanceMangementSystem.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AttendanceManagementSystem.ViewModels.Logic
{
    public class ReportData
    {
        public static IEnumerable<LEcturerCoursesViewModel> GetLEcturerCourseViewModelsByCourseId(string CourseId)
        {
            AMSDbContext db = new AMSDbContext();
            List<LEcturerCoursesViewModel> attendanceSummaries = new List<LEcturerCoursesViewModel>();
            var attendances = db.Attendances.Include("Course").Include("Student").Where(a => a.CourseId == CourseId)
                .ToList();

            foreach (var attendance in attendances)
            {
                LEcturerCoursesViewModel attendancesummary = new LEcturerCoursesViewModel
                {
                    CourseId = CourseId,
                    CourseCode = attendance.Course.CourseCode,
                    CourseTitle = attendance.Course.CourseTitle,
                    StudentFullName = string.Concat(attendance.Student.FirstName, " ", attendance.Student.MiddleName,
                    " ", attendance.Student.LastName),
                    NoOfLecturesTaken = attendance.Course.NoOfLecturesTaken,
                    NoOfTimesPresent = db.Attendances.Count(a => a.CourseId == CourseId && a.AttendanceStatus == true
                    && a.StudentId == attendance.Student.Id),
                    NoOfTimesAbsent = db.Attendances.Count(a => a.CourseId == CourseId && a.AttendanceStatus == false
                    && a.StudentId == attendance.Student.Id)
                };
                attendanceSummaries.Add(attendancesummary);
            }
            return attendanceSummaries;
            
        }

        public static IEnumerable<StudentGeneralAttendanceViewModel> GetStudentAttendanceForAllCourses (string StudentId)
        {
            AMSDbContext db = new AMSDbContext();
            List<StudentGeneralAttendanceViewModel> StudentAttendanceSummaries = new List<StudentGeneralAttendanceViewModel>();
            var attendances = db.Attendances.Include("Course").Include("Student").Where(a => a.StudentId == StudentId)
                .ToList();

            foreach (var attendance in attendances)
            {
                StudentGeneralAttendanceViewModel attendancesummary = new StudentGeneralAttendanceViewModel
                {
                    CourseId = attendance.CourseId,
                    CourseCode = attendance.Course.CourseCode,
                    CourseTitle = attendance.Course.CourseTitle,
                    StudentFullName = string.Concat(attendance.Student.FirstName, " ", attendance.Student.MiddleName,
                    " ", attendance.Student.LastName),
                    NoOfLecturesTaken = attendance.Course.NoOfLecturesTaken,
                    NoOfTimesPresent = db.Attendances.Count(a => a.CourseId == attendance.CourseId && a.AttendanceStatus == true
                    && a.StudentId == attendance.Student.Id),
                    NoOfTimesAbsent = db.Attendances.Count(a => a.CourseId == attendance.CourseId && a.AttendanceStatus == false
                    && a.StudentId == attendance.Student.Id)
                };
                StudentAttendanceSummaries.Add(attendancesummary);
            }
            return StudentAttendanceSummaries;
        }
    }
}