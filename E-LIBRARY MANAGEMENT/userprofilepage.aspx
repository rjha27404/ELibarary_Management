﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofilepage.aspx.cs" Inherits="E_LIBRARY_MANAGEMENT.userprofilepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/imgs/generaluser.png" />

                                </center>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Your Profile</h4>
                                        <span>Account Status</span>
                                        <asp:Label class="badge bg-info text-dark" ID="Label1" runat="server" Text="Your Status"></asp:Label>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                   <label>Full Name</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                          placeholder="Member ID" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="col-md-6">
                                   <label>Date Of Birth</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                          placeholder="Dob" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                   <label>Contact Number</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox3" 
                                          placeholder="Contact No" runat="server" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="col-md-6">
                                   <label>Email ID</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox4" 
                                          placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                   <label>State</label>
                                   <div class="form-group">
                                       <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                            <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                              <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                              <asp:ListItem Text="Assam" Value="Assam" />
                              <asp:ListItem Text="Bihar" Value="Bihar" />
                              <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Goa" Value="Goa" />
                              <asp:ListItem Text="Gujarat" Value="Gujarat" />
                              <asp:ListItem Text="Haryana" Value="Haryana" />
                              <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                              <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                              <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                              <asp:ListItem Text="Karnataka" Value="Karnataka" />
                              <asp:ListItem Text="Kerala" Value="Kerala" />
                              <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                              <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                              <asp:ListItem Text="Manipur" Value="Manipur" />
                              <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                              <asp:ListItem Text="Mizoram" Value="Mizoram" />
                              <asp:ListItem Text="Nagaland" Value="Nagaland" />
                              <asp:ListItem Text="Odisha" Value="Odisha" />
                              <asp:ListItem Text="Punjab" Value="Punjab" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Sikkim" Value="Sikkim" />
                              <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                              <asp:ListItem Text="Telangana" Value="Telangana" />
                              <asp:ListItem Text="Tripura" Value="Tripura" />
                              <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                              <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                              <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                       </asp:DropDownList>
                                    </div>
                                </div>
                                 <div class="col-md-4">
                                   <label>City</label>
                                   <div class="form-group">
                                       <asp:TextBox class="form-control" ID="TextBox6" 
                                          placeholder="City" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                   <label>Pin Code</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox7" 
                                          placeholder="Pin Code" runat="server" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                   <label>Full Address</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox5" 
                                          placeholder="Address" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                
                                    <center>
                                        <div class="col">
                                        <span class="badge bg-info text-dark">Login Credentials</span>
                                         </div>
                                    </center>
                          
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                   <label>User ID</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox8" 
                                          placeholder="User ID" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="col-md-4">
                                   <label>Old Password</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox9" 
                                          placeholder="Old Password" runat="server" ReadOnly="True" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                   <label>New Password</label>
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox10" 
                                          placeholder="New Password" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br /><br />
                            <div class="row">
                                <div class="col-md-8 mx-auto">
                                    <div class="form-group">
                                        <center>
                                       <asp:Button CssClass="btn btn-primary " 
                                           ID="Button1" runat="server" Text="Update" OnClick="Button1_Click1" />
                                        </center>
                                    </div>

                                </div>
                            </div>
                           </div>
                     </div>
                    </div>
 
                <a href="homepage.aspx"><< Back to Home</a><br /><br />
            </div>
            <div class="col-md-7">
            <div class="card">
                    <div class="card-body">
                            <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/imgs/books.png"  width="100px"/>

                                </center>
                            </div>
                        </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Your Issued Books</h4>
                                        <span>Account Status</span>
                                        <asp:Label class="badge bg-info text-dark" ID="Label2" runat="server" Text="your books info"></asp:Label>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                   <hr />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                                </div>
                            </div>
                     </div>
                </div>
            </div>
         </div>
      
    </div>
</asp:Content>
