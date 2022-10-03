<%@ Page Title="Faculty Details" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="FacultyDetails.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Faculy.FacultyDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3><%:Page.Title %></h3>
    <hr />

     <div class="col-md-4 col-md-offset-4">
        <table class="table table-bordered table-condensed">
            <tr>
                <th class="text-center" colspan="2">Faculty Details</th>
            </tr>
            <tr>
                <th>Name</th>
                <td class="text-center">
                    <asp:Label ID="FacultyDetailsLabel" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                
                <td colspan="2">
                    <asp:Button ID="EditFaculty" runat="server" Text="Edit" CssClass="btn btn-default" OnClick="EditFaculty_Click" />
                    <asp:Button ID="DeleteFaculty" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="DeleteFaculty_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
