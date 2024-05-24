    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title></title>
</head>
<body>
        <form id="form1" runat="server">
        <div id="social">
        <img src="img/logo.jpg" alt="" class="logo">
    <div class="slogan"><a href="index.html">Threes Power Studios</a></div>
        
    </div>
            
            <div class="container1">Container 1</div>
    <div id="container"><div><header2><img src="https://github.com/ensar0zturk/3PS_Project/blob/main/img/WhatsApp%20G%C3%B6rsel%202024-05-09%20saat%2000.09.32_e1c421cd.jpg?raw=true" alt="" id="banner"></header2></div>
        <!-- BİLGİLENDİRME KISMI-->  
       <main style="padding:5px;"><div class="liste">
           <h1 style="text-align:center;">VÜCUT YAĞ ORANI NASIL HESAPLANIR?</h1>
 <h3>Ölçüm yaparken dikkat etmeniz gerekenler:</h3>
 <ul>
     <div class="icerik" style="color:azure;">Boyun: adem elması etrafından</div>
     <div class="icerik">Bel: en ince yerinden</div>
     <div class="icerik">Kalça (Yalnızca kadınlar için): en geniş yerinden</div>
     <div class="icerik">kendinizi kasmadan, rahat şekilde ölçmelisiniz.</div>
 </ul>
 <h3 style="text-align:center;">HESAPLAMAYA BAŞLA !</h3>
       </div>
        </main>
                        <main>        <div class="icerik">       
            <table  >
           <!-- CİNSİYET SEÇİMİ KISMI -->  
           <tr><td><asp:DropDownList ID="drp_cinsiyet" runat="server" Height="60px" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="drp_cinsiyet_SelectedIndexChanged">
               <asp:ListItem Text="-----CİNSİYETİNİZİ----------SEÇİNİZ-----" Value="0"></asp:ListItem>
               <asp:ListItem Text="Erkek" Value="1"></asp:ListItem>
               <asp:ListItem Text="Kadın" Value="2"></asp:ListItem>
                   </asp:DropDownList></td></tr>
          <!-- ERKEK KISMI-->  
           <ens_erkek id="erkek_paneli" runat="server" visible="false">
           <tr><td><asp:TextBox ID="txt_erkek_boy" runat="server" placeholder="Boyunuz (örn 176cm)" Width="250px" Height="60px"></asp:TextBox></td>
               <td><asp:TextBox ID="txt_erkek_boyun" runat="server" placeholder="Boyun Çevresi (örn. 37cm)" Width="250px" Height="60px"></asp:TextBox></td>
               <td><asp:TextBox ID="txt_erkek_bel" runat="server" placeholder="Bel Çevresi (örn. 88cm)" Width="250px" Height="60px"></asp:TextBox></td>
               <td><asp:Button ID="btn_erkek" runat="server" Text="HESAPLA" Width="250px" Height="60px" OnClick="btn_erkek_Click"/></td>
               <td><asp:TextBox ID="lbl_erkek_sonuc" runat="server" placeholder="Yağ Oranınız" Width="250px" Height="60px" Enabled="False"></asp:TextBox></td>

            </tr>
           </ens_erkek>
          <!-- KADIN KISMI-->  
           <ens_kadin id="kadin_paneli" runat="server" visible="false">
           <tr><td><asp:TextBox ID="txt_kadin_boy" runat="server" placeholder="Boyunuz (örn 176cm)" Width="200px" Height="60px"></asp:TextBox></td>
               <td><asp:TextBox ID="txt_kadin_boyun" runat="server" placeholder="Boyun Çevresi (örn. 37cm)" Width="200px" Height="60px"></asp:TextBox></td>
               <td><asp:TextBox ID="txt_kadin_bel" runat="server" placeholder="Bel Çevresi (örn. 88cm)" Width="200px" Height="60px"></asp:TextBox></td>
               <td><asp:TextBox ID="txt_kadin_kalca" runat="server" placeholder="Kalça Çevresi (örn. 98cm)" Width="200px" Height="60px"></asp:TextBox></td>
               <td><asp:Button ID="btn_kadin" runat="server" Text="HESAPLA" Width="200px" Height="60px" OnClick="btn_kadin_Click"/></td>
               <td><asp:TextBox ID="lbl_kadin_sonuc" runat="server" placeholder="Yağ Oranınız" Width="200px" Height="60px" Enabled="False"></asp:TextBox></td>
          </tr>
           </ens_kadin>
            </table>

        </div></main>
        <main  style="padding:5px;"> 
            <img src="img/VÜCUT YAĞ ORANI TABLOSU .png" alt="VÜCUT YAĞ ORANI TABLOSU" id="vucut" class="resimdi">
                
           </main>
                


        <footer><center>Tüm hakları saklıdır. &copy; | 2024</center></footer>
    </div><div class="container3">Container 1</div>
    </form>
</body>
</html>
