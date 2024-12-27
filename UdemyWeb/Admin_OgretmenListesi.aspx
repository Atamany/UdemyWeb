<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin_OgretmenListesi.aspx.cs" Inherits="Admin_OgretmenListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="table table-bordered table-hover">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Öğretmen</th>
        <th scope="col">Branş</th>
        <th scope="col">Şifre</th>
        <th scope="col">İşlemler</th>
    </tr>
    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("OgrtId") %></td>
                    <td><%# Eval("OgrtAdSoyad") %></td>
                    <td><%# Eval("DersAd") %></td>
                    <td><%# Eval("OgrtSifre") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/Admin_OgretmenSil.aspx?OgrtId="+Eval("OgrtId")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/Admin_OgretmenGuncelle.aspx?OgrtId="+Eval("OgrtId")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>
</asp:Content>

