using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BabyShop
{
    public partial class Home1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListViewProduktyPromowane_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            Image buttonCart = e.Item.FindControl("btnCart") as Image;
            HiddenField produktId = e.Item.FindControl("HFId") as HiddenField;
            Label produktNazwa = e.Item.FindControl("NazwaLabel") as Label;
            Label produktCena = e.Item.FindControl("Cena_detLabel") as Label;

            buttonCart.Attributes["onclick"] = "javascript:dodajDoKoszyka('"
            + produktId.ClientID + "','"
            + produktNazwa.ClientID + "','"
            + produktCena.ClientID + "');";
            }
    }
}