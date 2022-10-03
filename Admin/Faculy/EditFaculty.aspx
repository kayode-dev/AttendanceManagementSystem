<%@ Page Title="Edit Faculty" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditFaculty.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Faculy.EditFaculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h3><%:Page.Title %></h3>
    <hr />

     <div class ="col-md-12">
        <div class ="form-horizontal">
            <div class ="form-group">
                <asp:Label ID="Label1" runat="server" CssClass ="control-label col-md-3">Faculty Name: </asp:Label>   
                <div class ="col-md-6">
                    <asp:TextBox ID="FacultyName" runat="server" CssClass ="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Faculty Name is Required" SetFocusOnError ="true" ControlToValidate ="FacultyName" Display="Dynamic" CssClass ="text-danger"></asp:RequiredFieldValidator>
                </div>

            </div>
            <div class ="form-group">
                 
                <div class ="col-md-6 col-md-offset-3 ">
                    <asp:Button ID="UpdateFAculty" runat="server" Text="Update Faculty" CssClass ="btn btn-default pull-right " OnClick="UpdateFAculty_Click" />
                </div>

            </div>
           
        </div>

    </div>
</asp:Content>
