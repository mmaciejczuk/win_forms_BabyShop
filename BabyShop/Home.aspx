<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BabyShop.Home1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

    <script src="http://code.jquery.com/jquery-1.8.2.js" type="text/javascript"></script>
    <script src="../../../Scripts/jquery_source.js" type="text/javascript"></script>
    <script src="../../../Scripts/jquery_source2.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://dev.css-zibaldone.com/js/jquery/plugins/jquery.easing.js"></script>
    <script type="text/javascript" src="../../../Scripts/HomeJS.js"></script>

    <link rel="stylesheet" type="text/css" href="Style/home.css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%-- <img src="images/photo.jpg" alt="" width="682" height="334" border="0" usemap="#Map" />--%>

    <div id="main">
        <div id="slideshow">
            <div id="slideshowWindow">
                <div class="slide">
                <img src="images/slides/car.jpg" alt="img"  />
                    <div class="slideText">
                        <h2 class="slideTitle">Koparka budowlana</h2>
                        <p class="slideDes">Aspdotnet-Suresh.com will offer best articles on Asp.net, c#, SQL Server, jQuery and many more technologies.</p>
                        <p class="slideLink"><a href="#">click here</a></p>
                    </div>
                </div>
                <div class="slide">
                <img src="images/slides/truck.jpg" alt="img"  />
                    <div class="slideText">
                        <h2 class="slideTitle">Wywrotka</h2>
                        <p class="slideDes">Aspdotnet-Suresh.com will offer best articles on Asp.net, c#, SQL Server, jQuery and many more technologies.</p>
                        <p class="slideLink"><a href="#">click here</a></p>
                    </div>
                </div>
                <div class="slide">
                <img src="images/slides/zestaw_multi.jpg" alt="img" />
                    <div class="slideText">
                        <h2 class="slideTitle">Park wodny</h2>
                        <p class="slideDes">Aspdotnet-Suresh.com will offer best articles on Asp.net, c#, SQL Server, jQuery and many more technologies.</p>
                        <p class="slideLink"><a href="#">click here</a></p>
                    </div>
                </div>
                <div class="slide">
                <img src="images/slides/toys.jpg" alt="img"  />
                    <div class="slideText">
                        <h2 class="slideTitle">Zabawki</h2>
                        <p class="slideDes">Aspdotnet-Suresh.com will offer best articles on Asp.net, c#, SQL Server, jQuery and many more technologies.</p>
                        <p class="slideLink"><a href="#">click here</a></p>
                    </div>
                </div>
            </div>
        </div>

                <br />
			    <div id="inside">
				    <img src="images/title3.gif" alt="" width="159" height="15" /><br />
				    <div class="info">
					    <img src="images/pic2.png" alt="" width="159" height="132" />
					    <p>Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. 
                            Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. 
                            Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. 
                            Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. 
                            Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. 
                            Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. Sklep z zabawkami. 
					    </p>
					    <a href="#" class="more"><img src="images/more.gif" alt="" width="106" height="28" /></a>					
				    </div>

				    <img src="images/title4.gif" alt="" width="159" height="17" /><br />
                    <br />
				    <div id="items">
    <%--					<div class="item">
						    <a href="#"><img src="images/item1.jpg" width="213" height="192" /></a><br />
						    <p><a href="#">Product 01</a></p><span class="price">125 z&#322;</span><br />
					    </div>
					    <div class="item center">
						    <a href="#"><img src="images/item2.jpg" width="213" height="192" /></a><br />
						    <p><a href="#">Product 02</a></p><span class="price">215 z&#322;</span><br />
					    </div>
					    <div class="item">
						    <a href="#"><img src="images/item3.jpg" width="213" height="192" /></a><br />
						    <p><a href="#">Product 03</a></p><span class="price">85 z&#322;</span><br />
					    </div>
					    <div class="item">
						    <a href="#"><img src="images/item4.jpg" width="213" height="192" /></a><br />
						    <p><a href="#">Product 04</a></p><span class="price">35 z&#322;</span><br />
					    </div>
					    <div class="item center">
						    <a href="#"><img src="images/item5.jpg" width="213" height="192" /></a><br />
						    <p><a href="#">Product 05</a></p><span class="price">27 z&#322;</span><br />
					    </div>
					    <div class="item">
						    <a href="#"><img src="images/item6.jpg" width="213" height="192" /></a><br />
						    <p><a href="#">Product 06</a></p><span class="price">40 z&#322;</span><br />
					    </div>--%>
                        <asp:ListView ID="ListViewProduktyPromowane" runat="server" DataKeyNames="Id" DataSourceID="ADSProdukty"
                            GroupItemCount="3" OnItemDataBound="ListViewProduktyPromowane_ItemDataBound" >
                          <LayoutTemplate>
                            <table cellpadding="2" runat="server" class="produktyClass"
                                   id="tblProducts" style="height:320px">
                              <tr runat="server" id="groupPlaceholder">
                              </tr>
                            </table>
                            <asp:DataPager runat="server" ID="DataPager"
                                           PageSize="9">
                               <Fields>
                                 <asp:NumericPagerField ButtonCount="3"
                                      PreviousPageText="<--"
                                      NextPageText="-->" />
                               </Fields>
                            </asp:DataPager>
                          </LayoutTemplate>
                          <GroupTemplate>
                            <tr runat="server" id="productRow"
                                style="height:80px">
                              <td runat="server" id="itemPlaceholder">
                              </td>
                            </tr>
                          </GroupTemplate>
                          <ItemTemplate>
                                    <td id="Td1" valign="top" align="center" style="width:100;" runat="server"  colspan="2">
                                   <div id="NazwaLabelDiv">
                                    <asp:Label ID="NazwaLabel" CssClass="LabeNazwaProduktu" runat="server" Text='<%# Eval("Nazwa") %>'/>
                                    <asp:HiddenField ID="HFId" runat="server" Value='<%# Eval("Id") %>'/>
                                    </div>
                                        <asp:RoundedCornersExtender ID="rce" runat="server"
                                            TargetControlID="IBZdjecie_duze"
                                            Radius="10"
                                            Corners="All" 
                                            BorderColor="#f0f291"/>
                                        <asp:ImageButton ID="IBZdjecie_duze" CssClass="obrazekCSS" runat="server" ImageUrl='<%# Eval("Zdjecie_duze") %>' />
                                        <div id="opisTowaru">
                                            Kategoria:
                                                <asp:Label ID="KategoriaLabel" CssClass="LabelOpisProduktu" runat="server" Text='<%# Eval("Kategoria") %>' />
                                            <br />                           
    <!--                                        Ilo&#347;&#263; w magazynie:
                                                <asp:Label ID="Ilosc_magazynowaLabel" CssClass="LabelOpisProduktu" runat="server" Text='<%# Eval("Ilosc_magazynowa") %>' />
                                            <br />  -->
                                            <div id="ocenaKlientow1">
                                                Ocena klientów:
    <!--                                            <asp:Label ID="Ocena_klentowLabel" runat="server" Text='<%# Eval("Ocena_klentow") %>' /> -->
                                            </div>    
                                                <div id="sectionRating2">
                                                    <asp:Rating ID="Rating1" runat="server" ReadOnly="true"
                                                                MaxRating="5"
                                                                CurrentRating= '<%# Convert.ToInt32(Eval("Ocena_klentow")) %>'
                                                                CssClass="ratingStar2"
                                                                StarCssClass="ratingItem2"
                                                                WaitingStarCssClass="Saved"
                                                                FilledStarCssClass="Filled"
                                                                EmptyStarCssClass="Empty" Height="12px" Width="60px" />
                                                </div>
                                            <br />
                                            Cena:
                                                <asp:Label ID="Cena_detLabel" runat="server" Text='<%# Eval("Cena_det") %>' 
                                                    ForeColor="#FF3300" Font-Size="13px" Font-Bold="True" />
                                            <br />
                                                <asp:LinkButton ID="LBSzczegoly" CssClass="LabelOpisProduktu" 
                                                    runat="server" Text="Wi&#281;cej >>" Font-Size="12px"></asp:LinkButton>
                                            <br />
                                        </div>
                                        <div id="buttonTowaru">
                                            <asp:Image runat="server" ID="btnCart" style="cursor:pointer;" title="Dodaj do koszyka"
                                                ImageUrl="~/images/add_to_shopping_cart.png"/>
<%--                                            <asp:Panel runat="server" ID="pnlFoo">
                                                <input type = "button"
                                                    onclick = 'alert(<%# Container.FindControl("pnlFoo").ClientID %>);'
                                                    value   = "click to get id for <%# Container.DataItemIndex %>" />
                                            </asp:Panel>--%>
                                        </div>
                                    </td>
                          </ItemTemplate>
                        </asp:ListView>
				    </div>
			    </div>
		    </div>

    <asp:AccessDataSource ID="ADSProdukty" runat="server" DataFile="~/App_Data/Shop.mdb" 
        DeleteCommand="DELETE FROM [Produkty] WHERE [Id] = ?" 
        InsertCommand="INSERT INTO [Produkty] ([Id], [Nazwa], [Opis], [Kategoria], [Zdjecie_male], [Zdjecie_duze], 
        [Ilosc_magazynowa], [Ocena_klentow], [Cena_det]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT [Id], [Nazwa], [Opis], [Kategoria], [Zdjecie_male], [Zdjecie_duze], 
        [Ilosc_magazynowa], [Ocena_klentow], [Cena_det] FROM [Produkty]" 
        UpdateCommand="UPDATE [Produkty] SET [Nazwa] = ?, [Opis] = ?, [Kategoria] = ?, [Zdjecie_male] = ?, 
        [Zdjecie_duze] = ?, [Ilosc_magazynowa] = ?, [Ocena_klentow] = ?, [Cena_det] = ? WHERE [Id] = ?">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Nazwa" Type="String" />
            <asp:Parameter Name="Opis" Type="String" />
            <asp:Parameter Name="Kategoria" Type="Int32" />
            <asp:Parameter Name="Zdjecie_male" Type="String" />
            <asp:Parameter Name="Zdjecie_duze" Type="String" />
            <asp:Parameter Name="Ilosc_magazynowa" Type="Int32" />
            <asp:Parameter Name="Ocena_klentow" Type="String" />
            <asp:Parameter Name="Cena_det" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nazwa" Type="String" />
            <asp:Parameter Name="Opis" Type="String" />
            <asp:Parameter Name="Kategoria" Type="Int32" />
            <asp:Parameter Name="Zdjecie_male" Type="String" />
            <asp:Parameter Name="Zdjecie_duze" Type="String" />
            <asp:Parameter Name="Ilosc_magazynowa" Type="Int32" />
            <asp:Parameter Name="Ocena_klentow" Type="String" />
            <asp:Parameter Name="Cena_det" Type="Double" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
</asp:Content>


