<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<table class="table table-bordered table-hover">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Ad</th>
      <th scope="col">Soyad</th>
      <th scope="col">Telefon</th>
      <th scope="col">E-Posta</th>
      <th scope="col">Şifre</th>
      <th scope="col">İşlemler</th>
    </tr>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>
              <tr>
                  <td><%# Eval("OgrId") %></td>
                  <td><%# Eval("OgrAd") %></td>
                  <td><%# Eval("OgrSoyad") %></td>
                  <td><%# Eval("OgrTelefon") %></td>
                  <td><%# Eval("OgrMail") %></td>
                  <td><%# Eval("OgrSifre") %></td>
                  <td>
                      <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/OgrenciSil.aspx?OgrId="+Eval("OgrId")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                      <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OgrId="+Eval("OgrId")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                  </td>
              </tr>
          </ItemTemplate>
      </asp:Repeater>
  </tbody>
</table></asp:Content>

<%--      <th scope="row">1</th>--%>
