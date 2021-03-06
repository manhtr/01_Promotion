﻿<%@ Page Title="Báo cáo cấp Lì xì" Language="C#" MasterPageFile="~/Manager.Master" AutoEventWireup="true" CodeBehind="BaoCaoCapLiXi.aspx.cs" Inherits="Promotion.LiXi.BaoCaoCapLiXi" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Báo cáo cấp Lì xì</h3>
    <div class="quoteOfDay" style="overflow: auto">
        <table cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblMessage" runat="server" Font-Bold="true" ForeColor="Red" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 20%">Từ ngày:
                </td>
                <td>
                    <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Đến ngày:
                </td>
                <td>
                    <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Chi nhánh/PGD:
                </td>
                <td>
                    <asp:DropDownList ID="cboBranch" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cboBranch_SelectedIndexChanged"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="cmdSearch" runat="server" Text="Tìm kiếm" BackColor="#0E4E95" ForeColor="White" OnClick="cmdSearch_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="cmdExport" runat="server" BackColor="#0E4E95" ForeColor="White" Text="Xuất báo cáo" OnClick="cmdExport_Click" />
                    <dx:ASPxGridView ID="dxgvLiXi" ClientInstanceName="dxgvLiXi" Font-Size="Small" runat="server"
                        SettingsLoadingPanel-Mode="ShowAsPopup" KeyFieldName="ID" Width="100%"
                        EnableTheming="False" Border-BorderWidth="0px" OnHtmlRowCreated="dxgvLiXi_HtmlRowCreated" OnCustomColumnDisplayText="dxgvLiXi_CustomColumnDisplayText">
                        <Settings ShowTitlePanel="false" ShowColumnHeaders="true" ShowGroupPanel="false" />
                        <SettingsBehavior AllowSort="false" AllowGroup="false" AllowSelectByRowClick="false" AllowSelectSingleRowOnly="false" />
                        <SettingsText Title="Kết quả tìm kiếm" EmptyDataRow="Không có dữ liệu" />
                        <SettingsPager PageSize="10" ShowSeparators="true" Summary-Text="Trang:"
                            CurrentPageNumberFormat="{0}" NumericButtonCount="5">
                        </SettingsPager>
                        <Styles AlternatingRow-BackColor="#e5f0fd" Cell-HorizontalAlign="Left"
                            Header-BackColor="#004990" Header-ForeColor="White" Header-Font-Size="Small" Header-Font-Bold="true"
                            Cell-Font-Size="Small" Footer-Font-Size="Small">
                        </Styles>
                        <Columns>
                            <dx:GridViewDataTextColumn Caption="STT" ReadOnly="True" UnboundType="String" VisibleIndex="0">
                                <Settings AllowAutoFilter="False" AllowAutoFilterTextInputTimer="False"
                                    AllowDragDrop="False" AllowGroup="False" AllowHeaderFilter="False"
                                    AllowSort="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Mã khách hàng" FieldName="CIF" ReadOnly="True" VisibleIndex="1"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Số TK" FieldName="AccountNumber" ReadOnly="True" VisibleIndex="2"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Tên khách hàng" FieldName="CustomerName" ReadOnly="True" VisibleIndex="3"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="CMND" FieldName="CMND" ReadOnly="True" VisibleIndex="4"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Điện thoại" FieldName="Telephone" ReadOnly="True" VisibleIndex="5"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Địa chỉ" FieldName="Address" ReadOnly="True" VisibleIndex="6"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="CO_CODE" FieldName="CoCode" ReadOnly="True" VisibleIndex="7"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataColumn Caption="Tên CN/PGD" VisibleIndex="8">
                                <DataItemTemplate>
                                    <asp:Label ID="lblBranchName" runat="server" Text=""></asp:Label>
                                </DataItemTemplate>
                            </dx:GridViewDataColumn>
                            <dx:GridViewDataColumn Caption="Trạng thái" VisibleIndex="9">
                                <DataItemTemplate>
                                    <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                                </DataItemTemplate>
                            </dx:GridViewDataColumn>
                            <dx:GridViewDataTextColumn Caption="Người cấp" FieldName="CreatedBy" ReadOnly="True" VisibleIndex="10"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Ngày cấp" FieldName="Created" ReadOnly="True" VisibleIndex="11"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Người xóa" FieldName="DeletedBy" ReadOnly="True" VisibleIndex="12"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Ngày xóa" FieldName="Deleted" ReadOnly="True" VisibleIndex="13"></dx:GridViewDataTextColumn>
                        </Columns>
                    </dx:ASPxGridView>
                    <dx:ASPxGridViewExporter ID="grvExport" GridViewID="dxgvLiXi" runat="server" OnRenderBrick="grvExport_RenderBrick"></dx:ASPxGridViewExporter>
                </td>
            </tr>
        </table>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=txtFrom.ClientID %>").datepicker({ dateFormat: "dd/mm/yy" });
            $("#<%=txtFrom.ClientID %>").mask("99/99/9999");
            $("#<%=txtTo.ClientID %>").datepicker({ dateFormat: "dd/mm/yy" });
            $("#<%=txtTo.ClientID %>").mask("99/99/9999");
        });
    </script>
</asp:Content>
