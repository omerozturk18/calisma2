<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sepet.aspx.cs" Inherits="sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left:200px; margin-bottom:500px; margin-top:200px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:vtConnectionString %>" SelectCommand="SELECT [ad], [soyad], [m_mantar], [m_zeytin], [e_kasar], [e_sucuk], [e_aci], [aciklama], [adres], [durum], [fiyat] FROM [pizza] WHERE ([k_ad] = @k_ad)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="k_ad" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label></div>


</asp:Content>

