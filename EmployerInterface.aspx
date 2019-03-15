<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Masterpage.master"CodeFile="EmployerInterface.aspx.cs" Inherits="Employer" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



         <div class="jumbotron container-fluid">
        <h1 class="display-3">Employer Menu</h1>      
        <hr class="my-3" />
            <h2><a href="EmployerInterface.aspx" class="badge badge-light ">Employer Registration</a></h2>
           
    </div>

        <table id ="Textfields">
            <tr id ="DataFields">
                

                <th>
                    <asp:Label ID="FirstName" runat="server" Text="First Name:  " CssClass="form-control"></asp:Label><asp:TextBox ID="FirstNameText" runat="server" placeholder="Enter first name"></asp:TextBox>
                </th>
                <asp:RequiredFieldValidator ID="RequiredFirstName" runat="server" ErrorMessage="(Required)" ControlToValidate="FirstNameText" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareFirstName" runat="server" ErrorMessage="(Characters Only)" Type="String" Operator="DataTypeCheck" ValidationGroup="Group1" ControlToValidate="FirstNameText"></asp:CompareValidator>


                <th>
                    <asp:Label ID="LastName" runat="server" Text="Last Name:  " CssClass="form-control"></asp:Label><asp:TextBox ID="LastNameText" runat="server" placeholder="Enter last name"></asp:TextBox>
                </th>
                <asp:RequiredFieldValidator ID="RequiredLastName" runat="server" ErrorMessage="(Required)" ControlToValidate="LastNameText" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareLastName" runat="server" ErrorMessage="(Characters Only)" Type="String" Operator="DataTypeCheck" ValidationGroup="Group1" ControlToValidate="LastNameText"></asp:CompareValidator>

                <th>
                    <asp:Label ID="Company" runat="server" Text="Company Name:  " CssClass="form-control"></asp:Label><asp:TextBox ID="CompanyText" runat="server" placeholder="Enter company name"></asp:TextBox>
                </th>
                <asp:RequiredFieldValidator ID="RequiredDate" runat="server" ErrorMessage="(Required)" ControlToValidate="CompanyText" ValidationGroup="Group1"></asp:RequiredFieldValidator>
               <asp:CompareValidator ID="CompareCompany" runat="server" ErrorMessage="(Characters Only)" Type="String" Operator="DataTypeCheck" ValidationGroup="Group1" ControlToValidate="CompanyText"></asp:CompareValidator>
               
                <th>
                    <asp:Label ID="Email" runat="server" Text="Email Address:  " CssClass="form-control"></asp:Label><asp:TextBox ID="EmailText" runat="server" placeholder="Enter email address"></asp:TextBox>
                </th>
                <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ErrorMessage="(Required)" ControlToValidate="EmailText" ValidationGroup="Group1"></asp:RequiredFieldValidator>
              <%-- <asp:CompareValidator ID="CompareEmail" runat="server" ErrorMessage="(Characters Only)" Type="String" Operator="DataTypeCheck" ValidationGroup="Group1" ControlToValidate="CompanyText"></asp:CompareValidator>--%>
               
               <th>
                    <asp:Label ID="Password1" runat="server" Text="Password:  " CssClass="form-control"></asp:Label><asp:TextBox ID="PasswordText1" runat="server" placeholder="Enter password" TextMode="Password"></asp:TextBox>
                </th>
                <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ErrorMessage="(Required)" ControlToValidate="PasswordText1" ValidationGroup="Group1"></asp:RequiredFieldValidator>
               <asp:CompareValidator ID="ComparePassword" runat="server" ErrorMessage="(Characters Only)" Type="String" Operator="DataTypeCheck" ValidationGroup="Group1" ControlToValidate="PasswordText1"></asp:CompareValidator>
               

                 <th>
                    <asp:Label ID="Password2" runat="server" Text="Re-enter Password:  " CssClass="form-control"></asp:Label><asp:TextBox ID="PasswordText2" runat="server" placeholder="Enter password again" TextMode="Password"></asp:TextBox>
                </th>
                <asp:RequiredFieldValidator ID="RequiredPassword2" runat="server" ErrorMessage="(Required)" ControlToValidate="PasswordText2" ValidationGroup="Group1"></asp:RequiredFieldValidator>
               <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="(Characters Only)" Type="String" Operator="DataTypeCheck" ValidationGroup="Group1" ControlToValidate="PasswordText2"></asp:CompareValidator>


                </tr>
            </table>

        <br />
        <br />
        <br />

        <table>
            <tr>
                <th>
                    <asp:Label ID="Phone" runat="server" Text="Phone Number: " CssClass="form-control"></asp:Label><asp:TextBox ID="PhoneText" runat="server" placeholder="(xxx)xxx-xxxx"></asp:TextBox>   
                </th>
                    <asp:RequiredFieldValidator ID="RequiredPhone" runat="server" ErrorMessage="(Required)" ControlToValidate="PhoneText" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="ComparePhone" runat="server" ErrorMessage="(Characters Only)" Type="String" Operator="DataTypeCheck" ValidationGroup="Group1" ControlToValidate="PhoneText"></asp:CompareValidator>

                <th>
                    <asp:Label ID="Address" runat="server" Text="Company Address: " CssClass="form-control"></asp:Label><asp:TextBox ID="CompanyAddressText" runat="server" placeholder="Enter company address"></asp:TextBox>
                    
                </th>
                    <asp:RequiredFieldValidator ID="RequiredCompAddress" runat="server" ErrorMessage="(Required)" ControlToValidate="CompanyAddressText" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareCompAddress" runat="server" ErrorMessage="(Characters Only)" Type="String" Operator="DataTypeCheck" ValidationGroup="Group1" ControlToValidate="CompanyAddressText"></asp:CompareValidator>


                <th>
                    <asp:Label ID="City" runat="server" Text="City: " CssClass="form-control"></asp:Label><asp:TextBox ID="CityText" runat="server" placeholder="Enter city"></asp:TextBox>
                </th>
                    <asp:RequiredFieldValidator ID="RequiredCity" runat="server" ErrorMessage="(Required)" ControlToValidate="CityText" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareCity" runat="server" ErrorMessage="(Characters Only)" Type="String" Operator="DataTypeCheck" ValidationGroup="Group1" ControlToValidate="CityText"></asp:CompareValidator>

                <th>
                    <asp:Label ID="State" runat="server" Text="State: " CssClass="form-control"></asp:Label><asp:DropDownList ID="StateDropDown" runat="server" placeholder="">
	                                            <asp:ListItem Value="AL">Alabama</asp:ListItem>
	                                            <asp:ListItem Value="AK">Alaska</asp:ListItem>
	                                            <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	                                            <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	                                            <asp:ListItem Value="CA">California</asp:ListItem>
	                                            <asp:ListItem Value="CO">Colorado</asp:ListItem>
	                                            <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	                                            <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	                                            <asp:ListItem Value="DE">Delaware</asp:ListItem>
	                                            <asp:ListItem Value="FL">Florida</asp:ListItem>
	                                            <asp:ListItem Value="GA">Georgia</asp:ListItem>
	                                            <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	                                            <asp:ListItem Value="ID">Idaho</asp:ListItem>
	                                            <asp:ListItem Value="IL">Illinois</asp:ListItem>
	                                            <asp:ListItem Value="IN">Indiana</asp:ListItem>
	                                            <asp:ListItem Value="IA">Iowa</asp:ListItem>
	                                            <asp:ListItem Value="KS">Kansas</asp:ListItem>
	                                            <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	                                            <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	                                            <asp:ListItem Value="ME">Maine</asp:ListItem>
	                                            <asp:ListItem Value="MD">Maryland</asp:ListItem>
	                                            <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	                                            <asp:ListItem Value="MI">Michigan</asp:ListItem>
	                                            <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	                                            <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	                                            <asp:ListItem Value="MO">Missouri</asp:ListItem>
	                                            <asp:ListItem Value="MT">Montana</asp:ListItem>
	                                            <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	                                            <asp:ListItem Value="NV">Nevada</asp:ListItem>
	                                            <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	                                            <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	                                            <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	                                            <asp:ListItem Value="NY">New York</asp:ListItem>
	                                            <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	                                            <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	                                            <asp:ListItem Value="OH">Ohio</asp:ListItem>
	                                            <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	                                            <asp:ListItem Value="OR">Oregon</asp:ListItem>
	                                            <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	                                            <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	                                            <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	                                            <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	                                            <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	                                            <asp:ListItem Value="TX">Texas</asp:ListItem>
	                                            <asp:ListItem Value="UT">Utah</asp:ListItem>
	                                            <asp:ListItem Value="VT">Vermont</asp:ListItem>
	                                            <asp:ListItem Value="VA">Virginia</asp:ListItem>
	                                            <asp:ListItem Value="WA">Washington</asp:ListItem>
	                                            <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	                                            <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	                                            <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                                            </asp:DropDownList>
                    


                </th>

                    <asp:RequiredFieldValidator ID="RequiredState" runat="server" ErrorMessage="(Required)" ControlToValidate="StateDropDown" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareState" runat="server" ErrorMessage="(Characters Only)" Type="String" Operator="DataTypeCheck" ValidationGroup="Group1" ControlToValidate="StateDropDown"></asp:CompareValidator>
            </tr>
        </table>
            
               

                
                <asp:Label ID="ErrorDB" runat="server" Text=""></asp:Label>
                <asp:Button ID="Clear" class="btn btn-primary" runat="server" Text="Clear Contents" OnClick="clear_Click" /> 
                <asp:Button ID="ExitButton" class="btn btn-primary" runat="server" Text="Exit" OnClick="Exit_Page" />
                <asp:Button ID="InsertButton" class="btn btn-primary" runat="server" Text="Create Account" OnClick="insert_Click" ValidationGroup="Group1"/>
               

                <br />
                <br />
                <br />
                <br />

            <asp:Label ID="EmailTaken" runat="server" Text=""></asp:Label>
            <asp:Label ID="PassDontMatch" runat="server" Text=""></asp:Label>
            <div class="alert alert-success" id="createdSuccess">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong id="createdAcct">Acccount created successfully!</strong>
            </div>
                
    
        
</asp:Content>

