<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="uyeol.aspx.cs" Inherits="uyeol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        clear: both;
        position: relative;
        left: 0px;
        top: 0px;
        height: 646px;
        padding: 2em 0;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1" style="margin-left:450px;">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-6 animate-box">
					<h3>Üye Ol</h3>
				<div class="row form-group">
							<div class="col-md-12">
								<asp:TextBox ID="TextBox4" CssClass="form-control" placeholder="Ad" runat="server"></asp:TextBox>
							</div>
							
						</div><div class="row form-group">
							<div class="col-md-12">
								<asp:TextBox ID="TextBox5" CssClass="form-control" placeholder="Soyad" runat="server"></asp:TextBox>
							</div>
							
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								<asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="E-mail" runat="server"></asp:TextBox>
							</div>
							
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Şifre" runat="server" TextMode="Password"></asp:TextBox>
							</div>
                            <div class="col-md-12">
								<asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Şifre Tekarar" runat="server" TextMode="Password"></asp:TextBox>
                              <asp:CompareValidator runat="server"
            ControlToValidate="TextBox2"
            ControlToCompare="TextBox3"
            ErrorMessage="Şifreler Aynı Değil" Font-Bold="True" ForeColor="Red" />
							</div>
						</div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
						<div class="form-group">
						<asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Üye Ol" OnClick="Button1_Click" />
						</div>

					
				</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

