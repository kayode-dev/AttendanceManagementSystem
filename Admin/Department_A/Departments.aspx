<%@ Page Title="Departmemts" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Department_A.Departments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3><%:Page.Title %></h3>
    <hr />

    <a href="AddDepartment" class ="btn btn-link">Add Department</a>

    <div class="table-responsive">
        <table class="table table-condensed table-hover">
            <thead>
                <tr>
                    <th>*</th>
                    <th>Faculty Name</th>
                    <th>Department Name</th>
                     <th colspan ="3" class="text-center" >Action</th>

                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server" ItemType="AttendanceMangementSystem.Model.Department" SelectMethod="GetDepartments">
                    <ItemTemplate>
                        <tr>
                            <td>*</td>
                            <td><%#: Item.Faculty.FacultyName %></td>
                            <td><%#: Item.DepartmentName %></td>

                             <td  class="text-center"><a href="EditDepartment?Id=<%#: Item.Id %>">Edit</a></td>
                             <td class="text-center"><a href="DepartmentDetails?Id=<%#: Item.Id %>">Details</a></td>
                             <td class="text-center"><a href="DeleteDepartment?Id=<%#: Item.Id %>">Delete</a></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>

        </table>
    </div>
</asp:Content>
