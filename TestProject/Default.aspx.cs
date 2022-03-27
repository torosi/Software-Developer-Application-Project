using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestProject.Models;

namespace TestProject
{
    public partial class _Default : Page
    {
        private HomeDbContext _homeDbContext = new HomeDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            Box1Title.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box1Title).Content;
            Box2Title.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box2Title).Content;
            Box3Title.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box3Title).Content;
            Box4Title.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box4Title).Content;

            Box1Text.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box1Text).Content;
            Box2Text.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box2Text).Content;
            Box3Text.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box3Text).Content;
            Box4Text.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box4Text).Content;

            Box1Button.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box1Button).Content;
            Box2Button.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box2Button).Content;
            Box3Button.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box3Button).Content;
            Box4Button.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box4Button).Content;

            Offer1Title.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.offer1Title).Content;
            Offer2Title.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.offer2Title).Content;
            Offer3Title.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.offer3Title).Content;

            OfferButton.InnerHtml = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.offerButton).Content;

        }


    }
}