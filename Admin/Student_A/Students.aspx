<%@ Page Title="Students" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Student_A.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <h3><%:Page.Title %></h3>
    <hr />

    <a href="AddStudent" class ="btn btn-link">Add Student</a>

    <div class="table-responsive">
        <table class="table table-condensed table-hover">
            <thead>
                <tr>
                    <th>*</th>
                    <th>First Name</th>
                    <th>Middle Name</th>
                    <th>Last Name</th>
                    <th>Department</th>
                     <th colspan ="3" class="text-center" >Action</th>

                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server" ItemType="AttendanceMangementSystem.Model.StudentDetail" SelectMethod="GetStudents">
                    <ItemTemplate>
                        <tr>
                            <td>*</td>
                            <td><%#: Item.FirstName %></td>
                            <td><%#: Item.MiddleName %></td>
                            <td><%#: Item.LastName %></td>
                            <td><%#: Item.Department.DepartmentName %></td>

                             <td  class="text-center"><a href="?Id=<%#: Item.Id %>">Edit</a></td>
                            <td class ="text-center"><a href="AllocateCourse?Id=<%#:Item.Id %>">Allocate Course</a></td>
                             <td class="text-center"><a href="?Id=<%#: Item.Id %>">Details</a></td>
                             <td class="text-center"><a href="?Id=<%#: Item.Id %>">Delete</a></td>
                            <td class="text-center"><a href="../Reports/StudentCourseReport/StudentGeneralAttendanceReportPage?Id=<%#: Item.Id %>">Get Attendance Report</a></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>

        </table>
    </div>

</asp:Content>
