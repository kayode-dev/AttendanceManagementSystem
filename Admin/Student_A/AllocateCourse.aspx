<%@ Page Title="Allocate Courses" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AllocateCourse.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Student_A.AllocateCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <script>
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";

            if (confirm("Are you sure you want to delete this record?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }

     </script>
    <h3 runat="server" id="CourseAllocationHeader"></h3>
    <hr />
    <div class="col-md-12">

        <div class="form-horizontal">

             <div class="form-group">
                <asp:Label ID="Label2" runat="server" AssociatedControlID="DepartmentDropDownList"
                    CssClass="col-md-2 control-label">Faculty:</asp:Label>
                <div class="col-md-10">
                    <asp:DropDownList ID="FacultyDropDownList" runat="server" 
                        CssClass="form-control" 
                        OnSelectedIndexChanged="FacultyDropDownList_SelectedIndexChanged"
                         AutoPostBack="true">
                        <asp:ListItem Text ="Select Item" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" AssociatedControlID="DepartmentDropDownList"
                    CssClass="col-md-2 control-label">Department:</asp:Label>
                <div class="col-md-10">
                    <asp:DropDownList ID="DepartmentDropDownList" runat="server" 
                        CssClass="form-control" 
                        OnSelectedIndexChanged="DepartmentDropDownList_SelectedIndexChanged"
                         AutoPostBack="true">
                        <asp:ListItem Text ="Select Item" Value="-1"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

           
          
            <div class="table-responsive col-md-6">
                 <h4>Available Courses</h4>
                <asp:GridView ID="CourseGridView" runat="server" CssClass="table table-condensed table-bordered adjust-grid" 
                    AutoGenerateColumns="false" HeaderStyle-BackColor="#666666" HeaderStyle-ForeColor="#ffffff" EmptyDataRowStyle-BackColor="#ff3300" EmptyDataRowStyle-ForeColor="#ffffff">
                    <Columns>
                        <asp:TemplateField HeaderText="Select" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" >
                            <ItemTemplate>
                                <asp:CheckBox ID="CourseAllocationCheckBox" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Id" DataField="Id" Visible="true" />
                        <asp:BoundField HeaderText="Course Title" DataField="CourseTitle" />
                        <asp:BoundField HeaderText="Course Code" DataField="CourseCode" />
                        
                    </Columns>
                    <EmptyDataTemplate>
                      <span>None at the moment</span>
                    </EmptyDataTemplate>
                    
                </asp:GridView>
                <div>
                    <asp:Button ID="AllocateCourseButton" runat="server" Text="Allocate" 
                        CssClass="btn btn-default btn-block" OnClick="AllocateCourseButton_Click" />
                </div>
            </div>

            <div class="table-responsive col-md-6">
                 <h4 runat="server" id="CoursesAllocatedHeader"></h4>
                <asp:GridView ID="AllocatedCoursesGridView" runat="server" CssClass="table table-condensed table-bordered adjust-grid" 
                    AutoGenerateColumns="false" HeaderStyle-BackColor="#666666" DataKeyNames="Id"
                    HeaderStyle-ForeColor="#ffffff" EmptyDataRowStyle-BackColor="#ff3300" EmptyDataRowStyle-ForeColor="#ffffff" >
                    <Columns>
                        <asp:BoundField HeaderText="Id" DataField="Id" Visible="false" />
                        <asp:BoundField HeaderText="Student Id" DataField="StudentId" Visible="false" />
                        <asp:BoundField HeaderText="Course Id" DataField="CourseId" Visible="false" />
                        <asp:BoundField HeaderText="Course Title" DataField="CourseTitle" />
                        <asp:BoundField HeaderText="Course Code" DataField="CourseCode" />
                        <asp:TemplateField HeaderText="Remove" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                            <ItemTemplate>
                                <asp:Button ID="RemoveCourseButton" runat="server" Text="Remove" 
                                    OnClientClick="Confirm()"
                                    OnClick="RemoveCourseButton_Click" CssClass="btn btn-danger btn-sm" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                      <span>None at the moment</span>
                    </EmptyDataTemplate>
                </asp:GridView>
                <div>
                    <asp:Button ID="ReturnToStudentList" runat="server" Text="Done" 
                        CssClass="btn btn-default btn-block" OnClick="ReturnToStudentList_Click" />
                </div>
            </div>
        </div>

    </div>
</asp:Content>

