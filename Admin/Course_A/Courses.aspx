<%@ Page Title="Courses" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Course_A.Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3><%:Page.Title %></h3>
    <hr />

    <a href="AddCourse" class="btn btn-link">Add Course</a>

    <div class="table-responsive">
        <table class="table table-condensed table-hover">
            <thead>
                <tr>
                    <th>*</th>
                    <th>Course Code</th>
                    <th>Course Title</th>
                    <th>Department Name</th>
                    <th>Level</th>
                    <th>Semester</th>
                    <th>No of Lectures</th>
                    <th>Lectures taken</th>
                    <th colspan="3" class="text-center">Action</th>

                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server" ItemType="AttendanceMangementSystem.Model.Course" SelectMethod="GetCourses">
                    <ItemTemplate>
                        <tr>
                            <td>*</td>
                            <td><%#: Item.CourseCode %></td>
                            <td><%#: Item.CourseTitle %></td>
                            <td><%#: Item.Department.DepartmentName %></td>
                            <td><%#: Item.Level.LevelNo %></td>
                            <td><%#: Item.Semester.semesterName %></td>
                            <td><%#: Item.NoOfLectures %></td>
                            <td><%#: Item.NoOfLecturesTaken %></td>

                            <td class="text-center"><a href="AllocateLecturer?id=<%#: Item.Id %>">Edit</a></td>
                            <td class="text-center"><a href="?Id=<%#: Item.Id %>">Allocate Lecturer</a></td>
                            <td class="text-center"><a href="?Id=<%#: Item.Id %>">Details</a></td>
                            <td class="text-center"><a href="?Id=<%#: Item.Id %>">Delete</a></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>

        </table>
    </div>
</asp:Content>
