<%@ Page Title="Department Details" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DepartmentDetails.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Department_A.DepartmentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3><%:Page.Title %></h3>
    <hr />

     <div class="col-md-4 col-md-offset-4">
        <asp:FormView ID="FormView1" runat="server" ItemType="AttendanceMangementSystem.Model.Department" SelectMethod="getDepartmentById">
            <ItemTemplate>
                <table class="table table-bordered table-condensed"style="float:left" >
                    
                    <tr>
                        <th>Department Name</th>
                        <td class="text-center"><%#:Item.DepartmentName %></td>
                    </tr>

                    <tr>
                        <th>Faculty of </th>
                        <td class="text-center"><%#:Item.Faculty.FacultyName%></td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <a class="btn btn-default" href="EditDepartment?Id=<%#:Item.Id %>">Edit</a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>

        </asp:FormView>
    </div>
</asp:Content>
