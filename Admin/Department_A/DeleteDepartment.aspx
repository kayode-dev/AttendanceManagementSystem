<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DeleteDepartment.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Department_A.DeleteDepartment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3><%:Page.Title %></h3>
    <hr />
    <div>
        <asp:Label ID="ConfirmDelete" runat="server" ForeColor="Red" Font-Size="20"></asp:Label>
    </div>

    <div class="col-md-12 col-md-offset-4">
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
                            <asp:Button ID="ReturnToDepartments" runat="server" Text="No" CssClass="btn btn-default" OnClick="ReturnToDepartments_Click" />
                            <asp:Button ID="DeleteDepartment" runat="server" Text="Yes" CssClass="btn btn-danger"
                                onClick="DeleteDepartment_Click" OnClientClick='return confirm("Are you sure you want to delete this record")'/>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>

        </asp:FormView>
    </div>
</asp:Content>
