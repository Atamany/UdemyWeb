<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin_OgrenciListesi.aspx.cs" Inherits="Admin_OgrenciListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <table class="table table-bordered table-hover">
     <tr>
         <th scope="col">ID</th>
         <th scope="col">TC</th>
         <th scope="col">Ad</th>
         <th scope="col">Soyad</th>
         <th scope="col">Cinsiyet</th>
         <th scope="col">Telefon</th>
         <th scope="col">E-Posta</th>
         <th scope="col">Şifre</th>
         <th scope="col">Fakülte</th>
         <th scope="col">Bölüm</th>
         <th scope="col">İşlemler</th>
     </tr>
     <tbody>
         <asp:Repeater ID="Repeater1" runat="server">
             <itemtemplate>
                 <tr>
                     <td><%# Eval("OgrId") %></td>
                     <td><%# Eval("OgrenciTC") %></td>
                     <td><%# Eval("OgrAd") %></td>
                     <td><%# Eval("OgrSoyad") %></td>
                     <td><%# Eval("OgrCinsiyet") %></td>
                     <td><%# Eval("OgrTelefon") %></td>
                     <td><%# Eval("OgrMail") %></td>
                     <td><%# Eval("OgrSifre") %></td>
                     <td><%# Eval("FakulteAd") %></td>
                     <td><%# Eval("BolumAd") %></td>
                     <td>
                         <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/Admin_OgrenciSil.aspx?OgrId="+Eval("OgrId")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                         <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/Admin_OgrenciGuncelle.aspx?OgrId="+Eval("OgrId")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                     </td>
                 </tr>
             </itemtemplate>
         </asp:Repeater>
     </tbody>
 </table>
</asp:Content>

