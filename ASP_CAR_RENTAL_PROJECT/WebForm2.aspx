<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ASP_CAR_RENTAL_PROJECT.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
               <!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <title>Denno Travels</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,400;0,700;0,900;1,400;1,700;1,900&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>

        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Topbar Start -->
        <div class="container-fluid topbar bg-secondary d-none d-xl-block w-100">
            <div class="container">
                <div class="row gx-0 align-items-center" style="height: 45px;">
                    <div class="col-lg-6 text-center text-lg-start mb-lg-0">
                        <div class="d-flex flex-wrap">
                            <a href="#" class="text-muted me-4"><i class="fas fa-map-marker-alt text-primary me-2"></i>Ngong Road,Kilimani, Kenya</a>
                            <a href="tel:+254 724 227813" class="text-muted me-4"><i class="fas fa-phone-alt text-primary me-2"></i>+254 724 227813</a>
                            <a href="mailto:dennisnjau@gmail.com" class="text-muted me-0"><i class="fas fa-envelope text-primary me-2"></i>dennisnjau@gmail.com</a>
                        </div>
                    </div>
                    <div class="col-lg-6 text-center text-lg-end">
                        <div class="d-flex align-items-center justify-content-end">
                            <a href="#" class="btn btn-light btn-sm-square rounded-circle me-3"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="btn btn-light btn-sm-square rounded-circle me-3"><i class="fab fa-twitter"></i></a>
                            <a href="#" class="btn btn-light btn-sm-square rounded-circle me-3"><i class="fab fa-instagram"></i></a>
                            <a href="#" class="btn btn-light btn-sm-square rounded-circle me-0"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Topbar End -->

        <!-- Navbar & Hero Start -->
        <div class="container-fluid nav-bar sticky-top px-0 px-lg-4 py-2 py-lg-0">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a href="" class="navbar-brand p-0">
                        <h1 class="display-6 text-primary"><i class="fas fa-car-alt me-3"></i></i>Denno Travels</h1>
                        <!-- <img src="img/logo.png" alt="Logo"> -->
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <div class="navbar-nav mx-auto py-0">
                            <a href="WebForm1.aspx" class="nav-item nav-link">Home</a>
                            <a href="about.aspx" class="nav-item nav-link">About</a>
                            <a href="service.aspx" class="nav-item nav-link">Service</a>
                            <a href="blog.aspx" class="nav-item nav-link">Blog</a>
                            
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-item nav-link" data-bs-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu m-0">
                                    <a href="feature.aspx" class="dropdown-item">Our Feature</a>
                                    <a href="cars.aspx" class="dropdown-item">Our Cars</a>
                                    <a href="team.aspx" class="dropdown-item">Our Team</a>
                                    <a href="testimonial.aspx" class="dropdown-item">Testimonial</a>
                                    <%--<a href="404.aspx" class="dropdown-item">404 Page</a>--%>
                                </div>
                            </div>
                            <a href="contact.aspx" class="nav-item nav-link">Contact</a>
                            <a href="WebForm2.aspx" class="nav-item nav-link active">Book Now</a>
                        </div>
                        <a href="#" class="btn btn-primary rounded-pill py-2 px-4">Get Started</a>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Navbar & Hero End -->

        <!-- Header Start -->
        <div class="container-fluid bg-breadcrumb">
            <div class="container text-center py-5" style="max-width: 900px;">
                <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s">Book Now</h4>
                <ol class="breadcrumb d-flex justify-content-center mb-0 wow fadeInDown" data-wow-delay="0.3s">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active text-primary">Book Now</li>
                </ol>    
            </div>
        </div>
        <!-- Header End -->

            </asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
                       <center>
                    <div class="col-xl-6 wow fadeInUp" data-wow-delay="0.1s">
    <div class="bg-secondary p-5 rounded">
        <h4 class="text-primary mb-4">Send Your Message</h4>
        <form>
            <div class="row g-4">
                <div class="col-lg-12 col-xl-6">
                    <div class="form-floating">
                        <asp:TextBox ID="fname" runat="server" class="form-control" placeholder="Your First Name"></asp:TextBox>
                        <label>Your First Name</label>
                    </div>
                </div>
                <div class="col-lg-12 col-xl-6">
                    <div class="form-floating">
                        <asp:TextBox ID="lname" runat="server" class="form-control" placeholder="Your Last Name"></asp:TextBox>
                        <label>Your Last Name</label>
                    </div>
                </div>
                <div class="col-lg-12 col-xl-6">
                    <div class="form-floating">
                        <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Your Email"></asp:TextBox>
                        <label>Your Email</label>
                    </div>
                </div>
                <div class="col-lg-12 col-xl-6">
                    <div class="form-floating">
                        <asp:TextBox ID="phone" runat="server" class="form-control" placeholder="Your Phone"></asp:TextBox>
                        <label>Your Phone</label>
                    </div>
                </div>
                <div class="col-lg-12 col-xl-6">
                    <div class="form-floating" aria-orientation="horizontal">
                        <asp:RadioButtonList ID="gender" runat="server" class="form-control" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        <label>Gender</label>
                    </div>
                </div>
                <div class="col-lg-12 col-xl-6">
                    <div class="form-floating">
                        <asp:TextBox ID="city" runat="server" class="form-control" placeholder="Your City"></asp:TextBox>
                        <label>Your City</label>
                    </div>
                </div>
                <div class="col-lg-12 col-xl-6">
                    <div class="form-floating">
                        <asp:TextBox ID="address" runat="server" class="form-control" placeholder="Your Address"></asp:TextBox>
                        <label>Your Address</label>
                    </div>
                </div>
                <div class="col-12 col-xl-6">
                    <div class="form-floating">
                        <asp:TextBox ID="pickuppoint" runat="server" class="form-control" placeholder="Pickup Point"></asp:TextBox>
                        <label>Pickup Point</label>
                    </div>
                </div>
                <div class="col-12 col-xl-6">
                    <div class="form-floating">
                        <asp:TextBox ID="dropoffpoint" runat="server" class="form-control" placeholder="Dropoff Point"></asp:TextBox>
                        <label>Dropoff Point</label>
                    </div>
                </div>
                <div class="col-12 col-xl-6">
                    <div class="form-floating">
                        <asp:TextBox ID="pickupdate" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                        <label>Pickup Date</label>
                    </div>
                </div>
                <div class="col-12 col-xl-6">
                    <div class="form-floating">
                        <asp:TextBox ID="dropoffdate" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                        <label>Dropoff Date</label>
                    </div>
                </div>
                <div class="col-12 col-xl-6">
                    <div class="form-floating">
                        <asp:DropDownList ID="pickuptime" runat="server" class="form-control">
                            <asp:ListItem>-- Select Time --</asp:ListItem>
                            <asp:ListItem>9:00 AM</asp:ListItem>
                            <asp:ListItem>10:00 AM</asp:ListItem>
                            <asp:ListItem>11:00 AM</asp:ListItem>
                            <asp:ListItem>12:00 PM</asp:ListItem>
                            <asp:ListItem>1:00 PM</asp:ListItem>
                            <asp:ListItem>2:00 PM</asp:ListItem>
                            <asp:ListItem>3:00 PM</asp:ListItem>
                            <asp:ListItem>4:00 PM</asp:ListItem>
                            <asp:ListItem>5:00 PM</asp:ListItem>
                            <asp:ListItem>6:00 PM</asp:ListItem>
                            <asp:ListItem>7:00 PM</asp:ListItem>
                        </asp:DropDownList>
                        <label>Pickup Time</label>
                    </div>
                </div>
                <div class="col-12 col-xl-6">
                    <div class="form-floating">
                        <asp:DropDownList ID="dropofftime" runat="server" class="form-control">
                            <asp:ListItem>-- Select Time --</asp:ListItem>
                            <asp:ListItem>9:00 AM</asp:ListItem>
                            <asp:ListItem>10:00 AM</asp:ListItem>
                            <asp:ListItem>11:00 AM</asp:ListItem>
                            <asp:ListItem>12:00 PM</asp:ListItem>
                            <asp:ListItem>1:00 PM</asp:ListItem>
                            <asp:ListItem>2:00 PM</asp:ListItem>
                            <asp:ListItem>3:00 PM</asp:ListItem>
                            <asp:ListItem>4:00 PM</asp:ListItem>
                            <asp:ListItem>5:00 PM</asp:ListItem>
                            <asp:ListItem>6:00 PM</asp:ListItem>
                            <asp:ListItem>7:00 PM</asp:ListItem>
                        </asp:DropDownList>
                        <label>Dropoff Time</label>
                    </div>
                </div>
                <div class="col-12 col-xl-6">
                    <div class="form-floating">
                        <asp:DropDownList ID="cartype" runat="server" class="form-control">
                            <asp:ListItem>-- Select Car --</asp:ListItem>
                            <asp:ListItem>Mercedes Benz R3</asp:ListItem>
                            <asp:ListItem>Mercedes-Benz Hatchback</asp:ListItem>
                            <asp:ListItem>BMW 5 Series</asp:ListItem>
                            <asp:ListItem>Hyundai Kona</asp:ListItem>
                        </asp:DropDownList>
                        <label>Car Type</label>
                    </div>
                </div>
                <center>
                    <div class="col-12 col-xl-6">
                        <asp:Button ID="sendmassage" runat="server" Text="Book" class="btn btn-light w-100 py-3" OnClick="sendmassage_Click1" />
                    </div>
                </center>
            </div>
        </form>
    </div>
</div>

     </center>
            </asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
                        <!-- Footer Start -->
        <div class="container-fluid footer py-5 wow fadeIn" data-wow-delay="0.2s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="footer-item d-flex flex-column">
                            <div class="footer-item">
                                <h4 class="text-white mb-4">About Us</h4>
                                <p class="mb-3">Our personalized services include 24/7 road assistance, free pick-up and drop-off, and flexible rental plans to ensure your journey is smooth and hassle-free. We prioritize safety, transparency, and top-quality service, delivering a seamless driving experience every time.</p>
                            </div>
                            <div class="position-relative">
                                <input class="form-control rounded-pill w-100 py-3 ps-4 pe-5" type="text" placeholder="Enter your email">
                                <button type="button" class="btn btn-secondary rounded-pill position-absolute top-0 end-0 py-2 mt-2 me-2">Subscribe</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="footer-item d-flex flex-column">
                            <h4 class="text-white mb-4">Quick Links</h4>
                            <a href="#"><i class="fas fa-angle-right me-2"></i> About</a>
                            <a href="#"><i class="fas fa-angle-right me-2"></i> Cars</a>
                            <a href="#"><i class="fas fa-angle-right me-2"></i> Car Types</a>
                            <a href="#"><i class="fas fa-angle-right me-2"></i> Team</a>
                            <a href="#"><i class="fas fa-angle-right me-2"></i> Contact us</a>
                            <a href="#"><i class="fas fa-angle-right me-2"></i> Terms & Conditions</a>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="footer-item d-flex flex-column">
                            <h4 class="text-white mb-4">Business Hours</h4>
                            <div class="mb-3">
                                <h6 class="text-muted mb-0">Mon - Friday:</h6>
                                <p class="text-white mb-0">09.00 am to 07.00 pm</p>
                            </div>
                            <div class="mb-3">
                                <h6 class="text-muted mb-0">Saturday:</h6>
                                <p class="text-white mb-0">10.00 am to 05.00 pm</p>
                            </div>
                            <div class="mb-3">
                                <h6 class="text-muted mb-0">Vacation:</h6>
                                <p class="text-white mb-0">All Sunday is our vacation</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="footer-item d-flex flex-column">
                            <h4 class="text-white mb-4">Contact Info</h4>
                            <a href="#"><i class="fa fa-map-marker-alt me-2"></i> Ngong Road,Kilimani,Nairobi, Kenya</a>
                            <a href="mailto:dennisnjau@gmail.com"><i class="fas fa-envelope me-2"></i> dennisnjau@gmail.com</a>
                            <a href="tel:0724227813"><i class="fas fa-phone me-2"></i> 0724227813</a>
                            <a href="tel:+254 724 227813" class="mb-3"><i class="fas fa-print me-2"></i> +254 724 227813</a>
                            <div class="d-flex">
                                <a class="btn btn-secondary btn-md-square rounded-circle me-3" href=""><i class="fab fa-facebook-f text-white"></i></a>
                                <a class="btn btn-secondary btn-md-square rounded-circle me-3" href=""><i class="fab fa-twitter text-white"></i></a>
                                <a class="btn btn-secondary btn-md-square rounded-circle me-3" href=""><i class="fab fa-instagram text-white"></i></a>
                                <a class="btn btn-secondary btn-md-square rounded-circle me-0" href=""><i class="fab fa-linkedin-in text-white"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->
        
        <!-- Copyright Start -->
        <div class="container-fluid copyright py-4">
            <div class="container">
                <div class="row g-4 align-items-center">
                    <div class="col-md-6 text-center text-md-start mb-md-0">
                        <span class="text-body"><a href="#" class="border-bottom text-white"><i class="fas fa-copyright text-light me-2"></i>Denno Travels</a>, All right reserved.</span>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-secondary btn-lg-square rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   

        
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    </body>

</html>
            </asp:Content>

