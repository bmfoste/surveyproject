﻿<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="vts" Namespace="Votations.NSurvey.WebControls" Assembly="Votations.NSurvey.WebControls" %>

<%@ Page Language="c#" MasterPageFile="MsterPageTabs.master" ValidateRequest="false"
    AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.TakeSurvey" CodeBehind="TakeSurvey.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="mainBody" class="mainBody contentHolder ps-container">
        <div id="Panel" class="Panel content">

    <!--
                                            <asp:Literal ID="TakeSurveyTitle" runat="server" EnableViewState="False" Text="Take survey"></asp:Literal></font>
       -->
<asp:PlaceHolder ID="phSurveysDll"  runat="server" Visible="true">
     <br />
                <fieldset style="width:750px; margin-left:12px;">
                      <br />
                    <ol>
     <li>
                            <asp:Label Width="45%" ID="ChooseSurveyLabel" AssociatedControlID="ddlSurveys" runat="server" Visible="false"></asp:Label>

                            <asp:DropDownList ID="ddlSurveys" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSurveys_SelectedIndexChanged1"
                                Visible="false">
                            </asp:DropDownList>
                          </li>
  </ol>  <br />
                    </fieldset>
    </asp:PlaceHolder>
     <br />
                            <table style="width:95%; margin-left:15px; text-align:left;" class="innerText">
                                <tr>
                                    <td>
                                        <vts:SurveyBox ID="SurveyPreview" CssClass="surveybox" Visible="false" EnableValidation="true" runat="server">
                                            <QuestionStyle CssClass="questionStyle"></QuestionStyle>
                                            <QuestionValidationMessageStyle CssClass="qvmStyle"></QuestionValidationMessageStyle>
                                            <QuestionValidationMarkStyle CssClass="icon-warning-sign"></QuestionValidationMarkStyle>
                                            <ConfirmationMessageStyle CssClass="cmStyle"></ConfirmationMessageStyle>
                                            <SectionOptionStyle CssClass="soStyle"></SectionOptionStyle>
                                            <ButtonStyle CssClass="btn btn-primary btn-xs bw"></ButtonStyle>
                                            <AnswerStyle CssClass="answerStyle"></AnswerStyle>
                                            <MatrixStyle CssClass="matrixStyle"></MatrixStyle>
                                            <MatrixHeaderStyle CssClass="mhStyle"></MatrixHeaderStyle>
                                            <MatrixItemStyle CssClass="miStyle"></MatrixItemStyle>
                                            <MatrixAlternatingItemStyle CssClass="maiStyle"></MatrixAlternatingItemStyle>
                                            <SectionGridAnswersItemStyle CssClass="sgiStyle"></SectionGridAnswersItemStyle>
                                            <SectionGridAnswersAlternatingItemStyle CssClass="sgaaisStyle"></SectionGridAnswersAlternatingItemStyle>
                                            <SectionGridAnswersStyle CssClass="sgaStyle"></SectionGridAnswersStyle>
                                            <SectionGridAnswersHeaderStyle CssClass="sgahStyle"></SectionGridAnswersHeaderStyle>
                                            <FootStyle CssClass="footStyle"></FootStyle>
                                        </vts:SurveyBox>
                                    </td>
                                </tr>
                            </table>

</div></div></asp:Content>
