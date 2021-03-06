﻿<%@ page title="CRM - Contacts Call-list" language="C#" masterpagefile="~/CRM.master" autoeventwireup="true" enableeventvalidation="false" inherits="CRM_Contacts_CallList, App_Web_ikfsrtt3" %>
<%@ Import Namespace="SandlerRepositories" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<table id="tblCallListMain" width="100%">
        
        <tr>
            <td align="left">
                <b>Call List:</b>
            </td>
            <td align="right">
                <asp:ImageButton ImageUrl="~/images/excel.jpg" runat="server" ToolTip="Export To Excel" ID="btnExportExcel" onclick="btnExportExcel_Click"  />
            </td> 
        </tr>
        <tr>
            <td colspan="2">
            <div id="Report" runat="server">
                <asp:GridView Width="100%" ID="gvCallList" runat="server" DataSourceID="CallListDS"
                    AutoGenerateColumns="False" DataKeyNames="contactsid" AllowSorting="true" AllowPaging="true"
                    PageSize="20" OnSelectedIndexChanged="gvCallList_SelectedIndexChanged" OnDataBound="gvCallList_DataBound">
                    <PagerStyle BackColor="#999999" ForeColor="Blue" CssClass="gridPager" HorizontalAlign="Center" />
                    <Columns>
                        <asp:BoundField DataField="contactsid" Visible="False" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Left"  HeaderStyle-HorizontalAlign="Left" DataField="FullName" HeaderText="Name" HeaderStyle-ForeColor="Blue" SortExpression="FullName" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Left"  HeaderStyle-HorizontalAlign="Left" DataField="Phone" HeaderText="Phone"   HeaderStyle-ForeColor="Blue" SortExpression="Phone" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Left"  HeaderStyle-HorizontalAlign="Left" DataField="Email" HeaderText="E-mail"  HeaderStyle-ForeColor="Blue" SortExpression="Email" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Left"  HeaderStyle-HorizontalAlign="Left" DataField="COMPANYNAME" HeaderText="Company" HeaderStyle-ForeColor="Blue" SortExpression="COMPANYNAME" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Left"  HeaderStyle-HorizontalAlign="Left" DataField="DiscussionTopic" HeaderText="Topic" HeaderStyle-ForeColor="Blue" SortExpression="DiscussionTopic" />
                        <asp:BoundField ItemStyle-HorizontalAlign="Left"  HeaderStyle-HorizontalAlign="Left" DataField="LAST_CONTACT_DATE" HeaderText="Last Contact Date" HeaderStyle-ForeColor="Blue" SortExpression="LAST_CONTACT_DATE" DataFormatString="{0:d}"/>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select"
                                    Text="View Detail.."></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:GridView>
                </div> 
            </td>
        </tr>
        <tr>
            <td colspan="2"><asp:Label ForeColor="Red" ID="LblStatus" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ObjectDataSource ID="CallListDS" runat="server" TypeName="SandlerRepositories.ContactsRepository" SelectMethod="GetCallList" OnSelecting="CallListDS_Selecting">
                    <SelectParameters><asp:Parameter Name="_user"  /></SelectParameters>
                </asp:ObjectDataSource>
                <asp:HiddenField ID="hidContactID" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

