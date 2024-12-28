<%@ Page Title="" Language="C#" MasterPageFile="~/MasterOgretmen.master" AutoEventWireup="true" CodeFile="Ogretmen_NotListesi.aspx.cs" Inherits="Ogretmen_NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">Öğrenci</th>
            <th scope="col">1. Sınav</th>
            <th scope="col">2. Sınav</th>
            <th scope="col">3. Sınav</th>
            <th scope="col">Ortalama</th>
            <th scope="col">Not Durum</th>
            <th scope="col">İşlemler</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("OgrAd") %></td>
                        <td><%# Eval("Sinav1") %></td>
                        <td><%# Eval("Sinav2") %></td>
                        <td><%# Eval("Sinav3") %></td>
                        <td><%# Eval("Ortalama") %></td>
                        <td><%# Eval("NotDurum") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/Ogretmen_NotGuncelle.aspx?NotId="+Eval("NotId")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

