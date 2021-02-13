<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kucuk.aspx.cs" Inherits="kucuk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="gtco-section" style="margin-left:150px; top: 0px; left: 0px; height: 817px;">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12"  style="float:left; width:100%; height:669px; top: 0px; left: 0px;">
					<div class="col-md-6 animate-box"  style="float:left; width:100%; top: 0px; left: 0px; height: 37px;">
					<h3 style="color:darkcyan;"">Tek Küçük Boy Pizza</h3>
				
                        <div class="row form-group"  style="float:left; width:100%; height:594px;">
							<div class="col-md-12" style="float:left; width:400px; height:400px;">
							<img src="images/5.png" width="350px" height="350px" /><br />
                                 <asp:Label ID="Label3" ForeColor="Red" runat="server"></asp:Label>
							</div>
							<div class="col-md-12" style="float:left; width:400px;">
                              <h5 style="color:dimgrey;"> Tek Küçük Boy Pizza</h5> 
							<asp:DropDownList ID="DropDownList1" CssClass="form-control"  runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem Value="17.90 TL">1 Adet</asp:ListItem>
                                <asp:ListItem Value="35.80 TL">2 Adet</asp:ListItem>
                                <asp:ListItem Value="53.70 TL">3 Adet</asp:ListItem>
                                </asp:DropDownList>
                           <h4 style="color:darkgoldenrod">İstemedikleriniz</h4>
                              <asp:CheckBox ID="CheckBox4"  Text="Mantar" runat="server" />
                                <asp:CheckBox ID="CheckBox5"  Text="Zeytin" runat="server" />
                            <h4 style="color:darkgoldenrod">Extra İstekleriniz (Extra Her Bir Ürün +2 TL)</h4>
                                 <asp:CheckBox ID="CheckBox1"   Text="Extra Kaşar" runat="server" />
                                <asp:CheckBox ID="CheckBox2" Text="Extra Sucuk" runat="server"  />
                                <asp:CheckBox ID="CheckBox3"  Text="Extra Acı" runat="server"  />
                                <p><span class="price cursive-font"  style="color:orange; padding-left:100px; font-size:25px;">
                                      <asp:Label ID="Label1" runat="server" Text="17,90"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text=" TL"></asp:Label>
                                   </span></p>
                                 <h4 style="color:darkgoldenrod">Adres</h4>
                                <asp:TextBox ID="adres" CssClass="form-control" runat="server"></asp:TextBox>
                                <h4 style="color:darkgoldenrod">Açıklama</h4>
                              
                                <asp:TextBox id="TextArea1" placeHolder="Eğer post ile ödeme ile yapacaksanız açıklama kısmında belirtiniz" CssClass="form-control"  TextMode="MultiLine" Columns="50" Rows="5" runat="server" />
							</div>

						</div>
					      
				</div>
				</div><br /><br /> <div class="form-group" style="margin-left:500px;">
                   
						<asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Satın Al" OnClick="Button1_Click" />
						</div>
			</div>
		</div>
	</div>
</asp:Content>

