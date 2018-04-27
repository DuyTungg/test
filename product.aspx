<%@ Page Title="Product" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="product.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ustora Demo</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        
                        <ul>
                            <li><a href="client.aspx"><i class="fa fa-user"></i> Client</a></li>
                            <li><a href="purchase.aspx"><i class="fa fa-user"></i> Purchase</a></li>
                            <li><a href="purchase_item.aspx"><i class="fa fa-user"></i> Purchase Item</a></li>
                            <li><a href="product.aspx"><i class="fa fa-user"></i> Product</a></li>
                            <li><a href="product_category.aspx"><i class="fa fa-user"></i> Product Category</a></li>

                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">currency :</span><span class="value">USD </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">USD</a></li>
                                    <li><a href="#">INR</a></li>
                                    <li><a href="#">GBP</a></li>
                                </ul>
                            </li>

                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">language :</span><span class="value">English </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">English</a></li>
                                    <li><a href="#">French</a></li>
                                    <li><a href="#">German</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    
                </div>
                
                <div class="col-sm-6">
                    
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
   
    
    
                </div>
            </div>
        </div>
    </div> <!-- End promo area -->
    
    <div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title">Product</h2>

                        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataProduct">
                            <EditItemTemplate>
                                Id:
                                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                <br />
                                Product_category_id:
                                <asp:TextBox ID="Product_category_idTextBox" runat="server" Text='<%# Bind("Product_category_id") %>' />
                                <br />
                                Sku:
                                <asp:TextBox ID="SkuTextBox" runat="server" Text='<%# Bind("Sku") %>' />
                                <br />
                                Name:
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                <br />
                                Price:
                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                <br />
                                Description:
                                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                                <br />
                                Image:
                                <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Id:
                                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                                <br />
                                Product_category_id:
                                <asp:TextBox ID="Product_category_idTextBox" runat="server" Text='<%# Bind("Product_category_id") %>' />
                                <br />
                                Sku:
                                <asp:TextBox ID="SkuTextBox" runat="server" Text='<%# Bind("Sku") %>' />
                                <br />
                                Name:
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                <br />
                                Price:
                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                <br />
                                Description:
                                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                                <br />
                                Image:
                                <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Id:
                                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                <br />
                                Product_category_id:
                                <asp:Label ID="Product_category_idLabel" runat="server" Text='<%# Bind("Product_category_id") %>' />
                                <br />
                                Sku:
                                <asp:Label ID="SkuLabel" runat="server" Text='<%# Bind("Sku") %>' />
                                <br />
                                Name:
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                                <br />
                                Price:
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                                <br />
                                Description:
                                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                                <br />
                                Image:
                                <br />
                                <asp:Image ID="ImageLabel" runat="server" ImageUrl='<%# Bind("Image") %>' />
                                <br />
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                            </ItemTemplate>
                        </asp:FormView>

                        <asp:SqlDataSource ID="SqlDataProduct" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionWebsite %>" DeleteCommand="DELETE FROM [Product] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Product] ([Id], [Product_category_id], [Sku], [Name], [Price], [Description], [Image]) VALUES (@Id, @Product_category_id, @Sku, @Name, @Price, @Description, @Image)" SelectCommand="SELECT [Id], [Product_category_id], [Sku], [Name], [Price], [Description], [Image] FROM [Product]" UpdateCommand="UPDATE [Product] SET [Product_category_id] = @Product_category_id, [Sku] = @Sku, [Name] = @Name, [Price] = @Price, [Description] = @Description, [Image] = @Image WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                                <asp:Parameter Name="Product_category_id" Type="Int32" />
                                <asp:Parameter Name="Sku" Type="String" />
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Price" Type="Decimal" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="Image" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Product_category_id" Type="Int32" />
                                <asp:Parameter Name="Sku" Type="String" />
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Price" Type="Decimal" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="Image" Type="String" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End main content area -->
    
    <div class="brands-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="brand-wrapper">
                        <asp:FormView ID="FormView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                            <EditItemTemplate>
                                Id:
                                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                <br />
                                Full_name:
                                <asp:TextBox ID="Full_nameTextBox" runat="server" Text='<%# Bind("Full_name") %>' />
                                <br />
                                Email:
                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Id:
                                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                                <br />
                                Full_name:
                                <asp:TextBox ID="Full_nameTextBox" runat="server" Text='<%# Bind("Full_name") %>' />
                                <br />
                                Email:
                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Id:
                                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                <br />
                                Full_name:
                                <asp:Label ID="Full_nameLabel" runat="server" Text='<%# Bind("Full_name") %>' />
                                <br />
                                Email:
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                                <br />
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                            </ItemTemplate>
                        </asp:FormView>  
                                             
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Client] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Client] ([Id], [Full_name], [Email]) VALUES (@Id, @Full_name, @Email)" SelectCommand="SELECT [Id], [Full_name], [Email] FROM [Client]" UpdateCommand="UPDATE [Client] SET [Full_name] = @Full_name, [Email] = @Email WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                                <asp:Parameter Name="Full_name" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Full_name" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                                             
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-newsletter">
                        <h2 class="footer-wid-title">Newsletter</h2>
                        <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer top area -->
    
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>&copy; 2015 uCommerce. All Rights Reserved. <a href="http://www.freshdesignweb.com" target="_blank">freshDesignweb.com</a></p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer bottom area -->
   
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="js/main.js"></script>
    
    <!-- Slider -->
    <script type="text/javascript" src="js/bxslider.min.js"></script>
	<script type="text/javascript" src="js/script.slider.js"></script>
  </body>
</asp:Content>
