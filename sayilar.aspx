﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sayilar.aspx.cs" Inherits="renkler" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Tureng Sözlük - Adem Yener</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <style type="text/css">
            .style2
            {
                width: 174px;
                height: 41px;
            }
            .style3
            {
                width: 120px;
                height: 30px;
            }
            .style4
            {
                width: 170px;
                height: 30px;
            }
            .style5
            {
                height: 41px;
                width: 224px;
            }
            .style6
            {
                height: 41px;
                width: 120px;
            }
            .style7
            {
                width: 211px;
                height: 30px;
            }
            .style8
            {
                height: 41px;
            }
            .style9
            {
                height: 30px;
            }
            .style11
            {
                width: 50px;
            }
            .style12
            {
                width: 41px;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <div id="top">
                <a href="index.aspx"><div id="logo"></div></a>
                <a href="index.aspx"><h2>Tureng Sözlük</h2></a>
            </div>
        </div>
        <div id="container">
            <table style="width:100%;">
                <tr>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style3">
                        <asp:Label ID="Label1" runat="server" Text="Sayı" Font-Bold="True" 
                            Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:Label ID="Label2" runat="server" Text="Türkçe" Font-Bold="True" 
                            Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:Label ID="Label3" runat="server" Text="İngilizce" Font-Bold="True" 
                            Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="style9">
                        <asp:Label ID="Label4" runat="server" Text="Fransızca İçin" Font-Bold="True" 
                            Font-Size="X-Large"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:DataList ID="DataList1" runat="server" Width="793px">
                <ItemTemplate>
                    <table style="width:100%; margin-bottom: 7px; ">
                        <tr>
                            <td class="style11" >
                                &nbsp;</td>
                            <td class="style6">
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("sayi").ToString() %>'></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("sayi_turkce").ToString() %>'></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("sayi_ingilizce").ToString() %>'></asp:Label>
                            </td>
                            <td class="style8">
                                <asp:LinkButton class="linkbutton" ID="LinkButton1" PostBackUrl=<%# "~/fransizca_sayilar.aspx?id="+Eval("sayi").ToString() %> runat="server">Fransızca&#39;sı için tıklayın.</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
