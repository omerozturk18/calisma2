<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="panel.aspx.cs" Inherits="panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
        .auto-style2 {
            height: 39px;
        }
        .auto-style3 {
            height: 53px;
        }
        .auto-style4 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 1086px;
            top: 0px;
            left: 0px;
            height: 327px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="gtco-section" style="margin-left:150px; top: 0px; left: 0px; height: 817px;">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12"  style="float:left; width:100%; height:669px; top: 0px; left: 0px;">
					<div class="col-md-6 animate-box"  style="float:left; width:100%; top: 0px; left: 0px; height: 37px;">
					<h3 style="color:darkcyan;""></h3>
				
                        <div class="row form-group"  style="float:left; width:100%; height:344px;">
							
							<div class="auto-style4">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                                    <Columns>
                                        <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" InsertVisible="False" ReadOnly="True" SortExpression="Kimlik" />
                                        <asp:BoundField DataField="k_ad" HeaderText="k_ad" SortExpression="k_ad" />
                                        <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
                                        <asp:BoundField DataField="soyad" HeaderText="soyad" SortExpression="soyad" />
                                        <asp:BoundField DataField="m_mantar" HeaderText="m_mantar" SortExpression="m_mantar" />
                                        <asp:BoundField DataField="m_zeytin" HeaderText="m_zeytin" SortExpression="m_zeytin" />
                                        <asp:BoundField DataField="e_kasar" HeaderText="e_kasar" SortExpression="e_kasar" />
                                        <asp:BoundField DataField="e_sucuk" HeaderText="e_sucuk" SortExpression="e_sucuk" />
                                        <asp:BoundField DataField="e_aci" HeaderText="e_aci" SortExpression="e_aci" />
                                        <asp:BoundField DataField="aciklama" HeaderText="aciklama" SortExpression="aciklama" />
                                        <asp:BoundField DataField="adres" HeaderText="adres" SortExpression="adres" />
                                        <asp:BoundField DataField="durum" HeaderText="durum" SortExpression="durum" />
                                        <asp:BoundField DataField="fiyat" HeaderText="fiyat" SortExpression="fiyat" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:vtConnectionString %>" SelectCommand="SELECT * FROM [pizza]"></asp:SqlDataSource>
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style3">Siparişi Onaylamak İçin Kimlik No Girin</td>
                                        <td class="auto-style3">
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Onayla" Width="79px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">Siparişi Teslimi Edildi İse Kimlik No Girin</td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                            <asp:Button ID="Button2" runat="server" Text="Onayla" Width="79px" OnClick="Button2_Click" />
                                        </td>
                                    </tr>
                                </table>
							</div>

						</div>
					      
				</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

