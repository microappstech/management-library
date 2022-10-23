<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="learn.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid ">
      <div class="row float-center m-auto">
         <div class="col-sm-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="data/imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Registration</h4>
                           <span>Account Status - <b class="text-success">Active</b></span>
                           <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your status"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="tb_full_name" runat="server" placeholder="Full Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_full_name" ErrorMessage="Required Field " ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="tb_date_birth" runat="server" placeholder="date" TextMode="Date"></asp:TextBox>
                            
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Your Domain</label>
                        <div class="form-group">
                            <asp:DropDownList CssClass="form-control" ID="drp_domain" runat="server" placeholder="Informatique">
                                <asp:ListItem Text="Informatique" Value="Informatique" />
                                <asp:ListItem Text="sience" Value="sience" />
                                <asp:ListItem Text="Medcin" Value="Medcin" />
                                <asp:ListItem Text="Teaching" Value="Teaching" />
                                <asp:ListItem Text="letter" Value="letter" />

                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="tb_email" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_email" ErrorMessage="email required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                            <asp:DropDownList CssClass="form-control" ID="drp_country" runat="server">
                                <asp:ListItem Text="Morocco" Value="Morocco" />
                                <asp:ListItem Text="Algerie" Value="Algerie" />
                                <asp:ListItem Text="Tunisie" Value="Tunisie" />
                                <asp:ListItem Text="Mauritanie" Value="Mauritanie" />
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                            <asp:DropDownList class="form-control" ID="drp_city" runat="server">
                              <asp:ListItem Text='Casablanca' Value='Casablanca' />
                                <asp:ListItem Text='Fes' Value='Fes' />
                                <asp:ListItem Text='Sale' Value='Sale' />
                                <asp:ListItem Text='Marrakesh' Value='Marrakesh' />
                                <asp:ListItem Text='Tangier' Value='Tangier' />
                                <asp:ListItem Text='Rabat' Value='Rabat' />
                                <asp:ListItem Text='Meknes' Value='Meknes' />
                                <asp:ListItem Text='Oujda' Value='Oujda' />
                                <asp:ListItem Text='Kenitra' Value='Kenitra' />
                                <asp:ListItem Text='Agadir' Value='Agadir' />
                                <asp:ListItem Text='Tetouan' Value='Tetouan' />
                                <asp:ListItem Text='Safi' Value='Safi' />
                                <asp:ListItem Text='Temara' Value='Temara' />
                                <asp:ListItem Text='Inzegan' Value='Inzegan' />
                                <asp:ListItem Text='Mohammedia' Value='Mohammedia' />
                                <asp:ListItem Text='Laayoune' Value='Laayoune' />
                                <asp:ListItem Text='Khouribga' Value='Khouribga' />
                                <asp:ListItem Text='Beni Mellal' Value='Beni Mellal' />
                                <asp:ListItem Text='Jdida' Value='Jdida' />
                                <asp:ListItem Text='Taza' Value='Taza' />
                                <asp:ListItem Text='Ait Melloul' Value='Ait Melloul' />
                                <asp:ListItem Text='Nador' Value='Nador' />
                                <asp:ListItem Text='Settat' Value='Settat' />
                                 <asp:ListItem Text='Larache' Value='Larache' />
                                <asp:ListItem Text='Khemisset' Value='Khemisset' />
                                <asp:ListItem Text='Guelmim' Value='Guelmim' />
                                <asp:ListItem Text='Berrechid' Value='Berrechid' />
                                <asp:ListItem Text='Wad Zam' Value='Wad Zam' />
                                <asp:ListItem Text='Fkih Ben Saleh' Value='Fkih Ben Saleh' />
                                <asp:ListItem Text='Taourirt' Value='Taourirt' />
                                <asp:ListItem Text='Berkane' Value='Berkane' />
                                <asp:ListItem Text='Sidi Slimane' Value='Sidi Slimane' />
                                <asp:ListItem Text='Errachidia' Value='Errachidia' />
                                <asp:ListItem Text='Sidi Kacem' Value='Sidi Kacem' />
                                <asp:ListItem Text='Khenifra' Value='Khenifra' />
                                <asp:ListItem Text='Tifelt' Value='Tifelt' />
                                <asp:ListItem Text='Essaouira' Value='Essaouira' />
                                <asp:ListItem Text='Taroudant' Value='Taroudant' />
                                <asp:ListItem Text='El Kelaa des Sraghna' Value='El Kelaa des Sraghna' />
                                <asp:ListItem Text='Oulad Teima' Value='Oulad Teima' />
                                <asp:ListItem Text='Youssoufia' Value='Youssoufia' />
                                <asp:ListItem Text='Sefrou' Value='Sefrou' />
                                <asp:ListItem Text='Ben Guerir' Value='Ben Guerir' />
                                <asp:ListItem Text='Tan-Tan' Value='Tan-Tan' />
                                <asp:ListItem Text='Ouazzane' Value='Ouazzane' />
                                <asp:ListItem Text='Guercif' Value='Guercif' />
                                <asp:ListItem Text='Dakhla' Value='Dakhla' />
                                <asp:ListItem Text='Hoceima' Value='Hoceima' />
                                <asp:ListItem Text='Fnideq' Value='Fnideq' />
                                <asp:ListItem Text='Ouarzazate' Value='Ouarzazate' />
                                <asp:ListItem Text='Tiznit' Value='Tiznit' />
                                <asp:ListItem Text='Suq Sebt Oulad Nama' Value='Suq Sebt Oulad Nama' />
                                <asp:ListItem Text='Azrou' Value='Azrou' />
                                <asp:ListItem Text='Lahraouyine' Value='Lahraouyine' />
                                <asp:ListItem Text='Ben Slimane' Value='Ben Slimane' />
                                <asp:ListItem Text='Midelt' Value='Midelt' />
                                <asp:ListItem Text='Jerada' Value='Jerada' />
                                <asp:ListItem Text='Skhirat' Value='Skhirat' />
                                <asp:ListItem Text='Souk Larbaa' Value='Souk Larbaa' />
                                <asp:ListItem Text='Ain Harrouda' Value='Ain Harrouda' />
                                <asp:ListItem Text='Boujad' Value='Boujad' />
                                <asp:ListItem Text='Kasbat Tadla' Value='Kasbat Tadla' />
                                <asp:ListItem Text='Sidi Bennour' Value='Sidi Bennour' />
                                <asp:ListItem Text='Martil' Value='Martil' />
                                <asp:ListItem Text='Lqliaa' Value='Lqliaa' />
                                <asp:ListItem Text='Cape Bojador' Value='Cape Bojador' />
                                <asp:ListItem Text='Azemmour' Value='Azemmour' />
                                
                                <asp:ListItem Text='Tinghir' Value='Tinghir' />
                                <asp:ListItem Text='Al Aaroui' Value='Al Aaroui' />
                                <asp:ListItem Text='Chefchaouen' Value='Chefchaouen' />
                                
                           </asp:DropDownList>

                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="tb_pincode" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="tb_full_adress" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="tb_username" runat="server" placeholder="User Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_username" ErrorMessage="field required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="tb_password" runat="server" placeholder="*********" TextMode="Password" ReadOnly="false"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field Required" ForeColor="Red" ControlToValidate="tb_password"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tb_confirme_password" ControlToValidate="tb_password" ErrorMessage="the password not matched" ForeColor="Red"></asp:CompareValidator>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Confirme Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="tb_confirme_password" runat="server" placeholder="********" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="">
                        <center>
                           <div class="form-group">
                              <%--<asp:Button class="btn btn-primary btn-block px-5 mt-3 w-100" ID="Button1" runat="server" Text="Sign up" OnClick="btnRegister_Click" />--%>
                                
                                <asp:Button CssClass="btn btn-primary btn-block px-5 mt-3 w-100" ID="Button2" runat="server" OnClick="btn_register" Text="Sign up" />

                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
             <br />
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      
      </div>
   </div>
</asp:Content>
