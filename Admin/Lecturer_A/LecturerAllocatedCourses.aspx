<%@ Page Title="Lecturer's Courses" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="LecturerAllocatedCourses.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Lecturer_A.LecturerAllocatedCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3><%:Page.Title %></h3>
    <hr />

    <div class="table-responsive">
        <table class="table table-condensed table-hover">
            <thead>
                <tr>
                    <th>*</th>
                    <th>Course Code</th>
                    <th>Course Title</th>
                     <th colspan ="3" class="text-center" >Action</th>

                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server" ItemType="AttendanceMangementSystem.Model.LecturersCourse" SelectMethod="GetCoursesByLecturerId">
                    <ItemTemplate>
                        <tr>
                            <td>*</td>
                            <td><%#: Item.Course.CourseCode %></td>
                            <td><%#: Item.Course.CourseTitle %></td>

                             <td  class="text-center"><a href="AttendancePage?Id=<%#: Item.CourseId %>">Mark Attendance</a></td>
                             <td class="text-center"><a href="../Reports/LecturerCourseReport/LecturerCourseReportPage?Id=<%#: Item.CourseId %>">Get Report</a></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>

        </table>
    </div>

</asp:Content>
