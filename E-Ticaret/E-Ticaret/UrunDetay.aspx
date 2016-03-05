<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="E_Ticaret.UrunDetay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kayınço Ticaret</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link href="Content/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Cabin+Condensed' rel='stylesheet' type='text/css' />
    <style type="text/css">
         .btn{
             background: #222;
            border: none;
            text-shadow: 0 -1px 0 rgba(0,0,0,0.3);
            text-transform: uppercase;
            color: #eee;
            cursor: pointer;
            font-size: 15px;
            margin: 5px ;
            padding: 5px 22px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            -webkit-border-radius: 4px;
            -webkit-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
            -moz-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
            box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrap">
            <div class="header">
                <div class="logo">
                    <a href="index.html"><img src="Content/web/images/logo.png" alt="" /> </a>
                </div>
                <div class="header-right">
                    <div class="contact-info">
                        <ul>
                            <li>Yardım Hattı</li>
                            <li>05532877701</li>
                        </ul>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="hdr-btm">
                <div class="hdr-btm-bg"></div>
                <div class="hdr-btm-left">
                    <div class="search">
                        <form>
                            <input type="text" value="keyword here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'keyword here';}" />
                            <input type="submit" value="Search" />
                        </form>
                    </div>
                    <div class="drp-dwn">
                        <select class="custom-select" id="select-1">
                            <option selected="selected">Catogories</option>
			<option><a href="KategoriLaptop.aspx">Laptop</a></option>
			<option><a href="KategoriTelefon.aspx">Telefon</a></option>
			<option><a href="KategoriKamera.aspx">Kamera</a></option>
			<option><a href="KategoriPlazma.aspx">Plazma</a></option>
			<option><a href="KategoriTablet.aspx">Tablet</a></option>
                        </select>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="main">
                <div class="details">
                    <div class="product-details">
                        <div class="images_3_of_2">
                            <div id="container">
                                <div id="products_example">
                                    <div id="products">
                                        <div class="slides_container">
                                            <asp:Image ID="Image1" runat="server" />
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="desc span_3_of_2">
                            <h2><asp:Label ID="LabelAd"  runat="server" Text="Label"></asp:Label></h2>
                            <div class="price">
                           <p>Stok: <asp:Label ID="LabelStok" runat="server" Text="Label"></asp:Label></p>
                            </div>
                            <div class="price">
                                <p>Fiyat: <asp:Label ID="LabelFiyat" runat="server" Text="Label"></asp:Label></p>
                             
                            </div>
                            <div class="available">
                                <p>Available Options :</p>
                                <ul>
                                    <li>
                                        Color:
                                        <select>
                                            <option>Silver</option>
                                            <option>Black</option>
                                            <option>Dark Black</option>
                                            <option>Red</option>
                                        </select>
                                    </li>
                                    <li>
                                        Size:<select>
                                            <option>Large</option>
                                            <option>Medium</option>
                                            <option>small</option>
                                            <option>Large</option>
                                            <option>small</option>
                                        </select>
                                    </li>
                                   
                                </ul>
                            </div>
                            <div class="share-desc">
                                <div class="share">
                                    <p>Share Product :</p>
                                    <ul>
                                        <li><a href="https://www.facebook.com/"><img src="Content/web/images/fb.png" alt=""/></a></li>
                                        <li><a href="https://twitter.com/?lang=tr"><img src="Content/web/images/twiter.png" alt=""/></a></li>
                                        <li><a href="https://www.rss.com/"><img src="Content/web/images/rss.png" alt=""/></a></li>
                                    </ul>
                                </div>
                               
                                             
                                <div class="button"><span><asp:Button ID="btnCheckout" Class="btn" runat="server" Text="Hemen Al!"  OnClick="btnCheckout_Click" /></span></div>
                                <div class="clear"></div>
                               
                            </div>
                            
                        </div>
                    </div>
                        <div class="clear"></div>
                    </div>
                                       
                    
                </div>
               
                <div class="clear"></div>
            </div>
        </div>
        <br />
        <br />
        <div class="footer-bg">
<div class="wrap">


	<div class="footer1">
		<p>All Rights Reserved | Design by&nbsp; <a href="http://w3layouts.com/">BAD BOYS</a></p><br />
	</div>

</div>
</div>
    </form>
</body>
</html>
