<%@ Page Language="C#"  EnableEventValidation="false" AutoEventWireup="true" CodeBehind="ÖdemeBilgi.aspx.cs" Inherits="E_Ticaret.ÖdemeBilgi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Kayınço Ticaret</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link href="Content/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Cabin+Condensed' rel='stylesheet' type='text/css' />
    <style type="text/css">
        .txt{
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
        .txt:focus{
             background: #f5fcfe;
                text-indent: 0;
                z-index: 1;
                color: #373737;
                -webkit-transition-duration: 400ms;
                -webkit-transition-property: width, background;
                -webkit-transition-timing-function: ease;
                -moz-transition-duration: 400ms;
                -moz-transition-property: width, background;
                -moz-transition-timing-function: ease;
                -o-transition-duration: 400ms;
                -o-transition-property: width, background;
                -o-transition-timing-function: ease;
                width: 190px;
                border-color: #ccc;
                box-shadow: 0 0 5px rgba(4, 129, 177, 0.5);
                opacity: 0.6;
        }
        .td{
         
            text-align:center;
            padding:5px;
            margin:5px;
            color: black;        
            -webkit-border-radius: 0.6em;	
	        -moz-border-radius: 0.6em;
	        -o-border-radius: 0.6em;
        }
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
    <table>
    <tr>
        <td class="td">İsminiz             :</td>
        <td>           
            <asp:TextBox ID="txtCardName" runat="server" class="txt" autocomplete="off" required></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="td">Kart Numarası       :</td>
        <td>            
            <asp:TextBox ID="txtCardNumber" class="txt" runat="server" autocomplete="off" required></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="td">Son Kullanım Tarihi :</td>
        <td>
            <asp:DropDownList ID="ddlMonth" runat="server" class="txt" Style="min-width: 65px; width: 45px;" required></asp:DropDownList>
            
            /
<asp:DropDownList ID="ddlYear" runat="server" class="txt" Style="min-width: 85px; width: 65px;" required></asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="td">Güvenlik Kodu       :</td>
        <td >        
            <asp:TextBox ID="txtCCV" runat="server"   class="txt" autocomplete="off" required></asp:TextBox>
        </td>
    </tr>
         <tr>
        <td class="td">Telefon             :</td>
        <td>          
            <asp:TextBox ID="telefon" runat="server" class="txt" autocomplete="off" required></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td class="td">Çekilecek Tutar     :</td>
        <td>           
            <asp:TextBox ID="tutar" runat="server" class="txt" autocomplete="off" required ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
</table>
    <br />

<asp:Button ID="btnCheckout" Class="btn" runat="server" Text="Onayla" OnClick="btnCheckout_Click"  />
       <br />
   
          <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <br />
          <hr />
          <br />
          <hr />
          </div>


    </form>

</body>
</html>
