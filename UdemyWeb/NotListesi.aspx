<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="NotListesi.aspx.cs" Inherits="NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Öğrenci</th>
            <th scope="col">Ders</th>
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
                        <td><%# Eval("NotId") %></td>
                        <td><%# Eval("Ogrenci") %></td>
                        <td><%# Eval("DersAd") %></td>
                        <td><%# Eval("Sinav1") %></td>
                        <td><%# Eval("Sinav2") %></td>
                        <td><%# Eval("Sinav3") %></td>
                        <td><%# Eval("Ortalama") %></td>
                        <td><%# Eval("NotDurum") %></td>


                        <td>
                            <asp:HyperLink NavigateUrl='<%#"NotGuncelle.aspx?NotId="+Eval("NotId") %>' ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                            

                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

