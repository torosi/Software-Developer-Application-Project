<%@ Page Title="Edit Home Page" Language="C#"  AutoEventWireup="true"   CodeBehind="EditHome.aspx.cs" Inherits="TestProject.EditHome" %>


<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" href="~\Content\Site.css">

    <link rel="stylesheet" href="~\Content\foundation.css">
    <link rel="stylesheet" href="~\Content\foundation-icons\foundation-icons.css">

    <script src="~\Scripts\foundation.js"></script>
</head>

<body>
        <div class="top-bar">
            <div class="content-width">
                <div class="top-bar-logo">
                    <img src="Content/Images/logo.png" alt="opticron logo" />
                </div>
                <div class="top-bar-nav-container">
                    <div class="top-bar-left">
                        <ul class="dropdown menu" data-dropdown-menu>
                          <li><a href="#">Our Products</a></li>
                          <li><a href="#">Where to Buy</a></li>
                          <li><a href="#">News & Reviews</a></li>
                          <li><a href="#">Help & Support</a></li>
                          <li><a href="#">My Opticron</a></li>
                        </ul>
                    </div>
                  <div class="top-bar-right">
                    <ul class="menu">
                      <li><input type="search" placeholder="Search"></li>
                      <li><button type="button" class="button search-button"><i class="fi-magnifying-glass"></i></button></li>
                    </ul>
                  </div>
                </div>
            </div>
        </div>

        <div class="container body-content">
            <div class="container content-width form-main">
        <form id="form1" runat="server">

          <div class="grid-x grid-margin-x">
          </div>
          <div class="grid-x grid-margin-x">
            <div class="cell small-12">
                <label>Box 1 Title
                <input type="text" id="Box1Title" name="box1Title" runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Box 2 Title
                <input type="text" id="Box2Title" name="box2Title" runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Box 3 Title
                <input type="text" id="Box3Title" name="box3Title" runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Box 4 Title
                <input type="text" id="Box4Title" name="box4Title" runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Box 1 Text
                <input type="text" id="Box1Text" name="box1Text" runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Box 2 Text
                <input type="text" id="Box2Text" name="box2Text" runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Box 3 Text
                <input type="text" id="Box3Text" name="box3Text" runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Box 4 Text
                <input type="text" id="Box4Text" name="box4Text" runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Button 1 Text
                <input type="text" id="Box1Button" name="box1Button" runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Button 2 Text
                <input type="text" id="Box2Button" name="box2Button" runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Button 3 Text
                <input type="text" id="Box3Button" name="box3Button" runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Button 4 Text
                <input type="text" id="Box4Button" name="box4Button" runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Offer 1 Title
                <input type="text" id="Offer1Title" name="offer1Title"  runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Offer 2 Title
                <input type="text" id="Offer2Title" name="offer2Title" runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Offer 3 Title
                <input type="text" id="Offer3Title" name="offer3Title" runat="server" placeholder=""/>
                </label>
            </div>
            <div class="cell small-12">
                <label>Offer Button Text
                <input type="text" id="OfferButton" name="offer4Title" runat="server" placeholder=""/>
                </label>
            </div>
          </div>
    
          <div class="grid-x grid-margin-x">
            <fieldset class="cell medium-6">
              <asp:Button Text="Submit" runat="server" OnClick="Submit" CssClass="button" />
            </fieldset>
          </div>
        </form>
    </div>

            <footer class="container">
                    <div class="footercontent content-width">
                        <div class="footersection1">
                            <p><strong> Optricon </strong> Unit 21, Titan Court, Laporte Way, Bedfordshire, LU4 8EF, UK </p>
                            <br>
                            <p>Site map / Terms / Privacy Policy / Site By Verto</p>
                        </div>
        
                        <div class="footersection2">
                            <div class="emailcontainer">
                                <p class="large-font phonesection">call <strong> 01582 726522</strong></p>
                                <p class="emailsection"> email us sales@opticron.co.uk </p>
                            </div>
                            <ul class="dropdown menu">
                                <li class="fi-social-facebook"></li>
                                <li class="color-black"> | </li>
                                <li class="fi-social-twitter"></li>
                                <li class="color-black"> | </li>
                                <li class="fi-social-linkedin"></li>
                                <li class="color-black"> | </li>
                                <li class="fi-social-youtube"></li>
                                <li class="color-black"> | </li>
                                <li class="fi-social-google-plus"></li>
                            </ul>

                        </div>
                    </div>
            </footer>
        </div>

</body>
</html>


