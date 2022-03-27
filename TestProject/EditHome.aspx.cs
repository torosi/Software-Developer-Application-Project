using System;
using System.Linq;
using TestProject.Models;

namespace TestProject
{
    public partial class EditHome : System.Web.UI.Page
    {
        private HomeDbContext _homeDbContext = new HomeDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            SetFormInputs();
        }

        protected void Submit(object sender, EventArgs e)
        {
            // Titles
            var box1Title = Request.Form["Box1Title"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box1Title).Content = box1Title;

            var box2Title = Request.Form["Box2Title"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box2Title).Content = box2Title;

            var box3Title = Request.Form["Box3Title"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box3Title).Content = box3Title;

            var box4Title = Request.Form["Box4Title"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box4Title).Content = box4Title;

            // Text
            var box1Text = Request.Form["box1Text"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box1Text).Content = box1Text;

            var box2Text = Request.Form["box2Text"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box2Title).Content = box2Text;

            var box3Text = Request.Form["box3Text"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box3Title).Content = box3Text;

            var box4Text = Request.Form["box4Text"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box4Title).Content = box4Text;

            // Buttons
            var box1Button = Request.Form["box1Button"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box1Button).Content = box1Button;

            var box2Button = Request.Form["box2Button"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box2Button).Content = box2Button;

            var box3Button = Request.Form["box3Button"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box3Button).Content = box3Button;

            var box4Button = Request.Form["box4Button"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box4Button).Content = box4Button;

            // Offer section
            var offer1Title = Request.Form["offer1Title"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.offer1Title).Content = offer1Title;

            var offer2Title = Request.Form["offer2Title"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.offer2Title).Content = offer2Title;

            var offer3Title = Request.Form["offer3Title"];
            _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.offer3Title).Content = offer3Title;

            _homeDbContext.SaveChanges();

            SetFormInputs();
        }

        private void SetFormInputs()
        {
            Box1Title.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box1Title).Content;
            Box2Title.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box2Title).Content;
            Box3Title.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box3Title).Content;
            Box4Title.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box4Title).Content;

            Box1Text.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box1Text).Content;
            Box2Text.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box2Text).Content;
            Box3Text.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box3Text).Content;
            Box4Text.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box4Text).Content;

            Box1Button.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box1Button).Content;
            Box2Button.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box2Button).Content;
            Box3Button.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box3Button).Content;
            Box4Button.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.box4Button).Content;

            Offer1Title.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.offer1Title).Content;
            Offer2Title.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.offer2Title).Content;
            Offer3Title.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.offer3Title).Content;

            OfferButton.Value = _homeDbContext.Homes.FirstOrDefault(x => x.Key == Constants.offerButton).Content;
        }


    }
}