<%@ Page Title="" Language="C#" MasterPageFile="~/MasterOgretmen.master" AutoEventWireup="true" CodeFile="Ogretmen_DuyuruListesi.aspx.cs" Inherits="Ogretmen_DuyuruListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Duyuru Sahibi</th>
            <th scope="col">Başlık</th>
            <th scope="col">İçerik</th>
            <th scope="col">Tarih</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("DuyuruId") %></td>
                        <td>
                            <asp:Label ID="lblGonderen" runat="server" Text='<%# GetKullaniciAdiByNumara(Eval("DuyuruSahibi")) %>' />
                        </td>
                        <td><%# Eval("DuyuruBaslik") %></td>
                        <td><%# Eval("DuyuruIcerik") %></td>
                        <td><%# Eval("DuyuruTarih") %></td>

                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

