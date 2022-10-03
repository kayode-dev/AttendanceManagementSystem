<%@ Page Title="Delete Faculty" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DeleteFaculty.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Faculy.DeleteFaculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h3><%:Page.Title %></h3>
    <hr />
     <div>
        <asp:Label ID="ConfirmDelete" runat="server" ForeColor="Red" Font-Size="20"></asp:Label>
    </div>
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
                    <asp:Button ID="ReturnToFaclties" runat="server" Text="Edit" CssClass="btn btn-default" OnClick="ReturnToFaclties_Click" />
                    <asp:Button ID="DelFaculty" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="DeleteFaculty_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
