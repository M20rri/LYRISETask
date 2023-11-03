<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="LYRISETask.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div>
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="210px" OnNextButtonClick="Wizard1_NextButtonClick">
                <HeaderStyle Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
                <NavigationButtonStyle CssClass="btn btn-success" />
                <SideBarButtonStyle ForeColor="Black" />
                <SideBarStyle BackColor="White" Font-Size="0.9em" VerticalAlign="Top" />
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Personal Information">
                        <table>
                            <tr>
                                <td>FullName</td>
                                <td>
                                    <asp:TextBox ID="FullName" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <b>
                                        <asp:RequiredFieldValidator ID="FullNameReqVal" runat="server" ErrorMessage="FullName is Required" Display="Dynamic" CssClass="text-danger" ControlToValidate="FullName"></asp:RequiredFieldValidator></b>
                                    <b>
                                        <asp:RegularExpressionValidator ID="FullNameRegVal" runat="server" Display="Dynamic" ErrorMessage="at least two words" CssClass="text-danger" ControlToValidate="FullName" ValidationExpression="^[a-zA-Z]{2,40}(?: +[a-zA-Z]{2,40})+$"></asp:RegularExpressionValidator>
                                    </b>
                                </td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td>
                                    <asp:DropDownList ID="AddressDrop" runat="server" CssClass="form-select">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <b>
                                        <asp:RequiredFieldValidator ID="AddressReqVal" runat="server" ErrorMessage="Address is Required" CssClass="text-danger" ControlToValidate="AddressDrop"></asp:RequiredFieldValidator></b>
                                </td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Account Setup">
                        <table style="width: 100%;">
                            <tr>
                                <td><strong>Account Setup</strong></td>

                            </tr>
                            <tr>
                                <td>UserName</td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server" CssClass="form-control"></asp:TextBox>

                                </td>
                                <td>
                                    <b>
                                        <asp:RequiredFieldValidator ID="UserNameReqVal" runat="server" ErrorMessage="Username is Required" Display="Dynamic" CssClass="text-danger" ControlToValidate="UserName"></asp:RequiredFieldValidator>

                                    </b>
                                </td>
                                <td>
                                    <b>
                                        <asp:RegularExpressionValidator ID="UserNameRegVal" runat="server" Display="Dynamic" ErrorMessage="should be alphanumeric and at least 6 characters long" CssClass="text-danger" ControlToValidate="UserName" ValidationExpression="^[a-zA-Z0-9]{6,10}$"></asp:RegularExpressionValidator>

                                    </b>
                                </td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td>
                                    <asp:TextBox ID="Password" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                                <td>
                                    <b>
                                        <asp:RequiredFieldValidator runat="server" ID="PasswordReqVal" ControlToValidate="Password"
                                            ErrorMessage="Password is required." CssClass="text-danger" Display="Dynamic">
                                        </asp:RequiredFieldValidator>
                                    </b>
                                </td>
                                <td>
                                    <b>
                                        <asp:RegularExpressionValidator ID="PasswordRegVal" runat="server" Display="Dynamic" ErrorMessage="should be at least 8 characters long with a mix of letters, numbers, and
special characters"
                                            CssClass="text-danger" ControlToValidate="Password" ValidationExpression="^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$"></asp:RegularExpressionValidator>

                                    </b>
                                </td>
                            </tr>
                            <tr>
                                <td>Confirm Password</td>
                                <td>
                                    <asp:TextBox ID="ConfirmPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                                <td>
                                    <b>
                                        <asp:CompareValidator ID="ConfirmPasswordCompareVal" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                            ErrorMessage="Passwords do not match." CssClass="text-danger" Display="Dynamic">
                                        </asp:CompareValidator>
                                    </b>
                                </td>
                            </tr>
                        </table>

                    </asp:WizardStep>

                    <asp:WizardStep ID="WizardStep3" runat="server" Title="Confirmation">

                        <table class="auto-style1">
                            <tr>
                                <td>FullName :</td>
                                <td>
                                    <asp:Label ID="fullNameLbl" runat="server" Text=""></asp:Label>
                                </td>
                                <td></td>

                            </tr>
                            <tr>
                                <td>Address :</td>
                                <td>
                                    <asp:Label ID="addressLbl" runat="server" Text=""></asp:Label>
                                </td>
                                <td></td>

                            </tr>
                            <tr>
                                <td>Username :</td>
                                <td>
                                    <asp:Label ID="userNameLbl" runat="server" Text=""></asp:Label>
                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </asp:WizardStep>


                </WizardSteps>

            </asp:Wizard>
        </div>

    </main>
</asp:Content>
