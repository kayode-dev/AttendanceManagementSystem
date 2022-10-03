<%@ Page Title="Faculties" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Faculties.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Faculy.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3><%:Page.Title %></h3>
    <hr />

    <a href="AddFaculty" class ="btn btn-link">Add Faculty</a>

    <div class="table-responsive">
        <table class="table table-condensed table-hover">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>FacultyName</th>
                     <th colspan ="3" class="text-center" >Action</th>

                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server" ItemType="AttendanceMangementSystem.Model.Faculty" SelectMethod="GetFaculties">
                    <ItemTemplate>
                        <tr>
                            <td><%#: Item.Id %></td>
                            <td><%#: Item.FacultyName %></td>

                             <td  class="text-center"><a href="EditFaculty?Id=<%#: Item.Id %>">Edit</a></td>
                             <td class="text-center"><a href="FacultyDetails?Id=<%#: Item.Id %>">Details</a></td>
                             <td class="text-center"><a href="DeleteFaculty?Id=<%#: Item.Id %>">Delete</a></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>

        </table>
    </div>

</asp:Content>
