<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs"  Inherits="TestProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="top-banner">
    <img src="Content/Images/banner.png" alt="banner image" />
</div>

<div class="container content-width home-main even-space">
    <div class="grid-x even-space">

      <div class="medium-6 large-3 cell box-section">
        <h3 id="Box1Title" runat="server"></h3>
        <img class="img-box-size" src="Content/Images/box1.png" alt="new products image" />
        <p id="Box1Text" runat="server"></p>
        <button id="Box1Button" class="submit success button" runat="server"></button>
      </div>
        
      <div class="medium-6 large-3 cell box-section">
        <h3 id="Box2Title" runat="server"></h3>
        <img src="Content/Images/box2.png" alt="new products image" />
        <p id="Box2Text" runat="server"></p>
        <button id="Box2Button" class="submit success button" runat="server"></button>
      </div>

      <div class="medium-6 large-3 cell box-section">
        <h3 id="Box3Title" runat="server"></h3>
        <img src="Content/Images/box3.png" alt="new products image" />
        <p id="Box3Text" runat="server"></p>
        <button id="Box3Button" class="submit success button" runat="server"></button>
      </div>

      <div class="medium-6 large-3 cell box-section">
        <h3 id="Box4Title" runat="server"></h3>
        <img src="Content/Images/box4.png" alt="new products image" />
        <p id="Box4Text" runat="server"></p>
        <button id="Box4Button" class="submit success button" runat="server"></button>
      </div>

    </div>



    <div class="special-offers-section">
        <h3>Special Offers</h3>
        <div class="grid-x even-space">
            <div class="medium-12 large-4 cell">
                <div class="offer-section">
                    <img class="img-box-size" src="Content/Images/Offer1.png" alt="new products image" />
                    <p id="Offer1Title" runat="server" class="offer-text"></p>
                </div>
            </div>
        
            <div class="medium-12 large-4 cell">
                <div class="offer-section">
                     <img src="Content/Images/Offer2.png" alt="new products image" />
                     <p id="Offer2Title" runat="server" class="offer-text"></p>
                </div>
            </div>

            <div class="medium-12 large-4 cell">
                <div class="offer-section">
                    <img src="Content/Images/Offer3.png" alt="new products image" />
                    <p id="Offer3Title" runat="server" class="offer-text"></p>
                </div>
            </div>
          
        </div>
        <button id="OfferButton" class="submit success button offer-button" runat="server"></button>
    </div>

    <div class="product-category-section">
        <h3>Product Categories</h3>
        <div class="grid-x">
          <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="cell medium-6 large-3 small-6 item">
                    <img src="Content/Images/<%# Eval("ImgPath") %>" alt="products image" />
                    <asp:Label runat="server" ID="Label1" Text='<%# Eval("Product_Category") %>' />
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestProjectDBConnectionString %>" SelectCommand="SELECT [Product_Category], [ImgPath] FROM [Product_Categories]"></asp:SqlDataSource>
        </div>
    </div>

</div>
</asp:Content>
