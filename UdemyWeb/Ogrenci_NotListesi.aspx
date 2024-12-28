<%@ Page Title="" Language="C#" MasterPageFile="~/MasterOgrenci.master" AutoEventWireup="true" CodeFile="Ogrenci_NotListesi.aspx.cs" Inherits="Ogrenci_NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">Ders</th>
            <th scope="col">1. Sınav</th>
            <th scope="col">2. Sınav</th>
            <th scope="col">3. Sınav</th>
            <th scope="col">Ortalama</th>
            <th scope="col">Not Durum</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("DersAd") %></td>
                        <td><%# Eval("Sinav1") %></td>
                        <td><%# Eval("Sinav2") %></td>
                        <td><%# Eval("Sinav3") %></td>
                        <td><%# Eval("Ortalama") %></td>
                        <td><%# Eval("NotDurum") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

