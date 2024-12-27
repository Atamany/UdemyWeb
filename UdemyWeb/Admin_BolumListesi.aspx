<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin_BolumListesi.aspx.cs" Inherits="Admin_BolumListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Bölüm</th>
            <th scope="col">Fakülte</th>
            <th scope="col">İşlemler</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("BolumId") %></td>
                        <td><%# Eval("BolumAd") %></td>

                        <td>
                            <asp:Label ID="lblFakulte" runat="server" Text='<%# GetFakulteAdiByNumara(Eval("Fakulte")) %>' />
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/Admin_BolumSil.aspx?BolumId="+Eval("BolumId")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/Admin_BolumGuncelle.aspx?BolumId="+Eval("BolumId")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

