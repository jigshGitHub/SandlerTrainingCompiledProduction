﻿<%@ page title="GapAnalysis" language="C#" masterpagefile="~/CRM.master" autoeventwireup="true" inherits="GapAnalysisCreate, App_Web_w34l0ys3" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Wizard ID="wzGapAnalysis" runat="server" DisplaySideBar="false" Width="100%">
                    <WizardSteps>
                        <asp:TemplatedWizardStep ID="submitGAPData" runat="server">
                            <ContentTemplate>
                                <asp:UpdatePanel ID="updPnl" runat="server">
                                    <ContentTemplate>
                                        <table style="background-color: White; border-color: #999999; border-width: 1px;
                                            border-style: solid; width: 80%">
                                            <tr>
                                                <td align="left" colspan="2">
                                                    <b>
                                                        <asp:Label ID="lblViewTitle" runat="server">Perform Gap Analysis:</asp:Label>
                                                    </b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr style="color: Black; background-color: #EEEEEE;">
                                                <td style="width: 25%">
                                                    Company:
                                                </td>
                                                <td style="width: 75%">
                                                    <asp:DropDownList ID="drpLstCompanies" runat="server" AutoPostBack="true" OnDataBound="ddlCreateDefaultSelection"
                                                        OnSelectedIndexChanged="drpLstCompanies_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="color: Black; background-color: #DCDCDC">
                                                <td>
                                                    Contacts:
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpLstContacts" AutoPostBack="true" OnDataBound="ddlCreateDefaultSelection"
                                                        runat="server" OnSelectedIndexChanged="drpLstContacts_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <b>
                                                        <asp:Label ID="lblAsIsSelectionTitle" runat="server">Select the following "As - Is" data for your Gap Analysis:</asp:Label>
                                                    </b>
                                                </td>
                                            </tr>
                                            <tr style="color: Black; background-color: #EEEEEE">
                                                <td>
                                                    <a href=# title="Sales Cycle Time tool tip, this is the description of sales cycle time.">Sales Cycle Time</a>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpListSCTAsIs" OnDataBound="ddlCreateDefaultSelection" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="color: Black; background-color: #DCDCDC">
                                                <td>
                                                    <a href=# title="Sales Cycle Time tool tip, this is the description of sales cycle time.">Sales Efficiency</a>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpListSEAsIs" OnDataBound="ddlCreateDefaultSelection" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="color: Black; background-color: #EEEEEE">
                                                <td>
                                                    <a href=# title="Sales Cycle Time tool tip, this is the description of sales cycle time.">Sales Qualification</a>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpListSQAsIs" OnDataBound="ddlCreateDefaultSelection" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="color: Black; background-color: #DCDCDC">
                                                <td>
                                                    <a href=# title="Sales Cycle Time tool tip, this is the description of sales cycle time.">Sales Rep Retention</a>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpListTCSAsIs" OnDataBound="ddlCreateDefaultSelection" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="color: Black; background-color: #EEEEEE">
                                                <td>
                                                    <a href=# title="Sandler Trng Benefits tool tip, this is the description of Sandler Trng Benefits.">Quota Achievement</a>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpListQAAsIs" OnDataBound="ddlCreateDefaultSelection" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="color: Black; background-color: #DCDCDC">
                                                <td>
                                                    <a href=# title="Sandler Trng Benefits tool tip, this is the description of Sandler Trng Benefits.">Sandler Trng Benefits</a>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpListEBGAsIS" OnDataBound="ddlCreateDefaultSelection" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <b>
                                                        <asp:Label ID="lblToBeSelectionTitle" runat="server">Select the following "To - Be" data for your Gap Analysis:</asp:Label></b>
                                                </td>
                                            </tr>
                                            <tr style="color: Black; background-color: #EEEEEE">
                                                <td>
                                                    Sales Cycle Time
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpListSCTToBe" OnDataBound="ddlCreateDefaultSelection" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="color: Black; background-color: #DCDCDC">
                                                <td>
                                                    Sales Efficiency
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpListSEToBe" OnDataBound="ddlCreateDefaultSelection" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="color: Black; background-color: #EEEEEE">
                                                <td>
                                                    Sales Qualification
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpListSQToBe" OnDataBound="ddlCreateDefaultSelection" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="color: Black; background-color: #DCDCDC">
                                                <td>
                                                    Sales Rep Retention
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpListTCSToBe" OnDataBound="ddlCreateDefaultSelection" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="color: Black; background-color: #EEEEEE">
                                                <td>
                                                    Quota Achievement
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpListQAToBe" OnDataBound="ddlCreateDefaultSelection" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr style="color: Black; background-color: #DCDCDC">
                                                <td>
                                                    Sanlder Trng Benefits
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="drpListEBGToBe" OnDataBound="ddlCreateDefaultSelection" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </ContentTemplate>
                            <CustomNavigationTemplate>
                                <table width="100%">
                                    <tr>
                                        <td align="left">
                                            <asp:LinkButton ID="lnkNextStep" runat="server" CommandArgument="1" CommandName="plotGraph"
                                                OnCommand="lnlNextStep_Click" Visible="True" OnClientClick="return performRequiredValidation();">View Gap Analysis Report</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </CustomNavigationTemplate>
                        </asp:TemplatedWizardStep>
                        <asp:TemplatedWizardStep ID="plotChart" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="pnlChart" runat="server">
                                    <table style="background-color: White; width: 100%">
                                        <tr>
                                            <td colspan="4">
                                                &nbsp;<asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 13%; background-color: #D2F7FF">
                                                <table style="height: 400px">
                                                    <tr>
                                                        <td>
                                                            <b>As - Is</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="vertical-align: top">
                                                            <asp:Label ID="lblAsIsSCT" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblAsIsSE" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblAsIsSQ" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblAsIsTCS" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblAsIsQA" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblAsIsEBG" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: 20%;">
                                                <table style="height: 400px">
                                                    <tr>
                                                        <td style="padding-bottom: 5px">
                                                            <b>Desired Annual Improvement%</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <asp:DropDownList ID="drpLstDAISCT" runat="server">
                                                                <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                                <asp:ListItem Text="10%" Value="10"></asp:ListItem>
                                                                <asp:ListItem Text="20%" Value="20"></asp:ListItem>
                                                                <asp:ListItem Text="30%" Value="30"></asp:ListItem>
                                                                <asp:ListItem Text="40%" Value="40"></asp:ListItem>
                                                                <asp:ListItem Text="50%" Value="50"></asp:ListItem>
                                                                <asp:ListItem Text="60%" Value="60"></asp:ListItem>
                                                                <asp:ListItem Text="70%" Value="70"></asp:ListItem>
                                                                <asp:ListItem Text="80%" Value="80"></asp:ListItem>
                                                                <asp:ListItem Text="90%" Value="90"></asp:ListItem>
                                                                <asp:ListItem Text="100%" Value="100"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <asp:DropDownList ID="drpLstDAISE" runat="server">
                                                                <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                                <asp:ListItem Text="10%" Value="10"></asp:ListItem>
                                                                <asp:ListItem Text="20%" Value="20"></asp:ListItem>
                                                                <asp:ListItem Text="30%" Value="30"></asp:ListItem>
                                                                <asp:ListItem Text="40%" Value="40"></asp:ListItem>
                                                                <asp:ListItem Text="50%" Value="50"></asp:ListItem>
                                                                <asp:ListItem Text="60%" Value="60"></asp:ListItem>
                                                                <asp:ListItem Text="70%" Value="70"></asp:ListItem>
                                                                <asp:ListItem Text="80%" Value="80"></asp:ListItem>
                                                                <asp:ListItem Text="90%" Value="90"></asp:ListItem>
                                                                <asp:ListItem Text="100%" Value="100"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <asp:DropDownList ID="drpLstDAISQ" runat="server">
                                                                <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                                <asp:ListItem Text="10%" Value="10"></asp:ListItem>
                                                                <asp:ListItem Text="20%" Value="20"></asp:ListItem>
                                                                <asp:ListItem Text="30%" Value="30"></asp:ListItem>
                                                                <asp:ListItem Text="40%" Value="40"></asp:ListItem>
                                                                <asp:ListItem Text="50%" Value="50"></asp:ListItem>
                                                                <asp:ListItem Text="60%" Value="60"></asp:ListItem>
                                                                <asp:ListItem Text="70%" Value="70"></asp:ListItem>
                                                                <asp:ListItem Text="80%" Value="80"></asp:ListItem>
                                                                <asp:ListItem Text="90%" Value="90"></asp:ListItem>
                                                                <asp:ListItem Text="100%" Value="100"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <asp:DropDownList ID="drpLstDAITCS" runat="server">
                                                                <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                                <asp:ListItem Text="10%" Value="10"></asp:ListItem>
                                                                <asp:ListItem Text="20%" Value="20"></asp:ListItem>
                                                                <asp:ListItem Text="30%" Value="30"></asp:ListItem>
                                                                <asp:ListItem Text="40%" Value="40"></asp:ListItem>
                                                                <asp:ListItem Text="50%" Value="50"></asp:ListItem>
                                                                <asp:ListItem Text="60%" Value="60"></asp:ListItem>
                                                                <asp:ListItem Text="70%" Value="70"></asp:ListItem>
                                                                <asp:ListItem Text="80%" Value="80"></asp:ListItem>
                                                                <asp:ListItem Text="90%" Value="90"></asp:ListItem>
                                                                <asp:ListItem Text="100%" Value="100"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <asp:DropDownList ID="drpLstDAIQA" runat="server">
                                                                <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                                <asp:ListItem Text="10%" Value="10"></asp:ListItem>
                                                                <asp:ListItem Text="20%" Value="20"></asp:ListItem>
                                                                <asp:ListItem Text="30%" Value="30"></asp:ListItem>
                                                                <asp:ListItem Text="40%" Value="40"></asp:ListItem>
                                                                <asp:ListItem Text="50%" Value="50"></asp:ListItem>
                                                                <asp:ListItem Text="60%" Value="60"></asp:ListItem>
                                                                <asp:ListItem Text="70%" Value="70"></asp:ListItem>
                                                                <asp:ListItem Text="80%" Value="80"></asp:ListItem>
                                                                <asp:ListItem Text="90%" Value="90"></asp:ListItem>
                                                                <asp:ListItem Text="100%" Value="100"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <asp:DropDownList ID="drpLstDAIEBG" runat="server">
                                                                <asp:ListItem Text="" Value="0"></asp:ListItem>
                                                                <asp:ListItem Text="10%" Value="10"></asp:ListItem>
                                                                <asp:ListItem Text="20%" Value="20"></asp:ListItem>
                                                                <asp:ListItem Text="30%" Value="30"></asp:ListItem>
                                                                <asp:ListItem Text="40%" Value="40"></asp:ListItem>
                                                                <asp:ListItem Text="50%" Value="50"></asp:ListItem>
                                                                <asp:ListItem Text="60%" Value="60"></asp:ListItem>
                                                                <asp:ListItem Text="70%" Value="70"></asp:ListItem>
                                                                <asp:ListItem Text="80%" Value="80"></asp:ListItem>
                                                                <asp:ListItem Text="90%" Value="90"></asp:ListItem>
                                                                <asp:ListItem Text="100%" Value="100"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: 57%;">
                                                <div id="chartContainer" runat="server">
                                                </div>
                                            </td>
                                            <td style="width: 10%; background-color: #009999">
                                                <table style="height: 400px">
                                                    <tr>
                                                        <td>
                                                            <b>To - Be</b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="vertical-align: top">
                                                            <asp:Label ID="lblToBeSCT" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblToBeSE" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblToBeSQ" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblToBeTCS" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblToBeQA" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblToBeEBG" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </ContentTemplate>
                            <CustomNavigationTemplate>
                                <table style="width: 80%; margin-left: 10%; margin-right: 10%">
                                    <tr>
                                        <td style="width: 25%; text-align: center">
                                            <asp:LinkButton ID="lnkNextStep" runat="server" CommandArgument="0" CommandName="submitData"
                                                OnCommand="lnlPrevStep_Click" Visible="True">Edit: As-Is/To-Be Data</asp:LinkButton>
                                        </td>
                                        <td style="width: 25%; text-align: center">
                                            <asp:LinkButton ID="btnSave" Text="Save: Gap Analysis Record" runat="server" OnClick="btnSaveGapAnalysisReport_Click"></asp:LinkButton>
                                        </td>
                                        <td style="width: 25%; text-align: center">
                                            <asp:LinkButton ID="lnkBtnPrint" runat="server" Visible="false" Text="Print: Gap analysis Graph"></asp:LinkButton>
                                        </td>
                                        <td style="width: 25%; text-align: center">
                                            <a href="" id="editRoi" runat="server">Edit: ROI Record</a>
                                        </td>
                                    </tr>
                                </table>
                            </CustomNavigationTemplate>
                        </asp:TemplatedWizardStep>
                    </WizardSteps>
                </asp:Wizard>
            </td>
        </tr>
    </table>
    <div id="divProgress" style="width: 150px; text-align: center; vertical-align: middle;
        position: absolute; bottom: 50%; left: 45%; visibility: hidden; color: blue;
        background-color: lightblue;">
        <asp:Image ID="ajaxLoadNotificationImage" runat="server" ImageUrl="~/images/indicator_medium.gif" />Please
        wait...
    </div>
    <script type="text/javascript">

        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);


        function BeginRequestHandler(sender, args) {
            var elem = args.get_postBackElement();
            ShowHideProgress('visible');
        }
        function EndRequestHandler(sender, args) {
            ShowHideProgress('hidden');
        }
        function ShowHideProgress(visibility) {
            var divProgress = $get('divProgress');
            divProgress.style.visibility = visibility;
        }



        function onCancel() {
            window.open('Default.aspx', '_self');
        }

        $(document).ready(function () {
            BindEvents();
        });

        function BindEvents() {

        }
        function printData() {

            return false;
        }

        function performRequiredValidation() {
            if ($('#<%=submitGAPData.ContentTemplateContainer.FindControl("drpLstCompanies").ClientID %>').val() == 0) {
                alert('Please select company first.');
                return false;
            }
            if ($('#<%=submitGAPData.ContentTemplateContainer.FindControl("drpLstContacts").ClientID %>').val() == 0) {
                alert('Please select company first.');
                return false;
            }
            if (!checkAtLeastOnecriteria()) {
                alert('Please select all values for As - Is and To - Be.');
                return false;
            }
        }
        function checkAtLeastOnecriteria() {
            if ($('#<%=drpListSCTAsIs.ClientID %>').val() == 0)
                return false;
            if ($('#<%=drpListSEAsIs.ClientID %>').val() == 0)
                return false;
            if ($('#<%=drpListSQAsIs.ClientID %>').val() == 0)
                return false;
            if ($('#<%=drpListTCSAsIs.ClientID %>').val() == 0)
                return false;
            if ($('#<%=drpListQAAsIs.ClientID %>').val() == 0)
                return false;
            if ($('#<%=drpListEBGAsIS.ClientID %>').val() == 0)
                return false;
            if ($('#<%=drpListSCTToBe.ClientID %>').val() == 0)
                return false;
            if ($('#<%=drpListSEToBe.ClientID %>').val() == 0)
                return false;
            if ($('#<%=drpListSQToBe.ClientID %>').val() == 0)
                return false;
            if ($('#<%=drpListTCSToBe.ClientID %>').val() == 0)
                return false;
            if ($('#<%=drpListQAToBe.ClientID %>').val() == 0)
                return false;
            if ($('#<%=drpListEBGToBe.ClientID %>').val() == 0)
                return false;
            return true;
        }
    </script>
</asp:Content>
