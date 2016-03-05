<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KategoriKamera.aspx.cs" Inherits="E_Ticaret.KategoriKamera" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Kayınço Ticaret</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link href="Content/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Cabin+Condensed' rel='stylesheet' type='text/css' />
    <style type="text/css">
    .divürün{

            border:1px solid rgb(228, 228, 228);
            border-radius: 0.6em;
            text-align:center;
            padding:5px;
            margin:5px;
            color:black;
            background: #F8F8F8;
            -webkit-border-radius: 0.6em;	
	        -moz-border-radius: 0.6em;
	        -o-border-radius: 0.6em;
          
        }

        .divürün:hover
        {
            background-color:white;
        }

        .img{
            width:200px;
            height:200px;
        }
</style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="wrap">
<div class="header">
	<div class="logo">
		<a href="index.html"><img src="Content/web/images/logo.png" alt=""/> </a>
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
		<input type="text" value="keyword here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'keyword here';}"/>
		<input type="submit" value="Search"/>
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
<div class="sidebar">
<div class="s-main">
	<div class="s_hdr">
		<h2>Kategoriler</h2>
	</div>
	<div class="text1-nav">
		<ul>
			<li><a href="KategoriLaptop.aspx">Laptop</a></li>
			<li><a href="KategoriTelefon.aspx">Telefon</a></li>
			<li><a href="KategoriKamera.aspx">Kamera</a></li>
			<li><a href="KategoriPlazma.aspx">Plazma</a></li>
			<li><a href="KategoriTablet.aspx">Tablet</a></li>

	    </ul>
	</div>
</div>
<div class="s-main">
	<div class="s_hdr1">
		<h2>Arama Kategorileri</h2>
	</div>
	<div class="text1-nav">
		<ul>
			
            
			<h2>Markaya Göre Arama</h2>
            </br>
			<li><a href="MarkaAsus.aspx">ASUS</a></li>
			<li><a href="MarkaLenovo.aspx">LENOVO</a></li>
			<li><a href="MarkaCasper.aspx">CASPER</a></li>
			<li><a href="MarkaCanon.aspx">CANON</a></li>
			<li><a href="MarkaSony.aspx">SONY</a></li>
			<li><a href="MarkaApple.aspx">APPLE</a></li>
			<li><a href="MarkaSamsung.aspx">SAMSUNG</a></li>
			<li><a href="MarkaPhilips.aspx">PHILIPS</a></li>
	    </ul>
	</div>
</div>
</div>
    
    <div class="content">
	
	<div class="clear"></div>
	<div class="cnt-main">
		
		
	<div class="grid">
	<div class="grid-img">
		<img src="Content/web/images/tablet1.jpg" alt=""/>
	</div>
	<div class="grid-para">
		<h2>Fırsat Günleri</h2>
		<h3>Acil Tablete İhtiyacım Var.</h3>
		<p>Tablete ihtiyacım var fakat param yok diyenler sakın üzülmeyin.Alın size fırsat eskiyi getir yeniyi götür kampanyası sizleri bekliyor. </p>
		<div class="btn top">
		<a href="UrunDetay.aspx?uid=13">İncele&nbsp;<img src="Content/web/images/marker2.png"/></a>
		</div>
	</div>
	<div class="clear"></div>
	</div>
</div>
<div class="cnt-main btm">
	<div class="section group">
				
					 <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" BackColor="White" BorderColor="#ffffff" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" GridLines="Horizontal" Height="221px" Width="707px" >
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="White" ForeColor="#333333" />
                <ItemTemplate>
                 <div class="divürün">
                    <h3 style="color:gray;font-family:'Times New Roman', Times, serif"><asp:Label ID="AdLabel" runat="server" Text='<%# Eval("Ad") %>' /></h3>
                    <br />
                 
                    <asp:Image ID="Image1" Class="img" ImageUrl='<%# Eval("Resim") %>' runat="server" />
                    <br />
                 <br />
                    <span class="price left"><sup><asp:Label ID="FiyatLabel" runat="server" Text='<%# Eval("Fiyat") %>' /></sup><sub></sub></span><br />
                    <br />
                   
                     <div class="btn top-right right"><a href="UrunDetay.aspx?uid=<%#Eval("ürünID") %>">Hemen Al!</a></div>
                     </div>
                   
                </ItemTemplate>
                <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            </asp:DataList>

				
				
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ETticaretConnectionString %>" SelectCommand="SELECT [Ad], [Fiyat], [Resim] FROM [ürün] WHERE ([KategoriID] = @KategoriID)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="" Name="KategoriID" QueryStringField="1" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
				    <div class="clear"></div>
				 </div>
		
				
</div>
</div>
<div class="clear"></div>
</div>
</div>
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

