<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admincars.aspx.cs" Inherits="ASP_CAR_RENTAL_PROJECT.admincars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
     
    <style>

        table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    font-size: 16px;
    text-align: left;
}

table tr {
    border-bottom: 1px solid #ddd;
}

table td {
    padding: 10px 15px;
}

table td:first-child {
    font-weight: bold;
    color: #333;
}

table td input[type="text"],
table td select {
    width: calc(100% - 30px);
    padding: 5px 10px;
    font-size: 14px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

table td button {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 10px 15px;
    cursor: pointer;
    border-radius: 5px;
    font-size: 14px;
}

table td button:hover {
    background-color: #0056b3;
}

table td input[type="file"] {
    margin: 0;
    font-size: 14px;
}

    </style>


        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <div class="container-fluid topbar bg-secondary d-none d-xl-block w-100">
            <div class="container">
                <div class="row gx-0 align-items-center" style="height: 45px;">
                    <div class="col-lg-6 text-center text-lg-start mb-lg-0">
                       
                    </div>
                    <div class="col-lg-6 text-center text-lg-end">
                        
                    </div>
                </div>
            </div>
        </div>
<div class="container-fluid nav-bar sticky-top px-0 px-lg-4 py-2 py-lg-0">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a href="#" class="navbar-brand p-0">
                <h1 class="display-6 text-primary">
                    <i class="fas fa-car-alt me-3"></i>Denno Travels
                </h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="fa fa-bars"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav mx-auto py-0">
                    <a href="admincars.aspx" class="nav-item nav-link active">Cars</a>
                    <a href="adminbookeddetails.aspx" class="nav-item nav-link active">Booked</a>
                    <a href="admincontects.aspx" class="nav-item nav-link active">Contacts</a>
                </div>
            </div>
        </nav>
    </div>
</div>

        <div class="container-fluid bg-breadcrumb">
            <div class="container text-center py-5" style="max-width: 900px;">
                <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s">Cars</h4>
                 
            </div>
        </div>
        </asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
                        <div class="container-fluid categories py-5">
            <div class="container py-5">
                <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">
                    <h1 class="display-5 text-capitalize mb-3">Vehicle</h1>
                </div>

                <table>
                    <tr>
                    <td>Car Image : </td>
                    <td>
                        <asp:FileUpload ID="carimage" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Car Name :</td>
                    <td><asp:TextBox ID="carname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Car Rent Price : </td>
                    <td>
                        <asp:TextBox ID="carrent" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Car Seats : </td>
                    <td>
                        <asp:DropDownList ID="carseats" runat="server" AutoPostBack="false">
                            <asp:ListItem>-- Select --</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Car Type : </td>
                    <td>
                        <asp:RadioButtonList ID="cartype" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Manual</asp:ListItem>
                            <asp:ListItem>Automatic</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                    <tr>
                    <td>Car Fuel Type : </td>
                    <td>
                        <asp:DropDownList ID="carfuel" runat="server">
                            <asp:ListItem>-- Select --</asp:ListItem>
                            <asp:ListItem>Petrol</asp:ListItem>
                            <asp:ListItem>Diesel</asp:ListItem>
                            <asp:ListItem>CNG</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Car Average : </td>
                    <td>
                        <asp:TextBox ID="caraverage" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="save" runat="server" Text="Save" OnClick="save_Click2"/>
                    </td>
                </tr>
            </table>

                <style>
                    /* Apply basic styling to the GridView table */
#CarsInfo {
    width: 100%;
    border-collapse: collapse;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin-top: 20px;
}

/* Header row style */
#CarsInfo th {
    background-color: #4CAF50;
    color: white;
    text-align: center;
    padding: 10px;
    font-size: 16px;
}

/* Data rows style */
#CarsInfo td {
    padding: 10px;
    text-align: center;
    border-bottom: 1px solid #ddd;
    vertical-align: middle;
    font-size: 15px;
}

/* Image size consistency */
#CarsInfo img {
    border-radius: 5px;
    object-fit: cover;
}

/* Alternate row background */
#CarsInfo tr:nth-child(even) {
    background-color: #f9f9f9;
}

/* Hover effect */
#CarsInfo tr:hover {
    background-color: #f1f1f1;
}

/* Edit/Delete button style */
#CarsInfo a {
    color: #2196F3;
    text-decoration: none;
    font-weight: bold;
}

#CarsInfo a:hover {
    text-decoration: underline;
    color: #0b7dda;
}


                </style>
                <asp:GridView runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged" ID="CarsInfo" OnRowCommand="CarsInfo_RowCommand1">
                    <Columns>
                        <asp:TemplateField HeaderText="Car Id">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Car_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Car Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="50px" Width="50px" ImageUrl='<%# Eval("Car_image") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Car Name">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Car_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Car Rent Price">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Car_rental_price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Car Seats">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Car_seats") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Car Type">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Car_type") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Car Fuel Type">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Car_fuel_type") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Car Average">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Car_average") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Car_id") %>' CommandName="edit">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Car_id") %>' CommandName="delete">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                </div>
                        </div>
</asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
                     
        
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    

    <script src="js/main.js"></script>

            </asp:Content>