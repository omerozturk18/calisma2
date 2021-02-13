<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="w3-container">
<div class="w3-content w3-display-container" style="max-width:1100px; max-height:500px">
  <a href="kankamenu.aspx"><img class="mySlides" src="images/1.png" style="width:100%; height:500px;"/></a>
  <a href="kampusmenu.aspx"><img class="mySlides" src="images/2.png" style="width:100%; height:500px;"/></a>
  <a href="ailemenu.aspx"><img class="mySlides" src="images/3.png" style="width:100%;height:500px;"/></a>
  <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
    <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
    <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
  </div>
</div>




<div class="row">

				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="images/img_1.jpg" class="fh5co-card-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="images/mushroom.jpg" alt="Image" class="img-responsive"/>
						</figure>
						<div class="fh5co-text">
							<h2>Taze Mantarlar</h2>
							<p>Uzakta, kelime dağlarının arkasında, Vokalia'dan çok uzak ülkeler ..</p>
							<p><span class="price cursive-font"></span></p>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="images/img_2.jpg" class="fh5co-card-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="images/salad.jpg" alt="Image" class="img-responsive"/>
						</figure>
						<div class="fh5co-text">
							<h2>Izgara Tavuk Salata</h2>
							<p>Uzakta, kelime dağlarının arkasında, Vokalia'dan çok uzak ülkeler ...</p>
							<p><span class="price cursive-font"></span></p>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="images/img_3.jpg" class="fh5co-card-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="images/cheese.jpg" alt="Image" class="img-responsive"/>
						</figure>
						<div class="fh5co-text">
							<h2>Peynir ve Sarımsaklı Tost</h2>
							<p>Uzakta, kelime dağlarının arkasında, Vokalia'dan çok uzak ülkeler ..</p>
							<p><span class="price cursive-font"></span></p>

						</div>
					</a>
				</div>


			</div>
		</div>









    <script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}
</script>

</asp:Content>

